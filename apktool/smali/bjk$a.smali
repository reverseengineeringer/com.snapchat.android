.class public final enum Lbjk$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbjk$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbjk$a;

.field public static final enum SAVED:Lbjk$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SAVED"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbjk$a;

.field public static final enum UNSAVED:Lbjk$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNSAVED"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lbjk$a;

    const-string v1, "SAVED"

    const-string v2, "SAVED"

    invoke-direct {v0, v1, v3, v2}, Lbjk$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbjk$a;->SAVED:Lbjk$a;

    .line 24
    new-instance v0, Lbjk$a;

    const-string v1, "UNSAVED"

    const-string v2, "UNSAVED"

    invoke-direct {v0, v1, v4, v2}, Lbjk$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbjk$a;->UNSAVED:Lbjk$a;

    .line 27
    new-instance v0, Lbjk$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v5, v2}, Lbjk$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbjk$a;->UNRECOGNIZED_VALUE:Lbjk$a;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lbjk$a;

    sget-object v1, Lbjk$a;->SAVED:Lbjk$a;

    aput-object v1, v0, v3

    sget-object v1, Lbjk$a;->UNSAVED:Lbjk$a;

    aput-object v1, v0, v4

    sget-object v1, Lbjk$a;->UNRECOGNIZED_VALUE:Lbjk$a;

    aput-object v1, v0, v5

    sput-object v0, Lbjk$a;->$VALUES:[Lbjk$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lbjk$a;->value:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbjk$a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbjk$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbjk$a;

    return-object v0
.end method

.method public static values()[Lbjk$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lbjk$a;->$VALUES:[Lbjk$a;

    invoke-virtual {v0}, [Lbjk$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbjk$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbjk$a;->value:Ljava/lang/String;

    return-object v0
.end method

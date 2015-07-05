.class public final enum Lbks$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbks$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbks$a;

.field public static final enum DEFAULT_TYPE:Lbks$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEFAULT_TYPE"
    .end annotation
.end field

.field public static final enum TWO_FA_TYPE:Lbks$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TWO_FA_TYPE"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbks$a;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lbks$a;

    const-string v1, "DEFAULT_TYPE"

    const-string v2, "DEFAULT_TYPE"

    invoke-direct {v0, v1, v3, v2}, Lbks$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbks$a;->DEFAULT_TYPE:Lbks$a;

    .line 25
    new-instance v0, Lbks$a;

    const-string v1, "TWO_FA_TYPE"

    const-string v2, "TWO_FA_TYPE"

    invoke-direct {v0, v1, v4, v2}, Lbks$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbks$a;->TWO_FA_TYPE:Lbks$a;

    .line 28
    new-instance v0, Lbks$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v5, v2}, Lbks$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbks$a;->UNRECOGNIZED_VALUE:Lbks$a;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lbks$a;

    sget-object v1, Lbks$a;->DEFAULT_TYPE:Lbks$a;

    aput-object v1, v0, v3

    sget-object v1, Lbks$a;->TWO_FA_TYPE:Lbks$a;

    aput-object v1, v0, v4

    sget-object v1, Lbks$a;->UNRECOGNIZED_VALUE:Lbks$a;

    aput-object v1, v0, v5

    sput-object v0, Lbks$a;->$VALUES:[Lbks$a;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lbks$a;->value:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbks$a;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbks$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbks$a;

    return-object v0
.end method

.method public static values()[Lbks$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lbks$a;->$VALUES:[Lbks$a;

    invoke-virtual {v0}, [Lbks$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbks$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbks$a;->value:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lbig$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbig$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbig$a;

.field public static final enum LINK:Lbig$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbig$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lbig$a;

    const-string v1, "LINK"

    const-string v2, "link"

    invoke-direct {v0, v1, v3, v2}, Lbig$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbig$a;->LINK:Lbig$a;

    .line 23
    new-instance v0, Lbig$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v4, v2}, Lbig$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbig$a;->UNRECOGNIZED_VALUE:Lbig$a;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lbig$a;

    sget-object v1, Lbig$a;->LINK:Lbig$a;

    aput-object v1, v0, v3

    sget-object v1, Lbig$a;->UNRECOGNIZED_VALUE:Lbig$a;

    aput-object v1, v0, v4

    sput-object v0, Lbig$a;->$VALUES:[Lbig$a;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lbig$a;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbig$a;
    .locals 1

    .prologue
    .line 43
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbig$a;->valueOf(Ljava/lang/String;)Lbig$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbig$a;->UNRECOGNIZED_VALUE:Lbig$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbig$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbig$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbig$a;

    return-object v0
.end method

.method public static values()[Lbig$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbig$a;->$VALUES:[Lbig$a;

    invoke-virtual {v0}, [Lbig$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbig$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbig$a;->value:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lbkr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbkr$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbkr$a;

.field public static final enum NEEDS_CAPTCHA:Lbkr$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needs_captcha"
    .end annotation
.end field

.field public static final enum NEEDS_PHONE_VERIFIED:Lbkr$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needs_phone_verified"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbkr$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lbkr$a;

    const-string v1, "NEEDS_PHONE_VERIFIED"

    const-string v2, "needs_phone_verified"

    invoke-direct {v0, v1, v3, v2}, Lbkr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkr$a;->NEEDS_PHONE_VERIFIED:Lbkr$a;

    .line 23
    new-instance v0, Lbkr$a;

    const-string v1, "NEEDS_CAPTCHA"

    const-string v2, "needs_captcha"

    invoke-direct {v0, v1, v4, v2}, Lbkr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkr$a;->NEEDS_CAPTCHA:Lbkr$a;

    .line 26
    new-instance v0, Lbkr$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const-string v2, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v5, v2}, Lbkr$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbkr$a;->UNRECOGNIZED_VALUE:Lbkr$a;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lbkr$a;

    sget-object v1, Lbkr$a;->NEEDS_PHONE_VERIFIED:Lbkr$a;

    aput-object v1, v0, v3

    sget-object v1, Lbkr$a;->NEEDS_CAPTCHA:Lbkr$a;

    aput-object v1, v0, v4

    sget-object v1, Lbkr$a;->UNRECOGNIZED_VALUE:Lbkr$a;

    aput-object v1, v0, v5

    sput-object v0, Lbkr$a;->$VALUES:[Lbkr$a;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lbkr$a;->value:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbkr$a;
    .locals 1

    .prologue
    .line 46
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkr$a;->valueOf(Ljava/lang/String;)Lbkr$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbkr$a;->UNRECOGNIZED_VALUE:Lbkr$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbkr$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbkr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbkr$a;

    return-object v0
.end method

.method public static values()[Lbkr$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbkr$a;->$VALUES:[Lbkr$a;

    invoke-virtual {v0}, [Lbkr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbkr$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbkr$a;->value:Ljava/lang/String;

    return-object v0
.end method

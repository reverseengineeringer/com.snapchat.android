.class public final enum Lik;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lik;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lik;

.field public static final enum HOME:Lik;

.field public static final enum LONG_FORM:Lik;

.field public static final enum SPLASH:Lik;

.field public static final enum TOP_SNAP:Lik;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lik;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lik;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lik;->HOME:Lik;

    .line 6
    new-instance v0, Lik;

    const-string v1, "TOP_SNAP"

    invoke-direct {v0, v1, v3}, Lik;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lik;->TOP_SNAP:Lik;

    .line 7
    new-instance v0, Lik;

    const-string v1, "LONG_FORM"

    invoke-direct {v0, v1, v4}, Lik;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lik;->LONG_FORM:Lik;

    .line 8
    new-instance v0, Lik;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v5}, Lik;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lik;->SPLASH:Lik;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lik;

    sget-object v1, Lik;->HOME:Lik;

    aput-object v1, v0, v2

    sget-object v1, Lik;->TOP_SNAP:Lik;

    aput-object v1, v0, v3

    sget-object v1, Lik;->LONG_FORM:Lik;

    aput-object v1, v0, v4

    sget-object v1, Lik;->SPLASH:Lik;

    aput-object v1, v0, v5

    sput-object v0, Lik;->$VALUES:[Lik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lik;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lik;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lik;

    return-object v0
.end method

.method public static values()[Lik;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lik;->$VALUES:[Lik;

    invoke-virtual {v0}, [Lik;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lik;

    return-object v0
.end method

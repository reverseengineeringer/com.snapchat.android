.class public final enum Lcom/addlive/platform/DeviceSupportLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/platform/DeviceSupportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/platform/DeviceSupportLevel;

.field public static final enum AUDIO_ONLY:Lcom/addlive/platform/DeviceSupportLevel;

.field public static final enum FULLY_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

.field public static final enum NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

.field public static final enum NOT_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/addlive/platform/DeviceSupportLevel;

    const-string v1, "FULLY_SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/addlive/platform/DeviceSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/DeviceSupportLevel;->FULLY_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    .line 38
    new-instance v0, Lcom/addlive/platform/DeviceSupportLevel;

    const-string v1, "AUDIO_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/addlive/platform/DeviceSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/DeviceSupportLevel;->AUDIO_ONLY:Lcom/addlive/platform/DeviceSupportLevel;

    .line 47
    new-instance v0, Lcom/addlive/platform/DeviceSupportLevel;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/addlive/platform/DeviceSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/DeviceSupportLevel;->NOT_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    .line 55
    new-instance v0, Lcom/addlive/platform/DeviceSupportLevel;

    const-string v1, "NOT_FUNCTIONAL"

    invoke-direct {v0, v1, v5}, Lcom/addlive/platform/DeviceSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/DeviceSupportLevel;->NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/addlive/platform/DeviceSupportLevel;

    sget-object v1, Lcom/addlive/platform/DeviceSupportLevel;->FULLY_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addlive/platform/DeviceSupportLevel;->AUDIO_ONLY:Lcom/addlive/platform/DeviceSupportLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/platform/DeviceSupportLevel;->NOT_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/platform/DeviceSupportLevel;->NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/addlive/platform/DeviceSupportLevel;->$VALUES:[Lcom/addlive/platform/DeviceSupportLevel;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/platform/DeviceSupportLevel;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/addlive/platform/DeviceSupportLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/platform/DeviceSupportLevel;

    return-object v0
.end method

.method public static values()[Lcom/addlive/platform/DeviceSupportLevel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->$VALUES:[Lcom/addlive/platform/DeviceSupportLevel;

    invoke-virtual {v0}, [Lcom/addlive/platform/DeviceSupportLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/platform/DeviceSupportLevel;

    return-object v0
.end method

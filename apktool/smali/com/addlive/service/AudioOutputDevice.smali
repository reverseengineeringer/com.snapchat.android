.class public final enum Lcom/addlive/service/AudioOutputDevice;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/AudioOutputDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/AudioOutputDevice;

.field public static final enum LOUD_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

.field public static final enum PHONE_SPEAKER:Lcom/addlive/service/AudioOutputDevice;


# instance fields
.field private friendlyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/addlive/service/AudioOutputDevice;

    const-string v1, "LOUD_SPEAKER"

    const-string v2, "Loud Speaker"

    invoke-direct {v0, v1, v3, v2}, Lcom/addlive/service/AudioOutputDevice;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/AudioOutputDevice;->LOUD_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    .line 33
    new-instance v0, Lcom/addlive/service/AudioOutputDevice;

    const-string v1, "PHONE_SPEAKER"

    const-string v2, "Phone Speaker"

    invoke-direct {v0, v1, v4, v2}, Lcom/addlive/service/AudioOutputDevice;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/AudioOutputDevice;->PHONE_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/addlive/service/AudioOutputDevice;

    sget-object v1, Lcom/addlive/service/AudioOutputDevice;->LOUD_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/AudioOutputDevice;->PHONE_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    aput-object v1, v0, v4

    sput-object v0, Lcom/addlive/service/AudioOutputDevice;->$VALUES:[Lcom/addlive/service/AudioOutputDevice;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/addlive/service/AudioOutputDevice;->friendlyName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static asDeviceArray()[Lcom/addlive/service/Device;
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->values()[Lcom/addlive/service/AudioOutputDevice;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lcom/addlive/service/Device;

    .line 69
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->values()[Lcom/addlive/service/AudioOutputDevice;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 70
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->values()[Lcom/addlive/service/AudioOutputDevice;

    move-result-object v2

    aget-object v2, v2, v0

    .line 71
    new-instance v3, Lcom/addlive/service/Device;

    invoke-virtual {v2}, Lcom/addlive/service/AudioOutputDevice;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/addlive/service/AudioOutputDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v1
.end method

.method public static fromStringId(Ljava/lang/String;)Lcom/addlive/service/AudioOutputDevice;
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->values()[Lcom/addlive/service/AudioOutputDevice;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 59
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->values()[Lcom/addlive/service/AudioOutputDevice;

    move-result-object v1

    aget-object v1, v1, v0

    .line 60
    invoke-virtual {v1}, Lcom/addlive/service/AudioOutputDevice;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    return-object v1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no device with id given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/AudioOutputDevice;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/addlive/service/AudioOutputDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/AudioOutputDevice;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/AudioOutputDevice;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/addlive/service/AudioOutputDevice;->$VALUES:[Lcom/addlive/service/AudioOutputDevice;

    invoke-virtual {v0}, [Lcom/addlive/service/AudioOutputDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/AudioOutputDevice;

    return-object v0
.end method


# virtual methods
.method public final getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/addlive/service/AudioOutputDevice;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

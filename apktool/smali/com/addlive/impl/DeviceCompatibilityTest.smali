.class public Lcom/addlive/impl/DeviceCompatibilityTest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_ONLY_DEVICES:[Ljava/lang/String;

.field private static final SUPPORTED_DEVICES:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string v0, "DeviceCompatibilityTest"

    sput-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nexus 4"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Nexus 5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Nexus 7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GT-N8000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SM-P601"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GT-I93.."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GT-I95.."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SGH-M919"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GT-I91.."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GT-N7000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SC-02C"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SHW-M250."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SPH-D710BST"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GT-N71.."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "htc_jewel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EVO"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HTC 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "HTCONE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HTC One"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HTC One 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HTL22"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M7"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DROID RAZR HD"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "XT1058"

    aput-object v2, v0, v1

    sput-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->SUPPORTED_DEVICES:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->AUDIO_ONLY_DEVICES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assessCompatibility()Lcom/addlive/platform/DeviceSupportLevel;
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/addlive/impl/DeviceCompatibilityTest;->isGalaxyS3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->SUPPORTED_DEVICES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/impl/DeviceCompatibilityTest;->isWhiteListed([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->FULLY_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/addlive/impl/DeviceCompatibilityTest;->supportsNeon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->NOT_FUNCTIONAL:Lcom/addlive/platform/DeviceSupportLevel;

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->AUDIO_ONLY_DEVICES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/impl/DeviceCompatibilityTest;->isWhiteListed([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->AUDIO_ONLY:Lcom/addlive/platform/DeviceSupportLevel;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/addlive/platform/DeviceSupportLevel;->NOT_SUPPORTED:Lcom/addlive/platform/DeviceSupportLevel;

    goto :goto_0
.end method

.method private static checkForNeonSupport(Ljava/io/BufferedReader;)Z
    .locals 2

    .prologue
    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    const-string v1, "Features"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "neon"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->TAG:Ljava/lang/String;

    const-string v1, "Device supports neon extension"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_1
    sget-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->TAG:Ljava/lang/String;

    const-string v1, "Device does not support neon extension"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGalaxyS3()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "m0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "d2"

    const/4 v5, 0x2

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isWhiteListed([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 78
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 79
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static supportsNeon()Z
    .locals 3

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-static {v1}, Lcom/addlive/impl/DeviceCompatibilityTest;->checkForNeonSupport(Ljava/io/BufferedReader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 94
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 100
    :goto_0
    return v0

    .line 94
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :catch_0
    move-exception v0

    sget-object v0, Lcom/addlive/impl/DeviceCompatibilityTest;->TAG:Ljava/lang/String;

    const-string v1, "Could not read cpuinfo file, assuming neon isn\'t supported"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

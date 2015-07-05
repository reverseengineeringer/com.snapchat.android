.class Lorg/webrtc/voiceengine/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44


# instance fields
.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 39
    const v1, 0xac44

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 40
    const/16 v1, 0x100

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 43
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 48
    :cond_0
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    .line 56
    return-void
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return v0
.end method

.method private getNativeOutputSampleRate()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return v0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return v0
.end method

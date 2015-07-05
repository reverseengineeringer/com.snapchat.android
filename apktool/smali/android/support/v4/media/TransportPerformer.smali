.class public abstract Landroid/support/v4/media/TransportPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUDIOFOCUS_GAIN:I = 0x1

.field static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field static final AUDIOFOCUS_LOSS:I = -0x1

.field static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onAudioFocusChange(I)V
    .locals 9

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    packed-switch p0, :pswitch_data_0

    .line 196
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 198
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x7f

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 199
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x7f

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 201
    :cond_0
    return-void

    .line 193
    :pswitch_0
    const/16 v0, 0x7f

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static onGetBufferPercentage()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x64

    return v0
.end method

.method private static onGetTransportControlFlags()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x3c

    return v0
.end method

.method private static onMediaButtonDown$4765ad2(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 127
    sparse-switch p0, :sswitch_data_0

    .line 139
    :sswitch_0
    return v0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x56 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method private static onMediaButtonUp$4765ad2()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract onGetCurrentPosition()J
.end method

.method public abstract onGetDuration()J
.end method

.method public abstract onIsPlaying()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onSeekTo$1349ef()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

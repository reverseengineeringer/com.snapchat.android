.class Lorg/webrtc/voiceengine/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _context:Landroid/content/Context;

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _tempBufPlay:[B


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    .line 37
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doRecInit:Z

    .line 38
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isRecording:Z

    .line 39
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    .line 41
    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    .line 42
    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    .line 46
    const/16 v0, 0x3c0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    .line 53
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private GetPlayoutVolume()I
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    .line 292
    :cond_0
    const/4 v0, -0x1

    .line 294
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 295
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/addlive/impl/RuntimeConfig;->AUDIO_STREAM_TYPE:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 299
    :cond_1
    return v0
.end method

.method private InitPlayback(I)I
    .locals 10

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 58
    invoke-static {p1, v1, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 66
    const/16 v0, 0x1770

    if-ge v5, v0, :cond_0

    .line 67
    mul-int/lit8 v5, v5, 0x2

    .line 69
    :cond_0
    iput v8, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    .line 73
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    .line 79
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    sget v1, Lcom/addlive/impl/RuntimeConfig;->AUDIO_STREAM_TYPE:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v9, :cond_2

    move v0, v7

    .line 109
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    .line 104
    :cond_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_4

    move v0, v8

    .line 107
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/addlive/impl/RuntimeConfig;->AUDIO_STREAM_TYPE:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private PlayAudio(I)I
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x2

    .line 211
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 173
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_tempBufPlay:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 184
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 189
    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    .line 192
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    .line 193
    iget v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    if-ge v1, v2, :cond_2

    .line 194
    const/4 v2, 0x0

    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    .line 196
    :cond_2
    iget v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I

    sub-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    .line 197
    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    if-eq v0, p1, :cond_3

    .line 202
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_bufferedPlaySamples:I

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 223
    const/4 v0, -0x1

    .line 260
    :goto_0
    return v0

    .line 227
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    const/4 v2, 0x3

    if-eq v2, v0, :cond_2

    const/4 v2, 0x4

    if-ne v2, v0, :cond_4

    .line 231
    :cond_2
    if-eqz p1, :cond_3

    .line 233
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :goto_1
    move v0, v1

    .line 260
    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 240
    :cond_4
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "Samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    const/4 v2, 0x5

    if-eq v2, v0, :cond_6

    const/4 v2, 0x6

    if-eq v2, v0, :cond_6

    const/4 v2, 0x7

    if-ne v2, v0, :cond_7

    .line 245
    :cond_6
    if-eqz p1, :cond_8

    .line 247
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 256
    :cond_7
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 251
    :cond_8
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 252
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method private SetPlayoutVolume(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    .line 272
    :cond_0
    const/4 v0, -0x1

    .line 274
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 275
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioManager:Landroid/media/AudioManager;

    sget v2, Lcom/addlive/impl/RuntimeConfig;->AUDIO_STREAM_TYPE:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v0, v1

    .line 280
    :cond_1
    return v0
.end method

.method private StartPlayback()I
    .locals 1

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    .line 124
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 120
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private StopPlayback()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 129
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    .line 153
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_isPlaying:Z

    .line 157
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    .line 153
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_doPlayInit:Z

    .line 153
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

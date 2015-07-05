.class Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _audioRecord:Landroid/media/AudioRecord;

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doRecInit:Z

.field private _isRecording:Z

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufRec:[B


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3c0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 35
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 37
    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 41
    const/16 v0, 0x3c0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    .line 48
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private InitRecording(II)I
    .locals 7

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x2

    const/4 v6, -0x1

    .line 52
    invoke-static {p2, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 60
    mul-int/lit8 v5, v0, 0x2

    .line 63
    div-int/lit16 v0, p2, 0xc8

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 66
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 72
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move v0, v6

    .line 88
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 88
    :cond_1
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto :goto_0
.end method

.method private RecordAudio(I)I
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x2

    .line 176
    :goto_0
    return v0

    .line 148
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    const/16 v0, -0x13

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 160
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 161
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eq v0, p1, :cond_2

    .line 164
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    :goto_2
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private StartRecording()I
    .locals 1

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 99
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private StopRecording()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 111
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 115
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 130
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 134
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 130
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 130
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

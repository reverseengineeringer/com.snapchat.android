.class public final Laoz;
.super Landroid/media/MediaPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoz$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:Laoz$a;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Laoz;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Laoz$a;

    invoke-direct {v0}, Laoz$a;-><init>()V

    sget-object v1, Lauh;->MEDIA_PLAYER_SERIAL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, v1}, Laoz;-><init>(Laoz$a;Ljava/util/concurrent/ExecutorService;)V

    .line 37
    invoke-static {}, Lbgp;->a()V

    .line 38
    return-void
.end method

.method private constructor <init>(Laoz$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 241
    new-instance v0, Laoz$2;

    invoke-direct {v0, p0}, Laoz$2;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->e:Ljava/lang/Runnable;

    .line 248
    new-instance v0, Laoz$3;

    invoke-direct {v0, p0}, Laoz$3;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->f:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Laoz$4;

    invoke-direct {v0, p0}, Laoz$4;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->g:Ljava/lang/Runnable;

    .line 262
    new-instance v0, Laoz$5;

    invoke-direct {v0, p0}, Laoz$5;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->h:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Laoz$6;

    invoke-direct {v0, p0}, Laoz$6;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->i:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Laoz$7;

    invoke-direct {v0, p0}, Laoz$7;-><init>(Laoz;)V

    iput-object v0, p0, Laoz;->j:Ljava/lang/Runnable;

    .line 42
    iput-object p2, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    .line 43
    iput-object p1, p0, Laoz;->b:Laoz$a;

    .line 44
    sget v0, Laoz;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoz;->a:I

    iput v0, p0, Laoz;->d:I

    .line 45
    return-void
.end method

.method static synthetic a(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doPrepareAsync() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doPrepareAsync() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Laoz;I)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doSeekTo() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doSeekTo() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doStart() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doStart() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doStop() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doStop() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doPause() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doPause() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doRelease() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doRelease() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f(Laoz;)V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doReset() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] doReset() finished"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final getVideoHeight()I
    .locals 2

    .prologue
    .line 234
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoWidth()I
    .locals 2

    .prologue
    .line 224
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v1, "AsyncMediaPlayer"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 5

    .prologue
    .line 106
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] pause() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lbgp;->a()V

    .line 108
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final prepareAsync()V
    .locals 5

    .prologue
    .line 113
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] prepareAsync() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lbgp;->a()V

    .line 115
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public final release()V
    .locals 5

    .prologue
    .line 132
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] release() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lbgp;->a()V

    .line 134
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->i:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final reset()V
    .locals 5

    .prologue
    .line 139
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] reset() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lbgp;->a()V

    .line 141
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public final seekTo(I)V
    .locals 5

    .prologue
    .line 120
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] seekTo() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lbgp;->a()V

    .line 122
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Laoz$1;

    invoke-direct {v1, p0, p1}, Laoz$1;-><init>(Laoz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->c:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 88
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 89
    return-void
.end method

.method public final setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 94
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->g:Landroid/media/MediaPlayer$OnErrorListener;

    .line 62
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    return-void
.end method

.method public final setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->h:Landroid/media/MediaPlayer$OnInfoListener;

    .line 56
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 57
    return-void
.end method

.method public final setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 50
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 51
    return-void
.end method

.method public final setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->d:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 81
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 83
    return-void
.end method

.method public final setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->f:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 69
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 70
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Laoz;->b:Laoz$a;

    iput-object p1, v0, Laoz$a;->e:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 75
    iget-object v0, p0, Laoz;->b:Laoz$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 76
    return-void
.end method

.method public final start()V
    .locals 5

    .prologue
    .line 99
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] start() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lbgp;->a()V

    .line 101
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public final stop()V
    .locals 5

    .prologue
    .line 146
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "[%d] stop() called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laoz;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lbgp;->a()V

    .line 148
    iget-object v0, p0, Laoz;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Laoz;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

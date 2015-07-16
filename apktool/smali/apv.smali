.class public final Lapv;
.super Landroid/media/MediaPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapv$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:Lapv$a;

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

    sput v0, Lapv;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lapv$a;

    invoke-direct {v0}, Lapv$a;-><init>()V

    sget-object v1, Lavf;->MEDIA_PLAYER_SERIAL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, v1}, Lapv;-><init>(Lapv$a;Ljava/util/concurrent/ExecutorService;)V

    .line 37
    invoke-static {}, Lbhp;->a()V

    .line 38
    return-void
.end method

.method private constructor <init>(Lapv$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 241
    new-instance v0, Lapv$2;

    invoke-direct {v0, p0}, Lapv$2;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->e:Ljava/lang/Runnable;

    .line 248
    new-instance v0, Lapv$3;

    invoke-direct {v0, p0}, Lapv$3;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->f:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lapv$4;

    invoke-direct {v0, p0}, Lapv$4;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->g:Ljava/lang/Runnable;

    .line 262
    new-instance v0, Lapv$5;

    invoke-direct {v0, p0}, Lapv$5;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->h:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lapv$6;

    invoke-direct {v0, p0}, Lapv$6;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->i:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lapv$7;

    invoke-direct {v0, p0}, Lapv$7;-><init>(Lapv;)V

    iput-object v0, p0, Lapv;->j:Ljava/lang/Runnable;

    .line 42
    iput-object p2, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    .line 43
    iput-object p1, p0, Lapv;->b:Lapv$a;

    .line 44
    sget v0, Lapv;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lapv;->a:I

    iput v0, p0, Lapv;->d:I

    .line 45
    return-void
.end method

.method static synthetic a(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lapv;I)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lapv;)V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final getVideoHeight()I
    .locals 1

    .prologue
    .line 234
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoWidth()I
    .locals 1

    .prologue
    .line 224
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 107
    invoke-static {}, Lbhp;->a()V

    .line 108
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public final prepareAsync()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    invoke-static {}, Lbhp;->a()V

    .line 115
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public final release()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    invoke-static {}, Lbhp;->a()V

    .line 134
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->i:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    invoke-static {}, Lbhp;->a()V

    .line 141
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public final seekTo(I)V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    invoke-static {}, Lbhp;->a()V

    .line 122
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lapv$1;

    invoke-direct {v1, p0, p1}, Lapv$1;-><init>(Lapv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->c:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 88
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 89
    return-void
.end method

.method public final setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 94
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->g:Landroid/media/MediaPlayer$OnErrorListener;

    .line 62
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    return-void
.end method

.method public final setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->h:Landroid/media/MediaPlayer$OnInfoListener;

    .line 56
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 57
    return-void
.end method

.method public final setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 50
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 51
    return-void
.end method

.method public final setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->d:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 81
    iget-object v0, p0, Lapv;->b:Lapv$a;

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
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->f:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 69
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 70
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lapv;->b:Lapv$a;

    iput-object p1, v0, Lapv$a;->e:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 75
    iget-object v0, p0, Lapv;->b:Lapv$a;

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 76
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    invoke-static {}, Lbhp;->a()V

    .line 101
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public final stop()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lapv;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 147
    invoke-static {}, Lbhp;->a()V

    .line 148
    iget-object v0, p0, Lapv;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lapv;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

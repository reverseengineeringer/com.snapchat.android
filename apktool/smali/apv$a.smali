.class final Lapv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/media/MediaPlayer$OnPreparedListener;

.field b:Landroid/media/MediaPlayer$OnCompletionListener;

.field c:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field d:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field e:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field f:Landroid/media/MediaPlayer$OnTimedTextListener;

.field g:Landroid/media/MediaPlayer$OnErrorListener;

.field h:Landroid/media/MediaPlayer$OnInfoListener;

.field private final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lapv$a;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lapv$a;->i:Landroid/os/Handler;

    .line 305
    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lapv$a;->c:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 342
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v2, Lapv$a$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lapv$a$1;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnBufferingUpdateListener;Landroid/media/MediaPlayer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lapv$a;->b:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v2, Lapv$a$2;

    invoke-direct {v2, p0, v0, p1}, Lapv$a$2;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    .line 367
    iget-object v2, p0, Lapv$a;->g:Landroid/media/MediaPlayer$OnErrorListener;

    .line 368
    if-eqz v2, :cond_0

    .line 369
    iget-object v6, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v0, Lapv$a$3;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lapv$a$3;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnErrorListener;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    .line 381
    iget-object v2, p0, Lapv$a;->h:Landroid/media/MediaPlayer$OnInfoListener;

    .line 382
    if-eqz v2, :cond_0

    .line 383
    iget-object v6, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v0, Lapv$a$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lapv$a$4;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnInfoListener;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lapv$a;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v2, Lapv$a$5;

    invoke-direct {v2, p0, v0, p1}, Lapv$a$5;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    :cond_0
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lapv$a;->d:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 409
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v2, Lapv$a$6;

    invoke-direct {v2, p0, v0, p1}, Lapv$a$6;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnSeekCompleteListener;Landroid/media/MediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_0
    return-void
.end method

.method public final onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lapv$a;->f:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v2, Lapv$a$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lapv$a$7;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnTimedTextListener;Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 7

    .prologue
    .line 434
    iget-object v2, p0, Lapv$a;->e:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 435
    if-eqz v2, :cond_0

    .line 436
    iget-object v6, p0, Lapv$a;->i:Landroid/os/Handler;

    new-instance v0, Lapv$a$8;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lapv$a$8;-><init>(Lapv$a;Landroid/media/MediaPlayer$OnVideoSizeChangedListener;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    :cond_0
    return-void
.end method

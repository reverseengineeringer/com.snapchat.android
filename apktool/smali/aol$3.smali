.class final Laol$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laol;


# direct methods
.method constructor <init>(Laol;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Laol$3;->a:Laol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 317
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laol$3;->a:Laol;

    invoke-static {v2}, Laol;->b(Laol;)Laka;

    move-result-object v2

    invoke-virtual {v2}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 320
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0, p1}, Laol;->a(Laol;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 321
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Laol$3;->a:Laol;

    invoke-static {v1}, Laol;->c(Laol;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 322
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0}, Laol;->b(Laol;)Laka;

    move-result-object v0

    invoke-virtual {v0}, Laka;->ai()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 323
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 325
    :cond_0
    new-instance v0, Lavc;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lavc;-><init>(II)V

    .line 326
    iget-object v1, p0, Laol$3;->a:Laol;

    invoke-static {v1, v0}, Laol;->a(Laol;Lavc;)V

    .line 328
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0}, Laol;->e(Laol;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    iget-object v1, p0, Laol$3;->a:Laol;

    invoke-static {v1}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Laol$3;->a:Laol;

    invoke-static {v2}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Laol$3;->a:Laol;

    invoke-static {v3}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(III)V

    .line 333
    sget-boolean v0, Latt;->SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Laol$3;->a:Laol;

    invoke-static {v0}, Laol;->d(Laol;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Laol$3;->a:Laol;

    iget-object v1, v1, Laol;->a:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 336
    :cond_1
    return-void
.end method

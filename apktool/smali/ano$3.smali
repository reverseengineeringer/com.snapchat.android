.class final Lano$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lano;


# direct methods
.method constructor <init>(Lano;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lano$3;->a:Lano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 438
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: Prepared %s, duration:%d width:%d height:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lano$3;->a:Lano;

    invoke-static {v4}, Lano;->b(Lano;)Laje;

    move-result-object v4

    invoke-virtual {v4}, Laje;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0, p1}, Lano;->a(Lano;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 442
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lano$3;->a:Lano;

    invoke-static {v1}, Lano;->c(Lano;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 443
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0}, Lano;->b(Lano;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->ak()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 444
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 446
    :cond_0
    new-instance v0, Laue;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Laue;-><init>(II)V

    .line 447
    iget-object v1, p0, Lano$3;->a:Lano;

    invoke-static {v1, v0}, Lano;->a(Lano;Laue;)V

    .line 448
    iget-object v1, p0, Lano$3;->a:Lano;

    iget-object v2, p0, Lano$3;->a:Lano;

    invoke-static {v2}, Lano;->b(Lano;)Laje;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lano;->a(Lano;Laje;Laue;)V

    .line 450
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0}, Lano;->e(Lano;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    iget-object v1, p0, Lano$3;->a:Lano;

    invoke-static {v1}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lano$3;->a:Lano;

    invoke-static {v2}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lano$3;->a:Lano;

    invoke-static {v3}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(III)V

    .line 455
    sget-boolean v0, Lasu;->SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lano$3;->a:Lano;

    invoke-static {v0}, Lano;->d(Lano;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lano$3;->a:Lano;

    iget-object v1, v1, Lano;->a:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 458
    :cond_1
    return-void
.end method

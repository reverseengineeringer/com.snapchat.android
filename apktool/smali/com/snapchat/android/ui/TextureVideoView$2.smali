.class final Lcom/snapchat/android/ui/TextureVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/TextureVideoView;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;)Z

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;)Z

    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;)Z

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;Landroid/media/MediaPlayer;)V

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->h(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    .line 402
    if-eqz v0, :cond_4

    .line 403
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v1, v1, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v1, v1, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    if-eqz v1, :cond_7

    .line 409
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->i(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 411
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 414
    :cond_5
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 416
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_0

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->i(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    goto/16 :goto_0
.end method

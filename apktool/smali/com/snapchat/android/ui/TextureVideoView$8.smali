.class final Lcom/snapchat/android/ui/TextureVideoView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 544
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->o(Lcom/snapchat/android/ui/TextureVideoView;)V

    .line 548
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->p(Lcom/snapchat/android/ui/TextureVideoView;)V

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p3}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->i(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 555
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v3, v3, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v3, v3, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    if-ne v3, p3, :cond_3

    .line 556
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v2}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->h(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->h(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$8;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 562
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 554
    goto :goto_0

    :cond_3
    move v1, v2

    .line 555
    goto :goto_1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

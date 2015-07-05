.class final Lcom/snapchat/android/ui/TextureVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 468
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v2

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->n(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->n(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$6;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

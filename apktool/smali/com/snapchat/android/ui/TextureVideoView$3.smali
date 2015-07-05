.class final Lcom/snapchat/android/ui/TextureVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 432
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->j(Lcom/snapchat/android/ui/TextureVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->k(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->k(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$3;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

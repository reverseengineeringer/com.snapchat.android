.class final Lcom/snapchat/android/ui/TextureVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 366
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$1;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$1;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;Landroid/media/MediaPlayer;)V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$1;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v0, v0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$1;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget v0, v0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$1;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->requestLayout()V

    .line 374
    :cond_0
    return-void
.end method

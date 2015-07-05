.class final Lcom/snapchat/android/ui/TextureVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 449
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$4;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$4;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->l(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$4;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->l(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 454
    :cond_0
    return-void
.end method

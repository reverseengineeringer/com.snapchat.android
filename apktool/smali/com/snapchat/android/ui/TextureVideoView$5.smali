.class final Lcom/snapchat/android/ui/TextureVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 458
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->m(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->m(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 463
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

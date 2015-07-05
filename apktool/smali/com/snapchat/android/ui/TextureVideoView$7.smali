.class final Lcom/snapchat/android/ui/TextureVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 492
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 495
    return-void
.end method

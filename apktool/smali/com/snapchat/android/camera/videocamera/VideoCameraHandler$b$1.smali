.class final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;

    iget-object v0, v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$b;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    invoke-interface {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->r()V

    .line 428
    return-void
.end method

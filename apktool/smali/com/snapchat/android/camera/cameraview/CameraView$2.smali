.class final Lcom/snapchat/android/camera/cameraview/CameraView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameraview/CameraView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameraview/CameraView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/snapchat/android/camera/cameraview/CameraView$2;->a:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView$2;->a:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lcom/snapchat/android/camera/cameraview/CameraView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView$2;->a:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v1, v1, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView$2;->a:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    .line 163
    return-void
.end method

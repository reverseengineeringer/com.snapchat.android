.class final Lcom/snapchat/android/camera/CameraFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/CameraFragment;->a([BLwc$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$5;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$5;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$5;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$5;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$5;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1257
    :cond_0
    return-void
.end method

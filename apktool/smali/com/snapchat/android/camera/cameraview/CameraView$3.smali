.class public final Lcom/snapchat/android/camera/cameraview/CameraView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

.field final synthetic b:Lcom/snapchat/android/camera/cameraview/CameraView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$b;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/camera/cameraview/CameraView$3;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iput-object p2, p0, Lcom/snapchat/android/camera/cameraview/CameraView$3;->a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 191
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView$3;->a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView$b;->a(Landroid/view/Surface;)V

    .line 186
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.class final Lcom/snapchat/android/camera/cameraview/CameraView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameraview/CameraView;->setTextureViewParameters(Lcom/snapchat/android/camera/cameraview/CameraView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

.field final synthetic b:Lcom/snapchat/android/camera/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/camera/cameraview/CameraView$1;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iput-object p2, p0, Lcom/snapchat/android/camera/cameraview/CameraView$1;->a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 84
    const-string v0, "CameraView"

    const-string v1, "Camera View: Surface texture available"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView$1;->a:Lcom/snapchat/android/camera/cameraview/CameraView$b;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView$b;->a(Landroid/graphics/SurfaceTexture;)V

    .line 86
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    .line 95
    const-string v0, "CameraView"

    const-string v1, "Surface Destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

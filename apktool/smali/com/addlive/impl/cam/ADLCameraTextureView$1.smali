.class Lcom/addlive/impl/cam/ADLCameraTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/cam/ADLCameraTextureView;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraTextureView;


# direct methods
.method constructor <init>(Lcom/addlive/impl/cam/ADLCameraTextureView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraTextureView$1;->this$0:Lcom/addlive/impl/cam/ADLCameraTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workOnCam(Landroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraTextureView$1;->this$0:Lcom/addlive/impl/cam/ADLCameraTextureView;

    # getter for: Lcom/addlive/impl/cam/ADLCameraTextureView;->surface:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraTextureView;->access$000(Lcom/addlive/impl/cam/ADLCameraTextureView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 209
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 210
    return-void
.end method

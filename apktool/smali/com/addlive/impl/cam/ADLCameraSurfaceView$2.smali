.class Lcom/addlive/impl/cam/ADLCameraSurfaceView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/cam/ADLCameraSurfaceView;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraSurfaceView;


# direct methods
.method constructor <init>(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView$2;->this$0:Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workOnCam(Landroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 175
    const-string v0, "AddLive_SDK_SCam"

    const-string v1, "Setting preview display"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView$2;->this$0:Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    # getter for: Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->access$000(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 177
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 178
    return-void
.end method

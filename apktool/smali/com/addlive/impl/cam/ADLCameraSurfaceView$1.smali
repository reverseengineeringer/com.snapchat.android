.class Lcom/addlive/impl/cam/ADLCameraSurfaceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/impl/cam/ADLCameraHelper$CamTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/cam/ADLCameraSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
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
    .line 144
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView$1;->this$0:Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public workOnCam(Landroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraSurfaceView$1;->this$0:Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    # getter for: Lcom/addlive/impl/cam/ADLCameraSurfaceView;->holder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;->access$000(Lcom/addlive/impl/cam/ADLCameraSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 148
    return-void
.end method

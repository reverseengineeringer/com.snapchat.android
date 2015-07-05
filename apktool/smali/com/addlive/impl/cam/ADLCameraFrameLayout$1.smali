.class Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/cam/ADLCameraFrameLayout;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field deviceOrient:I

.field now:J

.field orient:I

.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

.field wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)V
    .locals 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    # getter for: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$000(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->orient:I

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->now:J

    .line 164
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    # getter for: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$100(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->wm:Landroid/view/WindowManager;

    .line 166
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->wm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->deviceOrient:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    # getter for: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$200(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    move-result-object v0

    iget v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->orient:I

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->deviceOrient:I

    iget-wide v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;->now:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->drawFrame(IIJ)V

    .line 170
    return-void
.end method

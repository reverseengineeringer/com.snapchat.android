.class public Lcom/snapchat/android/camera/BackgroundCameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    .line 27
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/camera/BackgroundCameraFragment;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f040008

    return v0
.end method

.method protected final a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lvo;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BackgroundCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lvo;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    check-cast v0, Lvo;

    iget-object v0, v0, Lvo;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->a:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onDestroyView()V

    .line 50
    iput-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 51
    iput-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    .line 52
    return-void
.end method

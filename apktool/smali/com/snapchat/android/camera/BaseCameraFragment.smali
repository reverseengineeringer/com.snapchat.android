.class public abstract Lcom/snapchat/android/camera/BaseCameraFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/cameraview/CameraView$b;
.implements Lwy$a;
.implements Lxc;


# annotations
.annotation build Lawj;
.end annotation


# instance fields
.field private final a:Laub;

.field protected b:Lcom/snapchat/android/camera/cameraview/CameraView;

.field protected c:Lwy$b;

.field protected d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

.field protected e:Landroid/widget/RelativeLayout;

.field protected f:Landroid/widget/FrameLayout;

.field protected g:Landroid/content/SharedPreferences;

.field protected h:Lxe;

.field public i:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lxm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final k:Lyb;

.field private final l:Lxi;

.field private final m:Lxd;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Laub;

    invoke-direct {v0}, Laub;-><init>()V

    new-instance v1, Lyb;

    invoke-direct {v1}, Lyb;-><init>()V

    new-instance v2, Lxi;

    invoke-static {}, Lyc;->a()Lyc;

    move-result-object v3

    invoke-direct {v2, v3}, Lxi;-><init>(Lyc;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>(Laub;Lyb;Lxi;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Laub;Lyb;Lxi;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 94
    new-instance v0, Lxd;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lxd;-><init>(Landroid/os/Handler;Lxc;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->m:Lxd;

    .line 88
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/camera/BaseCameraFragment;)V

    .line 89
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->a:Laub;

    .line 90
    iput-object p2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->k:Lyb;

    .line 91
    iput-object p3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->l:Lxi;

    .line 92
    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;[B)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 352
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, p1}, Lwy$b;->a(Landroid/graphics/SurfaceTexture;)V

    .line 355
    if-eqz p2, :cond_3

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, p2}, Lwy$b;->a([B)V

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    invoke-virtual {v0}, Lxe;->a()V

    .line 360
    :cond_2
    new-instance v0, Lxe;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Preview Data Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-direct {v0, v2, v1, p0}, Lxe;-><init>(Landroid/os/Handler;Lwy$b;Lwy$a;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    invoke-interface {v0, v1}, Lwy$b;->a(Lxe;)V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0}, Lwy$b;->g()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Lyd;Lxi;Landroid/hardware/Camera$Parameters;)Lavc;
    .locals 9
    .param p1    # Lyd;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lxi;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p3}, Lxi;->a(Landroid/hardware/Camera$Parameters;)Lavc;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lavc;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0}, Lavc;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 346
    :goto_0
    return-object v0

    .line 334
    :cond_0
    new-array v0, v8, [Ljava/lang/Object;

    iget v1, p1, Lyd;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    iget v1, p1, Lyd;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 336
    invoke-static {p1}, Lwg;->a(Lyd;)D

    move-result-wide v4

    .line 337
    invoke-virtual {p2, p3, v4, v5}, Lxi;->a(Landroid/hardware/Camera$Parameters;D)Lavc;

    move-result-object v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->l:Lxi;

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lxi;->a(Landroid/hardware/Camera$Parameters;IDZ)Lavc;

    move-result-object v0

    .line 344
    :cond_1
    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lavc;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0}, Lavc;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method protected abstract a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lavc;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/graphics/SurfaceTexture;[B)V

    .line 398
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v2, Lyd;

    invoke-direct {v2}, Lyd;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lavc;Lyd;)V

    goto :goto_0
.end method

.method protected a(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method protected a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    .line 139
    return-void
.end method

.method public a(Lwy$b;I)V
    .locals 8

    .prologue
    const/16 v4, 0x5a

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 244
    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v3, v3, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v5, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    iput-object v5, v3, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    .line 248
    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput p2, v3, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    .line 249
    new-instance v3, Lyd;

    invoke-direct {v3}, Lyd;-><init>()V

    iget-object v5, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->l:Lxi;

    invoke-virtual {p0, v3, v5, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lyd;Lxi;Landroid/hardware/Camera$Parameters;)Lavc;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-object v3, v5, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-virtual {v3}, Lavc;->a()I

    move-result v5

    invoke-virtual {v3}, Lavc;->b()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Nexus 4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v3, v3, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "continuous-picture"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "continuous-picture"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/hardware/Camera$Parameters;)V

    iget-object v3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v3, v0}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    iget-object v6, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "window"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v7, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_9

    move v3, v2

    :goto_2
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_a

    move v5, v2

    :goto_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_6

    :cond_5
    if-nez v0, :cond_b

    if-eqz v5, :cond_b

    :cond_6
    const/4 v0, 0x3

    :goto_4
    invoke-virtual {v6}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    if-nez v3, :cond_c

    :goto_5
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, v4}, Lwy$b;->a(I)V

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d()Z

    .line 251
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 249
    goto :goto_1

    :cond_9
    move v3, v1

    goto :goto_2

    :cond_a
    move v5, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_7
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v6}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v4, v0, 0x168

    goto :goto_5

    :pswitch_0
    move v0, v1

    goto :goto_7

    :pswitch_1
    move v0, v4

    goto :goto_7

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_7

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_7

    :cond_d
    sub-int v0, v3, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v4, v0, 0x168

    goto :goto_5

    .line 250
    :cond_e
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    if-nez v2, :cond_f

    new-instance v2, Landroid/view/TextureView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    iget-object v2, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_f
    invoke-virtual {v0, p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->setTextureViewParameters(Lcom/snapchat/android/camera/cameraview/CameraView$b;)V

    iget-object v0, v0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, v2, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, v2, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lavc;)[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/graphics/SurfaceTexture;[B)V

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, v2, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    new-instance v3, Lyd;

    invoke-direct {v3}, Lyd;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lavc;Lyd;)V

    goto/16 :goto_6

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, p1}, Lwy$b;->b(Z)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, v2}, Lwy$b;->a(Lxe;)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Lxe;

    invoke-virtual {v0}, Lxe;->a()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    invoke-interface {v0, p1}, Lwy$b;->a(Z)V

    .line 201
    iput-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lwy$b;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, -0x1

    iput v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    iput-boolean v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->g:Z

    iput-object v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    iput-boolean v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    .line 204
    return-void
.end method

.method public a([BLwy$b;)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method protected a(Lavc;)[B
    .locals 1
    .param p1    # Lavc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    .line 382
    return-void
.end method

.method protected d()Z
    .locals 4

    .prologue
    const/high16 v3, 0x7f0a0000

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setId(I)V

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->f()Z

    move-result v0

    return v0
.end method

.method protected final g_()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d()Z

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->d:Z

    invoke-static {}, Lwz;->a()Lwy;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->m:Lxd;

    invoke-interface {v0, v1, v2}, Lwy;->a(ILxd;)V

    goto :goto_0
.end method

.method protected final h()Lalv;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CAMERA"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->mFragmentLayout:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->g:Landroid/content/SharedPreferences;

    .line 109
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    .line 110
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->e:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lwz;->a()Lwy;

    move-result-object v0

    invoke-interface {v0}, Lwy;->a()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 159
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 164
    :goto_1
    return-void

    .line 159
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->g_()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

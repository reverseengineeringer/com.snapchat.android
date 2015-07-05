.class public Lcom/snapchat/android/camera/cameraview/CameraView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lvl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/cameraview/CameraView$a;,
        Lcom/snapchat/android/camera/cameraview/CameraView$b;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/view/SurfaceView;

.field public c:Landroid/view/TextureView;

.field private final d:Lno;

.field private final e:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->addView(Landroid/view/View;)V

    .line 58
    invoke-static {}, Lno;->a()Lno;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->d:Lno;

    .line 59
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->e:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 60
    return-void
.end method

.method private a(Laue;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-virtual {p0, v4}, Lcom/snapchat/android/camera/cameraview/CameraView;->setDrawingCacheEnabled(Z)V

    .line 122
    invoke-virtual {p1}, Laue;->b()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Laue;->a()I

    move-result v1

    .line 125
    new-instance v2, Lxh;

    invoke-direct {v2}, Lxh;-><init>()V

    .line 126
    invoke-static {v2, v0, v1}, Laur;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 127
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lavq;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 132
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    invoke-virtual {v2, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 136
    iget-object v2, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    invoke-virtual {v2, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameraview/CameraView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static a(DD)Z
    .locals 2

    .prologue
    .line 281
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/cameraview/CameraView$2;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Laue;Lvm;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->e:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Laue;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    invoke-interface {p2, v0}, Lvm;->a(Landroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

.method public final a(Laue;Lxh;)V
    .locals 7
    .param p1    # Laue;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lxh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 206
    iget v0, p2, Lxh;->heightPixels:I

    int-to-float v0, v0

    iget v1, p2, Lxh;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 208
    invoke-virtual {p1}, Laue;->c()D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    div-float/2addr v1, v0

    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$a;

    invoke-direct {v0, p0, v6, v1}, Lcom/snapchat/android/camera/cameraview/CameraView$a;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;FF)V

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    iget v2, v0, Lcom/snapchat/android/camera/cameraview/CameraView$a;->a:F

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 212
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    iget v0, v0, Lcom/snapchat/android/camera/cameraview/CameraView$a;->b:F

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 213
    return-void

    .line 208
    :cond_0
    div-float v1, v0, v1

    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$a;

    invoke-direct {v0, p0, v1, v6}, Lcom/snapchat/android/camera/cameraview/CameraView$a;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;FF)V

    goto :goto_0
.end method

.method public setTextureViewParameters(Lcom/snapchat/android/camera/cameraview/CameraView$b;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    new-instance v1, Lcom/snapchat/android/camera/cameraview/CameraView$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView$1;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$b;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 104
    return-void
.end method

.class public Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;
.super Lcom/snapchat/android/ui/VerticalSwipeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;
    }
.end annotation


# instance fields
.field private final c:Lxc;

.field private final d:Lxd;

.field private e:I

.field private f:Z

.field private g:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    new-instance v1, Lxd;

    invoke-direct {v1}, Lxd;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lxc;Lxd;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lxc;Lxd;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v2, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->f:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->g:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;

    .line 50
    new-instance v0, Lanj;

    invoke-direct {v0, p0}, Lanj;-><init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iput-object p3, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->c:Lxc;

    .line 46
    iput-object p4, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->d:Lxd;

    .line 47
    return-void

    .line 44
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public getInProfilePictureView()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->onScrollChanged(IIII)V

    .line 92
    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->c:Lxc;

    iget v2, v1, Lxc;->c:I

    div-int v2, p2, v2

    iget-object v3, v1, Lxc;->b:Lxe;

    invoke-virtual {v3, v2, p2}, Lxe;->a(II)F

    move-result v3

    iget-object v4, v1, Lxc;->b:Lxe;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p2}, Lxe;->a(II)F

    move-result v4

    iget-object v5, v1, Lxc;->a:Lxc$a;

    invoke-interface {v5, v2}, Lxc$a;->a(I)F

    move-result v5

    mul-float/2addr v3, v5

    iget-object v1, v1, Lxc;->a:Lxc$a;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lxc$a;->a(I)F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setBackgroundColor(I)V

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->d:Lxd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lxd;->a(II)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->d:Lxd;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lxd;->a(II)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 94
    :cond_1
    return-void
.end method

.method public setBackgroundViewVisibility(I)V
    .locals 4

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    iget v0, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setBackgroundColor(I)V

    .line 141
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraViewFlipperListener(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->g:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper$a;

    .line 59
    return-void
.end method

.method public setInProfilePictureView(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->f:Z

    .line 68
    return-void
.end method

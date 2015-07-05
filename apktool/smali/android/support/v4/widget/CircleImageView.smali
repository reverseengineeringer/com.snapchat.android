.class final Landroid/support/v4/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 56
    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 57
    const/4 v3, 0x0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 59
    const/high16 v4, 0x40600000    # 3.5f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    .line 62
    invoke-static {}, Landroid/support/v4/widget/CircleImageView;->elevationSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 64
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 66
    :cond_0
    new-instance v1, Landroid/support/v4/widget/CircleImageView$OvalShadow;

    iget v4, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    invoke-direct {v1, p0, v4, v0}, Landroid/support/v4/widget/CircleImageView$OvalShadow;-><init>(Landroid/support/v4/widget/CircleImageView;II)V

    .line 67
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {p0, v1, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v5, 0x1e000000

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 71
    iget v1, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    .line 73
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v4/widget/CircleImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static elevationSupported()Z
    .locals 2

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 94
    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 107
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 99
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 86
    invoke-static {}, Landroid/support/v4/widget/CircleImageView;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/CircleImageView;->setMeasuredDimension(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :cond_0
    return-void
.end method

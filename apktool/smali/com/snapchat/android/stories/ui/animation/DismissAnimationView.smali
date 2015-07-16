.class public Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    .line 32
    invoke-direct {p0, p1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    .line 42
    invoke-direct {p0, p1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    .line 58
    new-instance v0, Larc;

    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Larc;-><init>(I)V

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {v1, v0}, Lawf;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-static {p1}, Lawf;->a(Landroid/content/Context;)I

    move-result v0

    .line 64
    invoke-static {p1}, Lawf;->b(Landroid/content/Context;)I

    move-result v2

    .line 65
    mul-int v3, v0, v0

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v6

    .line 67
    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float/2addr v0, v3

    .line 68
    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-float/2addr v2, v3

    .line 70
    float-to-int v4, v3

    mul-int/lit8 v4, v4, 0x2

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v4, v3}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->addView(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;-><init>(Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    return-void

    .line 79
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 81
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

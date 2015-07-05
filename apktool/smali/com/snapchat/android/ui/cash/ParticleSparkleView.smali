.class public Lcom/snapchat/android/ui/cash/ParticleSparkleView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/cash/ParticleView$a;


# instance fields
.field public a:I

.field public b:Lxv;
    .annotation build Lcgb;
    .end annotation
.end field

.field c:Ljava/util/Random;

.field public d:Z

.field private e:Landroid/graphics/drawable/Drawable;
    .annotation build Lcgb;
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->c:Ljava/util/Random;

    .line 27
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Z

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Landroid/content/Context;

    .line 36
    sget-object v0, Lmd$a;->ParticleSparkleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    const/high16 v0, 0x41c80000    # 25.0f

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    const/high16 v0, 0x42fa0000    # 125.0f

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->h:I

    .line 38
    return-void

    .line 36
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const v11, 0x3e99999a    # 0.3f

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 105
    new-instance v0, Lcom/snapchat/android/ui/cash/ParticleView;

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/cash/ParticleView;->setAnimationListener(Lcom/snapchat/android/ui/cash/ParticleView$a;)V

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Lxv;

    invoke-interface {v1}, Lxv;->a()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setCenterPoint(Landroid/graphics/Point;)V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getParticleFinalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setFinalSize(I)V

    .line 112
    invoke-virtual {v0, v14}, Lcom/snapchat/android/ui/cash/ParticleView;->setAlpha(F)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->addView(Landroid/view/View;)V

    .line 115
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v2, Lcom/snapchat/android/ui/cash/ParticleView;->a:Ljava/util/Random;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Lcom/snapchat/android/ui/cash/ParticleView;->a:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x12c

    sget-object v4, Lcom/snapchat/android/ui/cash/ParticleView;->a:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x12c

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/cash/ParticleView;->setScaleX(F)V

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/cash/ParticleView;->setScaleY(F)V

    sget-object v5, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_X:Landroid/util/Property;

    new-array v6, v13, [F

    aput v9, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_Y:Landroid/util/Property;

    new-array v7, v13, [F

    aput v9, v7, v12

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/ui/cash/ParticleView;->ALPHA:Landroid/util/Property;

    new-array v8, v13, [F

    aput v9, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_X:Landroid/util/Property;

    new-array v9, v13, [F

    aput v11, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    sget-object v9, Lcom/snapchat/android/ui/cash/ParticleView;->SCALE_Y:Landroid/util/Property;

    new-array v10, v13, [F

    aput v11, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    sget-object v10, Lcom/snapchat/android/ui/cash/ParticleView;->ALPHA:Landroid/util/Property;

    new-array v11, v13, [F

    aput v14, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v11, v12

    aput-object v6, v11, v13

    const/4 v5, 0x2

    aput-object v7, v11, v5

    invoke-static {v0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v5, v12

    aput-object v9, v5, v13

    const/4 v6, 0x2

    aput-object v10, v5, v6

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/snapchat/android/ui/cash/ParticleView$1;

    invoke-direct {v2, v0, v0}, Lcom/snapchat/android/ui/cash/ParticleView$1;-><init>(Lcom/snapchat/android/ui/cash/ParticleView;Lcom/snapchat/android/ui/cash/ParticleView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 116
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/cash/ParticleView;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Lxv;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/cash/ParticleView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->a(Landroid/graphics/Point;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->removeView(Landroid/view/View;)V

    .line 128
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a()V

    .line 131
    :cond_0
    return-void
.end method

.method public getParticle()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getParticleFinalSize()I
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->c:Ljava/util/Random;

    iget v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->h:I

    iget v2, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildCount()I

    move-result v2

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleView;

    .line 62
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getMeasuredWidth()I

    move-result v3

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getMeasuredHeight()I

    move-result v4

    .line 64
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 66
    iget v6, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/snapchat/android/ui/cash/ParticleView;->layout(IIII)V

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildCount()I

    move-result v2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->setMeasuredDimension(II)V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleView;

    .line 77
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getFinalSize()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 79
    invoke-virtual {p0, v0, v3, v3}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->measureChild(Landroid/view/View;II)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

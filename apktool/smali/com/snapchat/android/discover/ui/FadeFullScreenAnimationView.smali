.class public Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;,
        Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lavq;

.field private c:Landroid/content/Context;

.field private d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lavq;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lavq;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    .line 27
    iput-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->c:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b:Lavq;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;)Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;

    return-object v0
.end method

.method private c()V
    .locals 6
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v4}, Laur;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->b:Lavq;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lavq;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 95
    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->c()V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 55
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getAlpha()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getAlpha()F

    move-result v1

    sub-float v1, v4, v1

    const v2, 0x43a28000    # 325.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 58
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    new-instance v1, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;

    invoke-direct {v1, p0, v5}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;-><init>(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;B)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->c()V

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->getAlpha()F

    move-result v1

    const v2, 0x43a28000    # 325.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 76
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->setMeasuredDimension(II)V

    .line 42
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->c()V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFadeFullScreenListener(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->d:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;

    .line 46
    return-void
.end method

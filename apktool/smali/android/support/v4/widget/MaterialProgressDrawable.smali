.class final Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/MaterialProgressDrawable$StartCurveInterpolator;,
        Landroid/support/v4/widget/MaterialProgressDrawable$EndCurveInterpolator;,
        Landroid/support/v4/widget/MaterialProgressDrawable$Ring;,
        Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field final mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$EndCurveInterpolator;-><init>(B)V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$StartCurveInterpolator;-><init>(B)V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 76
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 113
    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 116
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 117
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 119
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 120
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    new-instance v1, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 121
    return-void
.end method

.method static synthetic access$200$7dc75d4f(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 4

    .prologue
    .line 52
    iget v0, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v2, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v3, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget v1, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    iget v2, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/MaterialProgressDrawable;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/MaterialProgressDrawable;F)F
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private static applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 4

    .prologue
    .line 300
    iget v0, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 302
    iget v1, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v2, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v3, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    .line 304
    invoke-virtual {p1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 305
    iget v1, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    iget v2, p1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    .line 307
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 308
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setArrowScale(F)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 167
    :cond_0
    return-void
.end method

.method private varargs setColorSchemeColors([I)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 205
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 206
    return-void
.end method

.method private setProgressRotation(F)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 187
    return-void
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7

    .prologue
    .line 125
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 126
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 127
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 129
    float-to-double v2, v0

    mul-double/2addr v2, p1

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    .line 130
    float-to-double v2, v0

    mul-double/2addr v2, p3

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    .line 131
    double-to-float v2, p7

    mul-float/2addr v2, v0

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    iget-object v3, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 132
    float-to-double v2, v0

    mul-double/2addr v2, p5

    iput-wide v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 133
    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 134
    mul-float v2, p9, v0

    mul-float v0, v0, p10

    float-to-int v2, v2

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int v0, v0

    iput v0, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 135
    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v2

    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    iget v0, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_0
    iput v0, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 136
    return-void

    .line 135
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    iget-wide v4, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 312
    new-instance v1, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 347
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 348
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 349
    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 350
    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    iput-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 379
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 222
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    iget-object v8, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v2, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    iget v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v3, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    sub-float v3, v0, v2

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget-object v4, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    iget-object v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v0, v1

    iget-wide v4, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v10, v1

    add-double/2addr v4, v10

    double-to-float v1, v4

    iget-wide v4, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-double v10, v9

    add-double/2addr v4, v10

    double-to-float v4, v4

    iget-object v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v9, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v9, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v10, v10

    iget v11, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v4, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, v2, v3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 225
    return-void

    .line 223
    :cond_2
    iget-object v0, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 261
    :goto_0
    if-ge v2, v4, :cond_1

    .line 262
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 263
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 267
    :goto_1
    return v0

    .line 261
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 267
    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 230
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iput p1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 194
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 239
    return-void
.end method

.method final setRotation(F)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 245
    return-void
.end method

.method public final setStartEndTrim$2548a35(F)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 177
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 178
    return-void
.end method

.method public final showArrow(Z)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 160
    return-void
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 273
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 275
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    .line 277
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 281
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 291
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 292
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iput v1, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 294
    return-void
.end method

.method public final updateSizes(I)V
    .locals 14
    .param p1    # I
        .annotation build Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 146
    if-nez p1, :cond_0

    .line 147
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method

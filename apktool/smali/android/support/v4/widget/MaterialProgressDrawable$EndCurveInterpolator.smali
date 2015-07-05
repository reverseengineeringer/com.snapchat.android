.class final Landroid/support/v4/widget/MaterialProgressDrawable$EndCurveInterpolator;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndCurveInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$EndCurveInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    .prologue
    .line 702
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

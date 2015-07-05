.class final Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$200$7dc75d4f(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 345
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-wide v4, v4, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 323
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 324
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 325
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 329
    sub-float v0, v6, v0

    .line 330
    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 332
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 334
    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 336
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 338
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 339
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 341
    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x44340000    # 720.0f

    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    # getter for: Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$500(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 343
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    goto :goto_0
.end method

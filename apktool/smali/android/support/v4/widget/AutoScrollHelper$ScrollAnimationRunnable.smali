.class final Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;B)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 687
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z
    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->access$100(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z
    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->access$200(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->access$202$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z

    .line 693
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    iput v0, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    iput v0, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 696
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->access$300(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v1

    .line 697
    iget-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v6, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # invokes: Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z
    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$400(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$102$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z

    goto :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z
    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$500(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$502$2149d4c8(Landroid/support/v4/widget/AutoScrollHelper;)Z

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$600(Landroid/support/v4/widget/AutoScrollHelper;)V

    .line 707
    :cond_5
    iget-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v0

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iget-wide v4, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v4, v2, v4

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v2, v4

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    long-to-float v2, v4

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 709
    iget v0, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 711
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/AutoScrollHelper;->scrollTargetBy$255f295(I)V

    .line 714
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    # getter for: Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->access$700(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

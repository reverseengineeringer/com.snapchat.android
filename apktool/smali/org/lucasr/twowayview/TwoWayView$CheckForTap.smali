.class final Lorg/lucasr/twowayview/TwoWayView$CheckForTap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 6519
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .prologue
    .line 6519
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6522
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6567
    :cond_0
    :goto_0
    return-void

    .line 6526
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I
    invoke-static {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6528
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6529
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6530
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v2, 0x0

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I
    invoke-static {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3502(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6532
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6533
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v3}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 6534
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6536
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3600(Lorg/lucasr/twowayview/TwoWayView;)V

    .line 6537
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I
    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V
    invoke-static {v1, v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3700(Lorg/lucasr/twowayview/TwoWayView;ILandroid/view/View;)V

    .line 6538
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->refreshDrawableState()V

    .line 6540
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I
    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V
    invoke-static {v1, v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3700(Lorg/lucasr/twowayview/TwoWayView;ILandroid/view/View;)V

    .line 6541
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->refreshDrawableState()V

    .line 6543
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v1

    .line 6545
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3800(Lorg/lucasr/twowayview/TwoWayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6546
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3800(Lorg/lucasr/twowayview/TwoWayView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6548
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_2

    .line 6549
    if-eqz v1, :cond_3

    .line 6550
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 6551
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 6558
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 6559
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->triggerCheckForLongPress()V
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3900(Lorg/lucasr/twowayview/TwoWayView;)V

    goto/16 :goto_0

    .line 6553
    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 6561
    :cond_4
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I
    invoke-static {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    goto/16 :goto_0

    .line 6564
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I
    invoke-static {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    goto/16 :goto_0
.end method

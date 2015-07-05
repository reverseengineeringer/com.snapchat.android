.class Lorg/lucasr/twowayview/TwoWayView$PositionScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_AFTER_BOUND:I = 0x3

.field private static final MOVE_AFTER_POS:I = 0x1

.field private static final MOVE_BEFORE_BOUND:I = 0x4

.field private static final MOVE_BEFORE_POS:I = 0x2

.field private static final MOVE_OFFSET:I = 0x5

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPosition:I

.field private final mExtraScroll:I

.field private mLastSeenPosition:I

.field private mMode:I

.field private mOffsetFromStart:I

.field private mScrollDuration:I

.field private mTargetPosition:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .prologue
    .line 6747
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6748
    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/lucasr/twowayview/TwoWayView;->access$4100(Lorg/lucasr/twowayview/TwoWayView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    .line 6749
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 7002
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4700(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    .line 7003
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v4

    .line 7005
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    .line 7006
    :goto_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    .line 7008
    :goto_1
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    packed-switch v5, :pswitch_data_0

    .line 7181
    :cond_0
    :goto_2
    return-void

    .line 7005
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 7006
    :cond_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    goto :goto_1

    .line 7010
    :pswitch_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 7011
    if-ltz v0, :cond_0

    .line 7015
    add-int v2, v4, v0

    .line 7016
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v2, v4, :cond_3

    .line 7018
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7022
    :cond_3
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7023
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I
    invoke-static {v4, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v4

    .line 7024
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v5, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 7025
    sub-int v0, v3, v0

    .line 7026
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7029
    :cond_4
    sub-int v0, v4, v0

    add-int/2addr v0, v1

    .line 7030
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7032
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7033
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-ge v2, v0, :cond_0

    .line 7034
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7041
    :pswitch_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 7043
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-eq v4, v3, :cond_0

    if-le v0, v6, :cond_0

    add-int/2addr v0, v4

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I
    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 7049
    add-int/lit8 v0, v4, 0x1

    .line 7051
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v0, v3, :cond_5

    .line 7053
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7057
    :cond_5
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3, v6}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7058
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I
    invoke-static {v4, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v4

    .line 7059
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v5, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v3

    .line 7060
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7061
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-ge v0, v5, :cond_6

    .line 7062
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/2addr v3, v4

    sub-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v5, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7064
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7065
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7067
    :cond_6
    if-le v4, v1, :cond_0

    .line 7068
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v1, v4, v1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_2

    .line 7076
    :pswitch_2
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v4, v1, :cond_7

    .line 7078
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7082
    :cond_7
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7083
    if-eqz v1, :cond_0

    .line 7087
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v1

    .line 7088
    if-lez v4, :cond_8

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7091
    :cond_8
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v0, v1, v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7092
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7094
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-le v4, v0, :cond_0

    .line 7095
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7102
    :pswitch_3
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 7103
    if-ltz v1, :cond_0

    .line 7107
    add-int v2, v4, v1

    .line 7109
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v2, v4, :cond_9

    .line 7111
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7115
    :cond_9
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7116
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I
    invoke-static {v4, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v4

    .line 7117
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v5, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v1

    .line 7118
    sub-int v5, v3, v1

    .line 7119
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mExtraScroll:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7121
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7123
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    if-le v2, v6, :cond_a

    .line 7124
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v0, v5, v0

    neg-int v0, v0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7125
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7127
    :cond_a
    sub-int v0, v3, v0

    .line 7128
    add-int/2addr v1, v4

    .line 7129
    if-le v0, v1, :cond_0

    .line 7130
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_2

    .line 7138
    :pswitch_4
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    if-ne v0, v4, :cond_b

    .line 7140
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7144
    :cond_b
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 7146
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 7147
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 7148
    add-int v0, v4, v1

    add-int/lit8 v5, v0, -0x1

    .line 7151
    if-ge v3, v4, :cond_c

    .line 7152
    sub-int v0, v4, v3

    add-int/lit8 v0, v0, 0x1

    .line 7158
    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 7160
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7161
    if-ge v3, v4, :cond_d

    .line 7162
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getSize()I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 7163
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 7164
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7165
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7153
    :cond_c
    if-le v3, v5, :cond_f

    .line 7154
    sub-int v0, v3, v5

    goto :goto_3

    .line 7166
    :cond_d
    if-le v3, v5, :cond_e

    .line 7167
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getSize()I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 7168
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 7169
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    .line 7170
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 7173
    :cond_e
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v1, v3, v4

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7174
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 7175
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mOffsetFromStart:I

    sub-int/2addr v0, v1

    .line 7176
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getSize()I
    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$5000(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 7178
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto :goto_3

    .line 7008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 6945
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 6946
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    .line 6947
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 6949
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I
    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    .line 6950
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I
    invoke-static {v4}, Lorg/lucasr/twowayview/TwoWayView;->access$4500(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v4

    .line 6952
    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_1

    .line 6953
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scrollToVisible called with targetPosition "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not visible ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6957
    :cond_1
    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_3

    .line 6959
    :cond_2
    const/4 p2, -0x1

    .line 6962
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v5, p1, v2

    invoke-virtual {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6963
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v5, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v5

    .line 6964
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I
    invoke-static {v6, v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v0

    .line 6967
    if-le v0, v4, :cond_8

    .line 6968
    sub-int/2addr v0, v4

    .line 6970
    :goto_0
    if-ge v5, v3, :cond_4

    .line 6971
    sub-int v0, v5, v3

    .line 6974
    :cond_4
    if-nez v0, :cond_5

    .line 6994
    :goto_1
    return-void

    .line 6978
    :cond_5
    if-ltz p2, :cond_6

    .line 6979
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v2, p2, v2

    invoke-virtual {v5, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6980
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v5, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v5

    .line 6981
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I
    invoke-static {v6, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v2

    .line 6982
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 6984
    if-gez v0, :cond_7

    add-int v7, v2, v6

    if-le v7, v4, :cond_7

    .line 6986
    sub-int v0, v2, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6993
    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v0, p3}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto :goto_1

    .line 6987
    :cond_7
    if-lez v0, :cond_6

    sub-int v2, v5, v6

    if-ge v2, v3, :cond_6

    .line 6989
    sub-int v0, v5, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method start(I)V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, -0x1

    .line 6752
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 6754
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6756
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$1;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;I)V

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6799
    :cond_0
    :goto_0
    return-void

    .line 6765
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 6766
    if-eqz v0, :cond_0

    .line 6771
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    .line 6772
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 6774
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6777
    if-ge v2, v1, :cond_2

    .line 6778
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 6779
    const/4 v1, 0x2

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    .line 6788
    :goto_1
    if-lez v0, :cond_4

    .line 6789
    div-int v0, v5, v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6794
    :goto_2
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6795
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6796
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6798
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6780
    :cond_2
    if-le v2, v0, :cond_3

    .line 6781
    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 6782
    const/4 v1, 0x1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6784
    :cond_3
    invoke-virtual {p0, v2, v4, v5}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 6791
    :cond_4
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method start(II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xc8

    .line 6802
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 6804
    if-ne p2, v5, :cond_1

    .line 6805
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V

    .line 6880
    :cond_0
    :goto_0
    return-void

    .line 6809
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6811
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$2;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;II)V

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 6820
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 6821
    if-eqz v0, :cond_0

    .line 6826
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    .line 6827
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 6829
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6832
    if-ge v2, v1, :cond_4

    .line 6833
    sub-int/2addr v0, p2

    .line 6834
    if-lez v0, :cond_0

    .line 6839
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 6840
    add-int/lit8 v0, v0, -0x1

    .line 6841
    if-ge v0, v1, :cond_3

    .line 6843
    const/4 v1, 0x4

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    .line 6869
    :goto_1
    if-lez v0, :cond_7

    .line 6870
    div-int v0, v4, v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6875
    :goto_2
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6876
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6877
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6879
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6845
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    move v0, v1

    .line 6848
    goto :goto_1

    :cond_4
    if-le v2, v0, :cond_6

    .line 6849
    sub-int v3, p2, v1

    .line 6850
    if-lez v3, :cond_0

    .line 6855
    sub-int v0, v2, v0

    add-int/lit8 v1, v0, 0x1

    .line 6856
    add-int/lit8 v0, v3, -0x1

    .line 6857
    if-ge v0, v1, :cond_5

    .line 6859
    const/4 v1, 0x3

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    goto :goto_1

    .line 6861
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    move v0, v1

    .line 6864
    goto :goto_1

    .line 6865
    :cond_6
    invoke-virtual {p0, v2, p2, v4}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 6872
    :cond_7
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithOffset(II)V
    .locals 1

    .prologue
    .line 6883
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(III)V

    .line 6884
    return-void
.end method

.method startWithOffset(III)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 6887
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 6889
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6891
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller$3;-><init>(Lorg/lucasr/twowayview/TwoWayView$PositionScroller;III)V

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6938
    :cond_0
    :goto_0
    return-void

    .line 6901
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 6902
    if-eqz v1, :cond_0

    .line 6907
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$4300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    add-int/2addr v0, p2

    .line 6909
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    .line 6910
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mOffsetFromStart:I

    .line 6911
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mBoundPosition:I

    .line 6912
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6913
    const/4 v2, 0x5

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mMode:I

    .line 6915
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I
    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    .line 6916
    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    .line 6919
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-ge v4, v2, :cond_2

    .line 6920
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int v0, v2, v0

    .line 6932
    :goto_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 6933
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    :goto_2
    iput p3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mScrollDuration:I

    .line 6935
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mLastSeenPosition:I

    .line 6937
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6921
    :cond_2
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    if-le v4, v3, :cond_3

    .line 6922
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 6925
    :cond_3
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->mTargetPosition:I

    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6926
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I
    invoke-static {v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I

    move-result v1

    .line 6927
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0, p3}, Lorg/lucasr/twowayview/TwoWayView;->smoothScrollBy(II)V

    goto :goto_0

    .line 6933
    :cond_4
    int-to-float v1, p3

    div-float v0, v1, v0

    float-to-int p3, v0

    goto :goto_2
.end method

.method stop()V
    .locals 1

    .prologue
    .line 6997
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, p0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6998
    return-void
.end method

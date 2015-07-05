.class Lorg/lucasr/twowayview/TwoWayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lucasr/twowayview/TwoWayView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$PerformClick;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$1;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iput-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lorg/lucasr/twowayview/TwoWayView$1;->val$performClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1641
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v1, -0x1

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 1643
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1644
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1646
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # getter for: Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z
    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->val$performClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->run()V

    .line 1650
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$1;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v1, 0x0

    # setter for: Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$602(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1651
    return-void
.end method

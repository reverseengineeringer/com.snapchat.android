.class Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .prologue
    .line 6646
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .prologue
    .line 6646
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6649
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 6651
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 6652
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 6655
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 6680
    :cond_0
    :goto_0
    return-void

    .line 6660
    :cond_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6664
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 6665
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 6666
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6671
    :goto_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6672
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6673
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 6676
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6677
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6678
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    goto :goto_0

    .line 6668
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6684
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6725
    :cond_0
    :goto_0
    return v0

    .line 6688
    :cond_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 6689
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 6692
    if-eq v2, v6, :cond_2

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 6693
    goto :goto_0

    .line 6697
    :cond_3
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v4}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v1

    .line 6698
    goto :goto_0

    .line 6701
    :cond_5
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 6703
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 6725
    goto :goto_0

    .line 6705
    :sswitch_0
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 6706
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v6}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 6709
    goto :goto_0

    .line 6712
    :sswitch_1
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v2, :cond_7

    .line 6713
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 6716
    goto :goto_0

    .line 6719
    :sswitch_2
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3, p1, v2, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 6722
    :sswitch_3
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    # invokes: Lorg/lucasr/twowayview/TwoWayView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, p1, v2, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    move v0, v1

    goto :goto_0

    .line 6703
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

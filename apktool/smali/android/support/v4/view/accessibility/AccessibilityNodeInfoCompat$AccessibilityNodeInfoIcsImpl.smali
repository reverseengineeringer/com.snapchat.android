.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 694
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addAction(Ljava/lang/Object;I)V

    .line 695
    return-void
.end method

.method public addAction(Ljava/lang/Object;ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 914
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 915
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addAction(Ljava/lang/Object;I)V

    .line 917
    :cond_0
    return-void
.end method

.method public final addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 699
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 700
    return-void
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getActions(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 709
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 714
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 715
    return-void
.end method

.method public final getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 719
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 720
    return-void
.end method

.method public final getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 729
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 734
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 739
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 744
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 749
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 754
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getWindowId(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 759
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isCheckable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 764
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isCheckable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isChecked(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 769
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 774
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 779
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocusable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 784
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocused(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 789
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isLongClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 794
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPassword(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 799
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isScrollable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 804
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 809
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 679
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 684
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 689
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 814
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->performAction(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 909
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method public final setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 819
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 820
    return-void
.end method

.method public final setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 824
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 825
    return-void
.end method

.method public final setCheckable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 829
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setCheckable(Ljava/lang/Object;Z)V

    .line 830
    return-void
.end method

.method public final setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 834
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 835
    return-void
.end method

.method public final setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 839
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 840
    return-void
.end method

.method public final setClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 844
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClickable(Ljava/lang/Object;Z)V

    .line 845
    return-void
.end method

.method public final setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 849
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 850
    return-void
.end method

.method public final setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 854
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 855
    return-void
.end method

.method public final setFocusable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 859
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocusable(Ljava/lang/Object;Z)V

    .line 860
    return-void
.end method

.method public final setFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 864
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocused(Ljava/lang/Object;Z)V

    .line 865
    return-void
.end method

.method public final setLongClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 869
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setLongClickable(Ljava/lang/Object;Z)V

    .line 870
    return-void
.end method

.method public final setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 874
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 875
    return-void
.end method

.method public final setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 879
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 880
    return-void
.end method

.method public final setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 884
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 885
    return-void
.end method

.method public final setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 889
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 890
    return-void
.end method

.method public final setSelected(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 894
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSelected(Ljava/lang/Object;Z)V

    .line 895
    return-void
.end method

.method public final setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 899
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 900
    return-void
.end method

.method public final setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 904
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 905
    return-void
.end method

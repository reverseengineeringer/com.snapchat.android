.class final Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/Object;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1106
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->addAction(Ljava/lang/Object;ILjava/lang/CharSequence;)V

    .line 1107
    return-void
.end method

.method public final getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->getActionList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1118
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionItemInfo;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1100
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1112
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;->obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

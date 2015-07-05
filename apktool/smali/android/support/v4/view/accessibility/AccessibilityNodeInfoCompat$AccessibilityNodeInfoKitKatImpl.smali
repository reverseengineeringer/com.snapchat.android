.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1013
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1037
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1042
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1062
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1067
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1072
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1077
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getLiveRegion(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1003
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1057
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1047
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1082
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1024
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo$50cb9c52(IIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1031
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1018
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1019
    return-void
.end method

.method public final setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1087
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    return-void
.end method

.method public final setLiveRegion(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1008
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    .line 1009
    return-void
.end method

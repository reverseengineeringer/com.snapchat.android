.class public final Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionItemInfoCompat"
.end annotation


# instance fields
.field final mInfo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic access$200(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method private getColumnIndex()I
    .locals 2

    .prologue
    .line 123
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getColumnSpan()I
    .locals 2

    .prologue
    .line 127
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getRowIndex()I
    .locals 2

    .prologue
    .line 131
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getRowSpan()I
    .locals 2

    .prologue
    .line 135
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private isHeading()Z
    .locals 2

    .prologue
    .line 139
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCollectionItemHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSelected()Z
    .locals 2

    .prologue
    .line 143
    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCollectionItemSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 7

    .prologue
    .line 114
    new-instance v6, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    # getter for: Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v6
.end method

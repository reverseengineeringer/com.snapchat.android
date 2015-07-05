.class Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOpaque(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 732
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatEclairMr1;->isOpaque(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final setChildrenDrawingOrderEnabled$4d3af60(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 737
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatEclairMr1;->setChildrenDrawingOrderEnabled$4d3af60(Landroid/view/ViewGroup;)V

    .line 738
    return-void
.end method

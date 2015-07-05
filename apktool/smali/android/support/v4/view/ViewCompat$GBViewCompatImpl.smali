.class Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOverScrollMode(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 744
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final setOverScrollMode$5359dc9a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 748
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatGingerbread;->setOverScrollMode$5359dc9a(Landroid/view/View;)V

    .line 749
    return-void
.end method

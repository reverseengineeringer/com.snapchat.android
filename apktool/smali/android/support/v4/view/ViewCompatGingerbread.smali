.class final Landroid/support/v4/view/ViewCompatGingerbread;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static setOverScrollMode$5359dc9a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 28
    return-void
.end method

.class public final Lapr;
.super Lapq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 17
    const v0, 0x7f0a0298

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a007e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, v0, v1, v2}, Lapq;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 19
    return-void
.end method

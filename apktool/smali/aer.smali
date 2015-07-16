.class public final Laer;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# instance fields
.field public final k:Lcom/snapchat/android/discover/ui/ChannelView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    const v0, 0x7f0a0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    iput-object v0, p0, Laer;->k:Lcom/snapchat/android/discover/ui/ChannelView;

    .line 22
    return-void
.end method

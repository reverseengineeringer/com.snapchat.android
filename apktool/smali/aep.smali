.class public final Laep;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    .line 20
    iput-object p1, p0, Laep;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 5

    .prologue
    const/16 v2, 0x11

    const/4 v3, 0x0

    .line 25
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 28
    check-cast p2, Landroid/widget/FrameLayout;

    .line 29
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 30
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 32
    instance-of v3, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 33
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Laep;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->a(Landroid/graphics/Point;I)V

    iget v0, v4, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget v0, v4, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    :cond_1
    return-void

    .line 33
    :cond_2
    iget-object v0, v3, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;->b:Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup$Layout;->mLayoutFormat:[I

    iget v3, v4, Landroid/graphics/Point;->x:I

    aget v0, v0, v3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v0, v4, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_3

    const v0, 0x800015

    goto :goto_0

    :cond_3
    const v0, 0x800013

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.class final Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lckv;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1, p1}, Lcku;->a(Landroid/support/v7/widget/RecyclerView;)F

    move-result v0

    .line 190
    :cond_0
    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(F)V

    .line 191
    return-void
.end method

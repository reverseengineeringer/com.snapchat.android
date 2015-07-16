.class public final Lclr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lclr;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    .line 22
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lclr;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getSectionIndicator()Lclz;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    :cond_0
    iget-object v0, p0, Lclr;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lclw;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lclw;

    move-result-object v0

    invoke-interface {v0, p2}, Lclw;->a(Landroid/view/MotionEvent;)F

    move-result v0

    move v1, v0

    .line 30
    :goto_0
    iget-object v2, p0, Lclr;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v3, v0

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->d:Lclz;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->d:Lclz;

    invoke-interface {v0, v1}, Lclz;->setProgress(F)V

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v2, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->d:Lclz;

    aget-object v0, v0, v3

    invoke-interface {v2, v0}, Lclz;->setSection(Ljava/lang/Object;)V

    .line 31
    :cond_1
    iget-object v0, p0, Lclr;->a:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->a(F)V

    .line 32
    const/4 v0, 0x1

    return v0

    .line 29
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

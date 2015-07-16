.class public Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;
.super Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;
.source "SourceFile"


# instance fields
.field private f:Lcly;
    .annotation build Lr;
    .end annotation
.end field

.field private g:Lclu;
    .annotation build Lr;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method static synthetic a(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lclt;

    new-instance v1, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$1;

    invoke-direct {v1, p0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$1;-><init>(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)V

    new-instance v2, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;

    invoke-direct {v2, p0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;-><init>(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)V

    invoke-direct {v0, v1, v2}, Lclt;-><init>(Lclt$a;Lclt$a;)V

    .line 72
    new-instance v1, Lclx;

    invoke-direct {v1, v0}, Lclx;-><init>(Lclt;)V

    iput-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->f:Lcly;

    .line 73
    new-instance v1, Lclu;

    invoke-direct {v1, v0}, Lclu;-><init>(Lclt;)V

    iput-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lclu;

    .line 74
    return-void
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lclu;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->b:Landroid/view/View;

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->g:Lclu;

    invoke-virtual {v1, p1}, Lclu;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcls$b;->vertical_recycler_fast_scroller_layout:I

    return v0
.end method

.method protected getScrollProgressCalculator()Lclw;
    .locals 1
    .annotation build Lr;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->f:Lcly;

    return-object v0
.end method

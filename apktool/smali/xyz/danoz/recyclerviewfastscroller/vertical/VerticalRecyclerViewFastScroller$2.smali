.class final Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-static {v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->b(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-static {v1}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->c(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$2;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-static {v1}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->d(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

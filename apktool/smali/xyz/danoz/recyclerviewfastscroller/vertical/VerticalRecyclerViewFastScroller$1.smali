.class final Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclt$a;


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
    .line 60
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$1;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller$1;->a:Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-static {v0}, Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;->a(Lxyz/danoz/recyclerviewfastscroller/vertical/VerticalRecyclerViewFastScroller;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

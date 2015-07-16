.class public final Lbqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StickyListHeadersDecoration can only be used with a LinearLayoutManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

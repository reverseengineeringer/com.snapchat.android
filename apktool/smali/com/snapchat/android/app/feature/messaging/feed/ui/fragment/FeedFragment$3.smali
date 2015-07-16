.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;
.super Landroid/support/v7/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$j;

.field final synthetic b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

.field final synthetic c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

.field private d:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Landroid/support/v7/widget/RecyclerView$j;Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iput-object p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->a:Landroid/support/v7/widget/RecyclerView$j;

    iput-object p3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->a:Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 532
    if-nez p2, :cond_0

    .line 533
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Z)V

    .line 543
    :goto_0
    iput p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->d:I

    .line 544
    return-void

    .line 536
    :cond_0
    iget v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->d:I

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Z)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->d(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;->c()V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->k(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->a:Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 550
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvm;

    move-result-object v0

    invoke-virtual {v0}, Lvm;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v1

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    .line 553
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->i(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    .line 555
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x5

    if-lt v1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$3;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->l(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvm;

    move-result-object v0

    invoke-virtual {v0}, Lvm;->b()V

    .line 560
    :cond_0
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

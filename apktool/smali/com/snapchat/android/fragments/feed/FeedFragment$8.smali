.class final Lcom/snapchat/android/fragments/feed/FeedFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic b:Lcom/snapchat/android/fragments/feed/FeedFragment;

.field private c:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 501
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 482
    if-nez p2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->s(Lcom/snapchat/android/fragments/feed/FeedFragment;)Laqk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laqk;->a(Z)V

    .line 493
    :goto_0
    iput p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->c:I

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->i(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    .line 496
    return-void

    .line 486
    :cond_0
    iget v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->c:I

    if-nez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->s(Lcom/snapchat/android/fragments/feed/FeedFragment;)Laqk;

    move-result-object v0

    invoke-virtual {v0, v2}, Laqk;->a(Z)V

    .line 488
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbam;

    invoke-direct {v1, v2}, Lbam;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

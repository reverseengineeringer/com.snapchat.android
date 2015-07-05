.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 96
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->scrollChanged(I)V
    invoke-static {v0, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V

    .line 99
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$3;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 87
    :cond_0
    return-void
.end method

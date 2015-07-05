.class final Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


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
    .line 67
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$100(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 71
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->reset()V
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$100(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 76
    return-void
.end method

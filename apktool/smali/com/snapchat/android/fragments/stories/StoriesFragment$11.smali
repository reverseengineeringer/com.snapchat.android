.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1914
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setSelection(I)V

    .line 1916
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1917
    if-eqz v0, :cond_0

    .line 1918
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    .line 1923
    iget-object v2, v0, Lapm;->e:Lorg/lucasr/twowayview/TwoWayView;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lapm;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    iget-object v0, v0, Lapm;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1925
    :cond_2
    return-void
.end method

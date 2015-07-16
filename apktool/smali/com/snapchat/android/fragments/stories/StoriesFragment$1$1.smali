.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$1;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbhr;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 482
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lps$a;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lps$a;->a(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbhr;->a(I)V

    goto :goto_0
.end method

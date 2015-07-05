.class final Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatWithFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lafy;

    move-result-object v0

    invoke-virtual {v0}, Lafy;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

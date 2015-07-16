.class final Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Lahk;

    move-result-object v0

    invoke-virtual {v0}, Lahk;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 119
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Ltc$a;


# instance fields
.field private a:Latw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latw",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/BaseAdapter;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-virtual {v0}, Latw;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 99
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 101
    iput-boolean p1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Latw;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 130
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    iget-object v2, v1, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->s()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, v1, Lakc;->mIterToken:Ljava/lang/String;

    invoke-virtual {v1}, Lakc;->d()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lakc;->f()V

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 141
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    const v0, 0x7f040037

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->mFragmentLayout:Landroid/view/View;

    .line 40
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    iget-object v0, v0, Lakc;->mConversationsForListView:Latw;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-static {v0, v1}, Lagm;->a(Landroid/content/Context;Latw;)Lagm;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    .line 43
    const v0, 0x7f0a0158

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0156

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-virtual {v0}, Latw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUpdateFeedEvent(Lben;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-virtual {v0}, Latw;->clear()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v3

    invoke-virtual {v3}, Lakc;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Latw;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Latw;

    invoke-virtual {v0}, Latw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 117
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 125
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 122
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public final w_()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 158
    :cond_0
    return-void
.end method

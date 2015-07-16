.class public Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field protected a:Lakp;

.field private final b:Landroid/support/v7/widget/RecyclerView$c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$h;

.field private g:Lahi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$c;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 23
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    invoke-virtual {v0}, Lahi;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 2
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    invoke-virtual {v1}, Lakp;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 123
    :cond_1
    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->i()V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 62
    const v0, 0x7f04000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->mFragmentLayout:Landroid/view/View;

    .line 64
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    .line 68
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 70
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->f:Landroid/support/v7/widget/RecyclerView$h;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->f:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 72
    new-instance v0, Lahi;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lahi;-><init>(Landroid/content/Context;Ljava/util/List;Lakr;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Lahi;->a(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lahi;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Lahi;->b(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 88
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbfq;->user:Lakp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p1, Lbfq;->user:Lakp;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lakp;

    .line 134
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->i()V

    .line 136
    :cond_0
    return-void
.end method

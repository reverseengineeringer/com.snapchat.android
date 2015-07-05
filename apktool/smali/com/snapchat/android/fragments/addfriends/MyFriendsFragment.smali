.class public Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected final B()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final a(Lajv;)V
    .locals 4
    .param p1    # Lajv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    invoke-virtual {p1}, Lajv;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 169
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method protected final b(Lajv;)V
    .locals 3
    .param p1    # Lajv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->a(Lajv;)V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p1, Lajv;->mBests:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 157
    return-void
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->w()V

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->q()V

    .line 188
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f0c0177

    return v0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v3, v4}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    iput-boolean v1, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->c:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v3

    iget-object v0, v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->e:Z

    iget-object v0, v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v0, v4, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->f:Z

    iput-boolean v1, v3, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->h:Z

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbbd;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbbd;)V

    .line 229
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 79
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 80
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->i:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 81
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$b;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$b;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0c0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    new-instance v1, Lafn;

    invoke-direct {v1}, Lafn;-><init>()V

    iput-object v1, v0, Lafa;->e:Lafe;

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    iput-boolean v4, v0, Lafa;->g:Z

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    iput-boolean v4, v0, Lafa;->h:Z

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->u:Landroid/widget/TextView;

    const v1, 0x7f0c0186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selected_friend_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "MyFriendsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restorePreviousSelectionStatus() selected_friend_username: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selectedFriendIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    invoke-virtual {v0, v1}, Lafa;->a(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;I)V

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    return-object v3

    .line 95
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onFriendProfileUpdateCompleteEvent(Lbbo;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 223
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbcx;)V

    .line 207
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 213
    if-eqz v0, :cond_0

    iget-object v1, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lafa;

    invoke-virtual {v1, v0}, Lafa;->a(Lcom/snapchat/android/model/Friend;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->C()V

    goto :goto_0
.end method

.method protected final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FOR_MY_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

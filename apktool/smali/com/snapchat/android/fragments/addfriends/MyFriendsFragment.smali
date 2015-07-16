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
    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    .line 63
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
    .line 67
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final B()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    return-void

    .line 194
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final a(Lakp;)V
    .locals 4
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    invoke-virtual {p1}, Lakp;->o()Ljava/util/List;

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

    .line 170
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method protected final a(Lkf;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 233
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0, v7}, Laga;->a(Z)I

    move-result v2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v3, v7}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v4, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v4, v7}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v4

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v5, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v5, v7}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v5

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v6, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v6, v7}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v6

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0, v12}, Laga;->a(Z)I

    move-result v7

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v8, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v8, v12}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v8

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v9, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v9, v12}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v9

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v10, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v10, v12}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v10

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    sget-object v11, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v11, v12}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v11

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;IIIIIIIIIII)V

    .line 245
    return-void
.end method

.method protected final b(Lakp;)V
    .locals 3
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->a(Lakp;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p1, Lakp;->mBests:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 158
    return-void
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->w()V

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->q()V

    .line 189
    return-void
.end method

.method public final j_()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f0c0177

    return v0
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
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

.method public onContactsOnSnapchatUpdatedEvent(Lbcd;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbcd;)V

    .line 230
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 80
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 81
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->i:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$a;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 82
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$b;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$b;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0c0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    new-instance v1, Lagn;

    invoke-direct {v1}, Lagn;-><init>()V

    iput-object v1, v0, Laga;->f:Lage;

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    iput-boolean v3, v0, Laga;->h:Z

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    iput-boolean v3, v0, Laga;->i:Z

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->v:Landroid/widget/TextView;

    const v1, 0x7f0c0186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selected_friend_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "restorePreviousSelectionStatus() selected_friend_username: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " selectedFriendIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0, v1}, Laga;->a(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;I)V

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-object v2

    .line 96
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onFriendProfileUpdateCompleteEvent(Lbco;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbdx;)V

    .line 208
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 214
    if-eqz v0, :cond_0

    iget-object v1, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 215
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Laga;

    invoke-virtual {v1, v0}, Laga;->a(Lcom/snapchat/android/model/Friend;)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->C()V

    goto :goto_0
.end method

.method protected final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
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

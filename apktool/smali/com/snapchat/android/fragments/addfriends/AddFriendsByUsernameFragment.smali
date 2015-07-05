.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->G()V

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->q()V

    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->w()V

    .line 46
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0c001f

    return v0
.end method

.method protected final m()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbbd;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbbd;)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 28
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->m:Landroid/widget/TextView;

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->q:Landroid/widget/EditText;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 32
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Lafa;

    iput-boolean v6, v1, Lafa;->f:Z

    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->F()V

    .line 39
    return-object v0
.end method

.method public onFriendProfileUpdateCompleteEvent(Lbbo;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbcx;)V

    .line 68
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->C()V

    goto :goto_0
.end method

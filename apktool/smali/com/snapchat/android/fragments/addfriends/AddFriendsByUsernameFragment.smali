.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lkf;)V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Laga;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v0

    new-instance v1, Lkk;

    invoke-direct {v1}, Lkk;-><init>()V

    iput-object p1, v1, Lkk;->exitEvent:Lkf;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lkk;->friendAddCount:Ljava/lang/Long;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 98
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->G()V

    .line 63
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->a(Lkf;)V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->q()V

    .line 47
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->w()V

    .line 48
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0c001f

    return v0
.end method

.method protected final m()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbcd;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbcd;)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 30
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->m:Landroid/widget/TextView;

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->q:Landroid/widget/EditText;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 34
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Laga;

    iput-boolean v6, v1, Laga;->g:Z

    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->F()V

    .line 41
    return-object v0
.end method

.method public onFriendProfileUpdateCompleteEvent(Lbco;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbdx;)V

    .line 71
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->C()V

    goto :goto_0
.end method

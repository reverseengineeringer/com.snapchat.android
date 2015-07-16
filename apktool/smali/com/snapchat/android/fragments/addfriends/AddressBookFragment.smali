.class public Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    .line 36
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
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final D()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->B:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    return-void
.end method

.method protected final E()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->B:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method protected final a(Lkf;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 132
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 135
    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 136
    sget-object v5, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$2;->b:[I

    invoke-virtual {v0}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 145
    goto :goto_0

    .line 138
    :pswitch_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 146
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    sget-object v5, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v4, v5, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    sget-object v6, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v5, v6, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    sget-object v7, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6, v7, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v2

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    sget-object v7, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6, v7, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v6

    sget-object v7, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-ne v0, v7, :cond_2

    new-instance v0, Lix;

    invoke-direct {v0}, Lix;-><init>()V

    iput-object p1, v0, Lix;->exitEvent:Lkf;

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lix;->snapchatterCount:Ljava/lang/Long;

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lix;->nonSnapchatterCount:Ljava/lang/Long;

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lix;->snapchatterAddCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lix;->nonSnapchatterInviteCount:Ljava/lang/Long;

    int-to-long v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lix;->snapchatterAddInSearchCount:Ljava/lang/Long;

    int-to-long v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lix;->nonSnapchatterInviteInSearchCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 152
    :cond_1
    :goto_2
    return-void

    .line 146
    :cond_2
    sget-object v7, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-ne v0, v7, :cond_1

    new-instance v0, Ljo;

    invoke-direct {v0}, Ljo;-><init>()V

    iput-object p1, v0, Ljo;->exitEvent:Lkf;

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Ljo;->snapchatterCount:Ljava/lang/Long;

    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljo;->nonSnapchatterCount:Ljava/lang/Long;

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljo;->snapchatterAddCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljo;->nonSnapchatterInviteCount:Ljava/lang/Long;

    int-to-long v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljo;->snapchatterAddInSearchCount:Ljava/lang/Long;

    int-to-long v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljo;->nonSnapchatterInviteInSearchCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_2

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;)V

    return-object v0
.end method

.method protected final l()I
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    const v0, 0x7f0c0033

    :goto_0
    return v0

    .line 74
    :pswitch_0
    const v0, 0x7f0c0136

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbcd;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbcd;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    new-instance v0, Lahr;

    invoke-direct {v0}, Lahr;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Laho;

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Laho;

    invoke-virtual {v0}, Laho;->b()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Laho;

    invoke-virtual {v0}, Laho;->a()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    iput-boolean v2, v1, Laga;->j:Z

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Laga;

    iput-boolean v2, v1, Laga;->h:Z

    .line 54
    return-object v0
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbdx;)V

    .line 100
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshOnFriendActionEvent(Lbdw;)V

    .line 93
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onUserLoadedEvent(Lbfq;)V

    .line 107
    return-void
.end method

.method protected final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FOR_ADDRESS_BOOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

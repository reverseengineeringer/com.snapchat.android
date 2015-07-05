.class public Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;
.super Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Lajv;

.field private final c:Lajx;

.field private final m:Laol;

.field private final n:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lbfy;->a()Lbfy;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>(Lajx;Laol;Ljavax/inject/Provider;Lbfy;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lajx;Laol;Ljavax/inject/Provider;Lbfy;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajx;",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lbfy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Lbfy;)V

    .line 74
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Lajx;

    .line 75
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Laol;

    .line 76
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lq;
        .end annotation
    .end param

    .prologue
    .line 253
    invoke-static {p1}, Lajv;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method protected final e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-static {}, Lnf;->d()V

    .line 110
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 112
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Laol;

    invoke-virtual {v0}, Laol;->d()I

    .line 120
    :goto_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 121
    invoke-static {}, Lnf;->e()V

    .line 122
    return-void

    .line 118
    :cond_0
    const-string v0, "AddedMeFragment"

    const-string v1, "User is not loaded yet. Need to update snaps when the user is loaded."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 5

    .prologue
    .line 126
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    .line 127
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lafa;

    invoke-virtual {v0}, Lafa;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {v2}, Lajv;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-wide v0, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lajx;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Laol;

    invoke-virtual {v0}, Laol;->d()I

    .line 128
    :cond_2
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f04007e

    return v0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;)V

    return-object v0
.end method

.method protected final l()Lafe;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Lafk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lafk;-><init>(Z)V

    return-object v0
.end method

.method protected final m()V
    .locals 9

    .prologue
    const v8, 0x7f0a007e

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 198
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    invoke-virtual {v0}, Lajv;->h()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->l:Ljava/util/List;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 204
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Lajv;->a(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const-string v1, "AddedMeFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshFriendList - LastSeenAddedMeTimestamp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->j()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Total # of FriendsWhoAddedMe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    invoke-virtual {v3}, Lajv;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of FriendsWhoAddedMe for display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of NewFriendRequests (should be same with the one in Profile Page): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lafa;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-nez v0, :cond_3

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v7}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v0

    iput-boolean v3, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->l:Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lnf;->d()V

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 85
    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c001a

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->DISAPPOINTED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m()V

    .line 92
    invoke-static {}, Lnf;->e()V

    .line 93
    return-object v1
.end method

.method public onFriendsProfileImageLoadedEvent(Lbbn;)V
    .locals 9
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 143
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbbn;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_0
    const-string v0, "AddedMeFragment"

    const-string v1, "friends profile images - invalid FriendProfileImagesLoadedEvent posted!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    const-string v0, "AddedMeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - start processing FriendProfileImagesLoadedEvent for friend: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lbbn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    iget-object v2, p1, Lbbn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 155
    if-eqz v0, :cond_4

    .line 156
    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 159
    const v2, 0x7f0a0052

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 160
    const v3, 0x7f0a0050

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lbfy;

    iget-object v5, p1, Lbbn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lbfy;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 162
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 164
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 165
    const/16 v3, 0xc8

    invoke-virtual {v5, v7, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 169
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 171
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    const-string v0, "AddedMeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - FriendProfileImagesLoadedEvent\'s been processed for friend:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lbbn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbcw;)V

    .line 231
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p1, Lber;->user:Lajv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p1, Lber;->user:Lajv;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lajv;

    .line 135
    const-string v0, "AddedMeFragment"

    const-string v1, "Update snaps because this fragment has not updated snaps since it became visible."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Laol;

    invoke-virtual {v0}, Laol;->d()I

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m()V

    .line 139
    return-void
.end method

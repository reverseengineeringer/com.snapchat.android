.class public Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;
.super Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Lakp;

.field private final c:Lakr;

.field private final n:Laph;

.field private final o:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lbgy;->a()Lbgy;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>(Lakr;Laph;Ljavax/inject/Provider;Lbgy;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lakr;Laph;Ljavax/inject/Provider;Lbgy;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr;",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lbgy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;Lbgy;)V

    .line 76
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Lakr;

    .line 77
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n:Laph;

    .line 78
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->o:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method protected final a(Lkf;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 285
    .line 286
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    monitor-enter v3

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 288
    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v5, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_ADDED_ME_BACK:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-eq v0, v5, :cond_1

    .line 289
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 291
    goto :goto_0

    .line 292
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    sget-object v4, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v3, v4, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    sget-object v5, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v4, v5, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    sget-object v6, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v5, v6, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    sget-object v7, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6, v7, v2}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v2

    new-instance v6, Lip;

    invoke-direct {v6}, Lip;-><init>()V

    iput-object p1, v6, Lip;->exitEvent:Lkf;

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->totalRequestCount:Ljava/lang/Long;

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->newRequestCount:Ljava/lang/Long;

    int-to-long v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->requestAcceptCount:Ljava/lang/Long;

    int-to-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->requestBlockCount:Ljava/lang/Long;

    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->requestIgnoreCount:Ljava/lang/Long;

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lip;->requestNameEditCount:Ljava/lang/Long;

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 299
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lq;
        .end annotation
    .end param

    .prologue
    .line 255
    invoke-static {p1}, Lakp;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    return v0
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lnw;->d()V

    .line 112
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 114
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n:Laph;

    invoke-virtual {v0}, Laph;->d()I

    .line 120
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 123
    invoke-static {}, Lnw;->e()V

    .line 124
    return-void
.end method

.method protected final f()V
    .locals 5

    .prologue
    .line 128
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    .line 129
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    invoke-virtual {v0}, Laga;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {v2}, Lakp;->q()Ljava/util/List;

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
    invoke-static {v2, v3}, Lakr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n:Laph;

    invoke-virtual {v0}, Laph;->d()I

    .line 130
    :cond_2
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f04007f

    return v0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;)V

    return-object v0
.end method

.method protected final m()Lage;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lagk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lagk;-><init>(Z)V

    return-object v0
.end method

.method protected final n()V
    .locals 9

    .prologue
    const v8, 0x7f0a007e

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 200
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    invoke-virtual {v0}, Lakp;->h()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 206
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Lakp;->a(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshFriendList - LastSeenAddedMeTimestamp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total # of FriendsWhoAddedMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    invoke-virtual {v2}, Lakp;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # of FriendsWhoAddedMe for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # of NewFriendRequests (should be same with the one in Profile Page): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-nez v0, :cond_3

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 208
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 224
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

.method protected final o()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
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
    .line 83
    invoke-static {}, Lnw;->d()V

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 87
    const v0, 0x7f0a02a4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c001a

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->DISAPPOINTED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n()V

    .line 94
    invoke-static {}, Lnw;->e()V

    .line 95
    return-object v1
.end method

.method public onFriendsProfileImageLoadedEvent(Lbcn;)V
    .locals 9
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbcn;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "friends profile images - start processing FriendProfileImagesLoadedEvent for friend: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lbcn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    iget-object v2, p1, Lbcn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    if-eqz v0, :cond_3

    .line 158
    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    const v2, 0x7f0a0053

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 162
    const v3, 0x7f0a0051

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lbgy;

    iget-object v5, p1, Lbcn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lbgy;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 164
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 166
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 167
    const/16 v3, 0xc8

    invoke-virtual {v5, v7, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 171
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 173
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "friends profile images - FriendProfileImagesLoadedEvent\'s been processed for friend:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lbcn;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 151
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbdw;)V

    .line 233
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbfq;->user:Lakp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p1, Lbfq;->user:Lakp;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lakp;

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n:Laph;

    invoke-virtual {v0}, Laph;->d()I

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->n()V

    .line 141
    return-void
.end method

.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;
.super Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Laol;

.field private final n:Lavc;

.field private o:Lafi;

.field private p:Laok;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>(Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Laol;Ljavax/inject/Provider;Lavc;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Lafi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lavc;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            "Lafi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;)V

    .line 59
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p:Laok;

    .line 90
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Laol;

    .line 91
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c:Ljavax/inject/Provider;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Lafa;

    .line 93
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n:Lavc;

    .line 94
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->b:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 95
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->o:Lafi;

    .line 96
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 6

    .prologue
    .line 77
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lavc;->a()Lavc;

    move-result-object v3

    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>(Laol;Ljavax/inject/Provider;Lavc;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Lafi;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Lafa;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 164
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 166
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m()V

    .line 167
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f040004

    return v0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    return-object v0
.end method

.method protected final l()Lafe;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lafm;

    invoke-direct {v0}, Lafm;-><init>()V

    return-object v0
.end method

.method protected final m()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->l:Ljava/util/List;

    sget-object v3, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-static {v0, v3}, Lavc;->a(Lajv;Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->k:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0a005a

    const/16 v3, 0x8

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    const v1, 0x7f0a0056

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0058

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_ADD_NEARBY_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lauc;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Lafa;

    new-instance v2, Lcom/snapchat/android/util/FriendSectionizer$f;

    invoke-direct {v2}, Lcom/snapchat/android/util/FriendSectionizer$f;-><init>()V

    iput-object v2, v1, Lafa;->a:Lcom/snapchat/android/util/FriendSectionizer;

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m()V

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Laol;

    iget-object v2, v1, Laol;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x409

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "action"

    sget-object v4, Lcom/snapchat/android/model/SuggestedFriendAction;->SEEN:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/SuggestedFriendAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Laol;->c:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 114
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->o:Lafi;

    invoke-virtual {v0}, Lafi;->b()V

    .line 183
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbcw;)V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lnf;->d()V

    .line 173
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Laol;

    const/16 v1, 0x409

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 175
    invoke-static {}, Lnf;->e()V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->o:Lafi;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafi;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 177
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p1, Lber;->user:Lajv;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m()V

    .line 190
    :cond_0
    return-void
.end method

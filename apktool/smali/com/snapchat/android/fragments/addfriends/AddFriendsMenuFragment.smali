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
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Laph;

.field private final o:Lawa;

.field private p:Lagi;

.field private q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private r:Lapg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>(Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Laph;Ljavax/inject/Provider;Lawa;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Lagi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lawa;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            "Lagi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;)V

    .line 62
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->r:Lapg;

    .line 93
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n:Laph;

    .line 94
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c:Ljavax/inject/Provider;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Laga;

    .line 96
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->o:Lawa;

    .line 97
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->b:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 98
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p:Lagi;

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lawa;->a()Lawa;

    move-result-object v3

    invoke-static {}, Lagi;->a()Lagi;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>(Laph;Ljavax/inject/Provider;Lawa;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Lagi;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Laga;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 301
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->H()V

    .line 302
    return-void
.end method

.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected final a(Lkf;)V
    .locals 5

    .prologue
    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Laga;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v2

    new-instance v3, Lin;

    invoke-direct {v3}, Lin;-><init>()V

    iput-object p1, v3, Lin;->exitEvent:Lkf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lin;->nextPage:Ljava/lang/String;

    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lin;->suggestFriendCount:Ljava/lang/Long;

    int-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 309
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e()V

    .line 180
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n()V

    .line 183
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 295
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g()Z

    move-result v0

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f040004

    return v0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    return-object v0
.end method

.method protected final l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f040005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final m()Lage;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lagm;

    invoke-direct {v0}, Lagm;-><init>()V

    return-object v0
.end method

.method protected final n()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->m:Ljava/util/List;

    sget-object v3, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-static {v0, v3}, Lawa;->a(Lakp;Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->q()V

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final o()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 269
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
    const v4, 0x7f0a005e

    const/16 v3, 0x8

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->i:Landroid/view/View;

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->i:Landroid/view/View;

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->i:Landroid/view/View;

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->i:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_ADD_NEARBY_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lava;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    const v1, 0x7f0a0058

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->c(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->a:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->g:Laga;

    new-instance v2, Lcom/snapchat/android/util/FriendSectionizer$f;

    invoke-direct {v2}, Lcom/snapchat/android/util/FriendSectionizer$f;-><init>()V

    iput-object v2, v1, Laga;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n()V

    .line 116
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n:Laph;

    iget-object v2, v1, Laph;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x409

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "action"

    sget-object v4, Lcom/snapchat/android/model/SuggestedFriendAction;->SEEN:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/SuggestedFriendAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Laph;->c:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 117
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p:Lagi;

    invoke-virtual {v0}, Lagi;->b()V

    .line 199
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lbdw;)V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lnw;->d()V

    .line 189
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n:Laph;

    const/16 v1, 0x409

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->r:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 191
    invoke-static {}, Lnw;->e()V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->p:Lagi;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagi;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 193
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 203
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbfq;->user:Lakp;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->n()V

    .line 206
    :cond_0
    return-void
.end method

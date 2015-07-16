.class public Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lagj$a;
.implements Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;


# instance fields
.field private a:Lagj;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/view/ViewPager;

.field private final f:Lakr;

.field private final g:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private h:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

.field private i:Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;-><init>(Lakr;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lakr;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Lakr;

    .line 62
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;ZLkf;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(ZLkf;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Z)V

    return-void
.end method

.method private a(ZLkf;)V
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->h:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->h:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->a(Lkf;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->i:Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->i:Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->a(Lkf;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method private static b(Z)V
    .locals 3

    .prologue
    .line 170
    if-eqz p0, :cond_1

    .line 171
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 175
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 179
    return-void

    .line 175
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {}, Lakr;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lakr;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lagj;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lagj;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    return-void

    .line 195
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lakr;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Lakr;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lkf;->SWIPE_LEFT:Lkf;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(ZLkf;)V

    .line 237
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 221
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->h:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    if-nez v0, :cond_1

    .line 222
    check-cast p2, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->h:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->i:Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    if-nez v0, :cond_0

    .line 224
    check-cast p2, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->i:Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    goto :goto_0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Z)V

    .line 167
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lkf;->BACK_BUTTON:Lkf;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(ZLkf;)V

    .line 231
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    .line 67
    invoke-static {}, Lnw;->d()V

    .line 69
    const v0, 0x7f040068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    .line 70
    const v0, 0x7f0a0241

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "selected_friend_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    :goto_0
    new-instance v0, Lagj;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0141

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00d2

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lagj;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;Lagj$a;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lagj;

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lagj;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 85
    const v0, 0x7f0a023d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0a023f

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0a023e

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/view/View;

    .line 88
    const v2, 0x7f0a0240

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/view/View;

    .line 89
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    new-instance v2, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-static {}, Lnw;->e()V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 77
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public refreshOnGrantAccessToContactsEvent(Lbcu;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 215
    iget-boolean v0, p1, Lbcu;->mHasGivenAccessToContacts:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Z)V

    .line 216
    return-void
.end method

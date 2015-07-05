.class public Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Lafj;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/view/ViewPager;

.field private final f:Lajx;

.field private final g:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;-><init>(Lajx;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lajx;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Lcf;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Lajx;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method private static b(Z)V
    .locals 3

    .prologue
    .line 159
    if-eqz p0, :cond_1

    .line 160
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 164
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 168
    return-void

    .line 164
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {}, Lajx;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lajx;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lafj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lafj;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    .line 184
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lajx;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Lajx;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Z)V

    .line 156
    return-void
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f0c0141

    .line 61
    invoke-static {}, Lnf;->d()V

    .line 63
    const v0, 0x7f040067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    .line 64
    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "selected_friend_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    :goto_0
    new-instance v0, Lafj;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct/range {v0 .. v5}, Lafj;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lafj;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lafj;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    const v0, 0x7f0a023f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0a0241

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    const v2, 0x7f0a0240

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/view/View;

    .line 81
    const v2, 0x7f0a0242

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/view/View;

    .line 82
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    .line 84
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    new-instance v2, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-static {}, Lnf;->e()V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0

    .line 71
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public refreshOnGrantAccessToContactsEvent(Lbbu;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 204
    iget-boolean v0, p1, Lbbu;->mHasGivenAccessToContacts:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Z)V

    .line 205
    return-void
.end method

.class public Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# instance fields
.field private final D:Lcom/snapchat/android/analytics/RegistrationAnalytics;

.field private E:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Lcom/snapchat/android/analytics/RegistrationAnalytics;

    move-result-object v1

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>(Ljavax/inject/Provider;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;Lajx;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;Lcom/snapchat/android/analytics/RegistrationAnalytics;Lcom/snapchat/android/ui/window/WindowConfiguration;Lajx;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lcom/snapchat/android/analytics/RegistrationAnalytics;",
            "Lcom/snapchat/android/ui/window/WindowConfiguration;",
            "Lajx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Lcom/snapchat/android/ui/window/WindowConfiguration;Lajx;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->D:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    .line 65
    return-void
.end method

.method private J()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lajv;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(I)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->K()V

    .line 253
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->n()V

    .line 257
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->E:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->startActivity(Landroid/content/Intent;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->E:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 263
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->D:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lafa;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lafa;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->J()V

    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A()V

    .line 281
    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 282
    return-void
.end method

.method final a(ZI)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 217
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajv;->p()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->E:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    const v1, 0x7f0c0271

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    const v1, 0x7f0c02e3

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    const v1, 0x7f0c0180

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->J()V

    goto :goto_0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->m()V

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(ZI)V

    move v0, v1

    .line 210
    goto :goto_0
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u()V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lajx;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->v()V

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lkc;

    invoke-direct {v0}, Lkc;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 142
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->w()V

    goto :goto_0
.end method

.method protected final n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    return-object v0
.end method

.method protected final o()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f020259

    return v0
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbbd;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbbd;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->E:Landroid/support/v4/app/FragmentActivity;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 76
    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->e:Lagr;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->e:Lagr;

    invoke-virtual {v0}, Lagr;->b()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->e:Lagr;

    invoke-virtual {v0}, Lagr;->a()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->p()V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const-string v0, "REGISTER_ADD_FRIENDS"

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbcx;)V

    .line 115
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshOnFriendActionEvent(Lbcw;)V

    .line 127
    return-void
.end method

.method protected final w()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w()V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->A:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->A:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->A:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method protected final y()V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->A()V

    .line 275
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->K()V

    .line 276
    return-void
.end method

.method protected final z()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z()V

    .line 268
    new-instance v0, Lke;

    invoke-direct {v0}, Lke;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 269
    return-void
.end method

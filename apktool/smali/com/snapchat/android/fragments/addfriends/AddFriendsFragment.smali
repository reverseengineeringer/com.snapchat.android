.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lafa$a;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;
.implements Lpb$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/Button;

.field B:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private D:Laol;

.field private final E:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final F:Lpb$a;

.field private G:I

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/view/View;

.field private M:Laok;

.field private N:Landroid/database/DataSetObserver;

.field protected a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

.field public b:Lcom/snapchat/android/util/FriendSectionizer;

.field public c:Lcom/snapchat/android/util/FriendSectionizer;

.field public d:Lafa;

.field public e:Lagr;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field protected h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

.field public final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lajx;

.field protected k:Landroid/view/View;

.field protected l:Landroid/view/View;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/view/View;

.field protected o:Landroid/view/View;

.field protected p:Z

.field protected q:Landroid/widget/EditText;

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field public t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected u:Landroid/widget/TextView;

.field protected v:Landroid/widget/TextView;

.field protected w:Landroid/widget/TextView;

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/widget/TextView;

.field protected z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Laol;Ljavax/inject/Provider;Lcom/snapchat/android/ui/window/WindowConfiguration;Lajx;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lcom/snapchat/android/ui/window/WindowConfiguration;",
            "Lajx;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 84
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 87
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$b;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$b;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 88
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$a;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$a;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lpb$a;

    invoke-direct {v0, p0}, Lpb$a;-><init>(Lpb$b;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Lpb$a;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    .line 136
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 139
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Laok;

    .line 154
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    .line 177
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Laol;

    .line 178
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Ljavax/inject/Provider;

    .line 179
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->j:Lajx;

    .line 180
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 181
    new-instance v0, Lagr;

    invoke-direct {v0}, Lagr;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Lagr;

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Lcom/snapchat/android/ui/window/WindowConfiguration;Lajx;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 170
    return-void
.end method

.method private static J()Z
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    .locals 2

    .prologue
    .line 469
    :goto_0
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 489
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    return-object v0

    .line 471
    :pswitch_0
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {}, Lajx;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_1

    .line 475
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->CONTACTS_ACCESS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-static {}, Lajx;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_1

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private L()V
    .locals 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 498
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 503
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 505
    :cond_0
    return-void
.end method

.method private M()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()Z
    .locals 2

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 914
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 915
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 916
    return-void

    :cond_0
    move v0, v1

    .line 915
    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 345
    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Laol;->a(Landroid/content/Context;ZZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()V

    .line 349
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    return v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 761
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->f(Z)V

    .line 764
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Lcom/snapchat/android/analytics/ProfileEventAnalytics;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c014c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0195

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0119

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Landroid/widget/TextView;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 610
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->H()V

    .line 611
    return-void
.end method

.method protected B()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 633
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 635
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 641
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 657
    const-string v4, "AddFriendsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has empty address book, with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " friends"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->g()V

    .line 660
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    :goto_2
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_6

    .line 668
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 669
    return-void

    :cond_2
    move v0, v1

    .line 633
    goto/16 :goto_0

    .line 645
    :cond_3
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 649
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 662
    :cond_5
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v2, v1

    .line 666
    goto :goto_3

    :cond_7
    move v1, v3

    .line 668
    goto :goto_4
.end method

.method protected final C()V
    .locals 2

    .prologue
    .line 683
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 684
    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v1, :cond_1

    .line 687
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lajv;)V

    .line 692
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 693
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lajv;)V

    goto :goto_1
.end method

.method protected D()V
    .locals 1

    .prologue
    .line 754
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    .line 755
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->e()V

    .line 756
    return-void
.end method

.method protected E()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->c()V

    .line 785
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 786
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 788
    :cond_0
    return-void
.end method

.method protected final F()V
    .locals 2

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    .line 848
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    iput-object v1, v0, Lafa;->a:Lcom/snapchat/android/util/FriendSectionizer;

    .line 853
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 854
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 855
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 858
    return-void
.end method

.method protected final G()V
    .locals 4

    .prologue
    .line 919
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 920
    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v3, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v2, v3, :cond_0

    .line 921
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0

    .line 924
    :cond_1
    return-void
.end method

.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method protected a(Lajv;)V
    .locals 2
    .param p1    # Lajv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 673
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Lagr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lagr;->b(Lajv;Ljava/util/ArrayList;)V

    .line 674
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lafl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 911
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    .line 898
    return-void
.end method

.method protected b(Lajv;)V
    .locals 2
    .param p1    # Lajv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 679
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Lagr;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lagr;->a(Lajv;Ljava/util/ArrayList;)V

    .line 680
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    return v0
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 736
    invoke-static {}, Lnf;->d()V

    .line 737
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Z)V

    .line 742
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D()V

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 747
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 749
    invoke-static {}, Lnf;->e()V

    .line 750
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 770
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m()V

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Z)V

    .line 778
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E()V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    .line 780
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m()V

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()V

    .line 423
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w()V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 441
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w()V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-eq v0, v1, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()V

    goto :goto_0

    .line 430
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u()V

    goto :goto_1

    .line 435
    :pswitch_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()V

    goto :goto_1

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected l()I
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 459
    const v0, 0x7f0c001f

    :goto_0
    return v0

    .line 455
    :pswitch_0
    const v0, 0x7f0c0137

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 870
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    .line 871
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iput v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:I

    .line 876
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    iput-object v1, v0, Lafa;->a:Lcom/snapchat/android/util/FriendSectionizer;

    .line 880
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    iput-boolean v2, v0, Lafa;->j:Z

    .line 881
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 882
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G()V

    .line 883
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 885
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 886
    return-void
.end method

.method public n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x7f02012c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 701
    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 703
    :cond_0
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbbd;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 731
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 732
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 186
    invoke-static {}, Lnf;->d()V

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 190
    const v0, 0x7f040001

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    .line 192
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    const-string v2, "hide_action_bar"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()V

    .line 199
    :cond_0
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0188

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-static {v2}, Lavh;->e(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 202
    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    .line 203
    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    .line 204
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    .line 205
    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Landroid/view/View;

    .line 207
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    .line 217
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()V

    .line 219
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-static {v0}, Latj;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    new-instance v0, Lafa;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    new-instance v5, Lafk;

    invoke-direct {v5, v9}, Lafk;-><init>(Z)V

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Ljavax/inject/Provider;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v7

    invoke-static {}, Lbfy;->a()Lbfy;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lafa;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lafa$a;Lafe;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbfy;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    .line 228
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v9}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 234
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 236
    invoke-static {}, Lnf;->e()V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 358
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Laol;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 361
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 721
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 710
    iget-object v0, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 711
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_1

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lnf;->d()V

    .line 336
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Laol;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 341
    invoke-static {}, Lnf;->e()V

    .line 342
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lafa;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 331
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lafa;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lafa;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 367
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Lpb$a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb$a;->a(Ljava/lang/String;)V

    .line 905
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 906
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 726
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    return-void
.end method

.method protected final q()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 386
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 407
    return-void
.end method

.method public final s_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 808
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string v0, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    return-object v0
.end method

.method public final u()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 508
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 511
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 512
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 516
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->isInLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 518
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    iget-object v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 519
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 521
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 523
    :cond_1
    iput-boolean v4, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    iget-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iput-object p0, v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;

    .line 526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->f(Z)V

    .line 527
    return-void
.end method

.method public final v()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D()V

    .line 551
    return-void
.end method

.method public w()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 556
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    return-void

    :cond_0
    move v0, v1

    .line 556
    goto :goto_0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    return v0
.end method

.method public y()V
    .locals 4

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A()V

    .line 598
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onProfileContactPermissionDeny  - Unknown context "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    :goto_0
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->CONTACTS_ACCESS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 601
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 602
    return-void

    .line 598
    :pswitch_1
    new-instance v0, Lii;

    invoke-direct {v0}, Lii;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Liy;

    invoke-direct {v0}, Liy;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public z()V
    .locals 4

    .prologue
    .line 605
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->G()V

    .line 606
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "ProfileEventAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onProfileContactPermissionGrant  - Unknown context "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :goto_0
    return-void

    .line 606
    :pswitch_1
    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Liz;

    invoke-direct {v0}, Liz;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

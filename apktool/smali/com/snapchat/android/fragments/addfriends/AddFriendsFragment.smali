.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Laga$a;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;
.implements Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;
.implements Lps$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    }
.end annotation


# instance fields
.field protected A:Landroid/widget/TextView;

.field public B:Landroid/widget/Button;

.field C:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private E:Laph;

.field private final F:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final G:Lps$a;

.field private H:I

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/widget/TextView;

.field private M:Lapg;

.field private N:Landroid/database/DataSetObserver;

.field protected a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

.field public b:Lcom/snapchat/android/util/FriendSectionizer;

.field public c:Lcom/snapchat/android/util/FriendSectionizer;

.field public d:Laga;

.field public e:Laho;

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
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lakr;

.field protected k:Landroid/view/View;

.field protected l:Landroid/view/View;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/view/View;

.field protected o:Landroid/view/View;

.field protected p:Z

.field protected q:Landroid/widget/EditText;

.field protected r:Landroid/view/View;

.field protected s:Landroid/view/View;

.field protected t:Landroid/view/View;

.field public u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected v:Landroid/widget/TextView;

.field protected w:Landroid/widget/TextView;

.field protected x:Landroid/widget/TextView;

.field protected y:Landroid/widget/TextView;

.field protected z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ui/window/WindowConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Laph;Ljavax/inject/Provider;Lcom/snapchat/android/ui/window/WindowConfiguration;Lakr;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lcom/snapchat/android/ui/window/WindowConfiguration;",
            "Lakr;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 86
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 89
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$b;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$b;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 90
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$a;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$a;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lps$a;

    invoke-direct {v0, p0}, Lps$a;-><init>(Lps$b;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:Lps$a;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    .line 138
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 141
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Lapg;

    .line 156
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    .line 179
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Laph;

    .line 180
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Ljavax/inject/Provider;

    .line 181
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->j:Lakr;

    .line 182
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 183
    new-instance v0, Laho;

    invoke-direct {v0}, Laho;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Laho;

    .line 184
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
    .line 170
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;Lcom/snapchat/android/ui/window/WindowConfiguration;Lakr;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 172
    return-void
.end method

.method private static L()Z
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    .locals 2

    .prologue
    .line 475
    :goto_0
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 495
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    return-object v0

    .line 477
    :pswitch_0
    invoke-static {}, Lakr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lakr;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_1

    .line 481
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->CONTACTS_ACCESS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-static {}, Lakr;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_1

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private N()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 508
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 509
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 511
    :cond_0
    return-void
.end method

.method private O()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->d()Ljava/lang/String;

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

.method private P()Z
    .locals 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 930
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    return-void

    :cond_0
    move v0, v1

    .line 930
    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Laph;->a(Landroid/content/Context;ZZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()V

    .line 353
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    return v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 773
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->f(Z)V

    .line 776
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Lcom/snapchat/android/analytics/ProfileEventAnalytics;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 3

    .prologue
    .line 68
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

    const v1, 0x7f0c0118

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 625
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Landroid/widget/TextView;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 628
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    return-void
.end method

.method protected B()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 645
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 647
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->O()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 648
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 653
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/TextView;

    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->P()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has empty address book, with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " friends"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->g()V

    .line 672
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    :goto_2
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_6

    .line 680
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 681
    return-void

    :cond_2
    move v0, v1

    .line 645
    goto/16 :goto_0

    .line 657
    :cond_3
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 661
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 674
    :cond_5
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v2, v1

    .line 678
    goto :goto_3

    :cond_7
    move v1, v3

    .line 680
    goto :goto_4
.end method

.method protected final C()V
    .locals 2

    .prologue
    .line 695
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 696
    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lakp;)V

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 705
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lakp;)V

    goto :goto_1
.end method

.method protected D()V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    .line 767
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->e()V

    .line 768
    return-void
.end method

.method protected E()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->c()V

    .line 797
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 798
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 800
    :cond_0
    return-void
.end method

.method protected final F()V
    .locals 2

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    .line 860
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    iput-object v1, v0, Laga;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 865
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 866
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 867
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 870
    return-void
.end method

.method protected final G()V
    .locals 4

    .prologue
    .line 935
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

    .line 936
    iget-object v2, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v3, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v2, v3, :cond_0

    .line 937
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0

    .line 940
    :cond_1
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 944
    sget-object v0, Lkf;->SWIPE_LEFT:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lkf;)V

    .line 945
    return-void
.end method

.method public final a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method protected a(Lakp;)V
    .locals 2
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 685
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Laho;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Laho;->b(Lakp;Ljava/util/ArrayList;)V

    .line 686
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lagl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 925
    return-void
.end method

.method protected a(Lkf;)V
    .locals 0

    .prologue
    .line 949
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    .line 910
    return-void
.end method

.method protected b(Lakp;)V
    .locals 2
    .param p1    # Lakp;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 691
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Laho;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Laho;->a(Lakp;Ljava/util/ArrayList;)V

    .line 692
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    return v0
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lnw;->d()V

    .line 749
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 752
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Z)V

    .line 754
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D()V

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 761
    invoke-static {}, Lnw;->e()V

    .line 762
    return-void

    .line 752
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 780
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 782
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m()V

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Z)V

    .line 790
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;

    .line 792
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lkf;)V

    .line 376
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m()V

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()V

    .line 429
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w()V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 447
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w()V

    .line 452
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->PHONE_VERIFICATION:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-eq v0, v1, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N()V

    goto :goto_0

    .line 436
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u()V

    goto :goto_1

    .line 441
    :pswitch_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()V

    goto :goto_1

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j_()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method protected l()I
    .locals 2

    .prologue
    .line 458
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    const v0, 0x7f0c001f

    :goto_0
    return v0

    .line 461
    :pswitch_0
    const v0, 0x7f0c0136

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public m()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 882
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iput v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:I

    .line 888
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    iput-object v1, v0, Laga;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    iput-boolean v2, v0, Laga;->k:Z

    .line 893
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 894
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G()V

    .line 895
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 897
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 898
    return-void
.end method

.method public n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f02012c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 712
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 713
    new-instance v0, Liz;

    invoke-direct {v0}, Liz;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 715
    :cond_0
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbcd;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 743
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 744
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 188
    invoke-static {}, Lnw;->d()V

    .line 190
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 192
    const v0, 0x7f040001

    invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    .line 194
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    const-string v2, "hide_action_bar"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()V

    .line 201
    :cond_0
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0188

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-static {v2}, Lawf;->e(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 204
    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    .line 205
    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    .line 206
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Landroid/view/View;

    .line 207
    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/view/View;

    .line 209
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->w:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A:Landroid/widget/TextView;

    .line 219
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N()V

    .line 221
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 225
    new-instance v0, Laga;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    new-instance v5, Lagk;

    invoke-direct {v5, v9}, Lagk;-><init>(Z)V

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Ljavax/inject/Provider;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v7

    invoke-static {}, Lbgy;->a()Lbgy;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Laga;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Laga$a;Lage;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbgy;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    .line 230
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v9}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 236
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 238
    invoke-static {}, Lnw;->e()V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 362
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Laph;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 365
    return-void
.end method

.method public onRefreshFriendExistsTask(Lbdx;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 733
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbdw;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 722
    iget-object v0, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 723
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 728
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lnw;->d()V

    .line 340
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Laph;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 345
    invoke-static {}, Lnw;->e()V

    .line 346
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Laga;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 335
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Laga;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Laga;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 371
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:Lps$a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lps$a;->a(Ljava/lang/String;)V

    .line 917
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_1

    .line 918
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 920
    :cond_1
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 738
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method protected final q()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 391
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ADD_FRIENDS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final q_()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    return v0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 413
    return-void
.end method

.method public final r_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 820
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const-string v0, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    return-object v0
.end method

.method public final u()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 514
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 523
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->isInLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 525
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    iget-object v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mWindowConfiguration:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 526
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 528
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 530
    :cond_1
    iput-boolean v4, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    iget-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iput-object p0, v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$a;

    .line 533
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->f(Z)V

    .line 534
    return-void
.end method

.method public final v()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D()V

    .line 559
    return-void
.end method

.method public w()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 563
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    return-void

    :cond_0
    move v0, v1

    .line 564
    goto :goto_0
.end method

.method public x()V
    .locals 3

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->z()V

    .line 609
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileContactPermissionDeny  - Unknown context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    :goto_0
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->CONTACTS_ACCESS:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 612
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 613
    return-void

    .line 609
    :pswitch_1
    new-instance v0, Lit;

    invoke-direct {v0}, Lit;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljk;

    invoke-direct {v0}, Ljk;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public y()V
    .locals 3

    .prologue
    .line 616
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->G()V

    .line 617
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileContactPermissionGrant  - Unknown context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    :goto_0
    return-void

    .line 617
    :pswitch_1
    new-instance v0, Liu;

    invoke-direct {v0}, Liu;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljl;

    invoke-direct {v0}, Ljl;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

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
    .locals 0

    .prologue
    .line 621
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->H()V

    .line 622
    return-void
.end method

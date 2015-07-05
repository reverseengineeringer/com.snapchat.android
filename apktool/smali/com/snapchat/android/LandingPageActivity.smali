.class public Lcom/snapchat/android/LandingPageActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"

# interfaces
.implements Lari;
.implements Lbfa;
.implements Lcom/snapchat/android/util/fragment/SnapchatFragment$a;
.implements Lvb;


# annotations
.annotation build Lavl;
.end annotation


# static fields
.field static i:Lcom/snapchat/android/util/chat/SecureChatService;

.field private static t:Lcom/snapchat/android/LandingPageActivity;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lauu;

.field private D:Laez;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lys;

.field private final I:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final J:Lnf;

.field private final K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final L:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final M:Lnj;

.field private final N:Lauw;

.field private final O:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final P:Ladj;

.field private final Q:Lyf;

.field private final R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

.field private final S:Lahr;

.field private final T:Lahq;

.field private final U:Lanw;

.field private final V:Lcom/snapchat/android/util/TitleBarManager;

.field private final W:Lnn;

.field private final X:Lni;

.field private final Y:Lbaa;

.field private final Z:Laol;

.field protected a:Lcom/snapchat/android/util/SnapchatViewPager;

.field private final aa:Latm;

.field private ab:Lalx;

.field private ac:Landroid/view/ViewStub;

.field private ad:Lvf;

.field private ae:Lcom/snapchat/android/ui/CustomVolumeView;

.field private af:Lcom/snapchat/android/ui/SnapView;

.field private ag:Z

.field private ah:Z

.field private final ai:Ljava/lang/Runnable;

.field private aj:Landroid/os/Handler;

.field private ak:Landroid/content/ServiceConnection;

.field protected b:I

.field protected c:Lbdj;

.field protected d:Lbcz;

.field protected e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

.field protected f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

.field protected g:Laex;

.field h:Landroid/app/ProgressDialog;

.field public j:Labh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Lapd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected l:Lbez;

.field protected m:Lyt;

.field protected n:Lyv;

.field protected o:Laux;

.field protected p:Laup;

.field public final q:Lcom/snapchat/android/analytics/NotificationAnalytics;

.field protected r:Lcom/squareup/otto/Bus;

.field public s:Lma;

.field private final u:Lme;

.field private v:Z

.field private w:F

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 27

    .prologue
    .line 303
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    new-instance v2, Lyt;

    invoke-direct {v2}, Lyt;-><init>()V

    new-instance v3, Lys;

    invoke-direct {v3}, Lys;-><init>()V

    new-instance v4, Lyv;

    invoke-direct {v4}, Lyv;-><init>()V

    invoke-static {}, Laux;->a()Laux;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v6

    invoke-static {}, Lnf;->a()Lnf;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v9

    invoke-static {}, Lnj;->a()Lnj;

    move-result-object v10

    invoke-static {}, Lauw;->a()Lauw;

    move-result-object v11

    new-instance v12, Lme;

    invoke-direct {v12}, Lme;-><init>()V

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v13

    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v14

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v15

    new-instance v16, Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>()V

    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v17

    new-instance v18, Lahq;

    invoke-direct/range {v18 .. v18}, Lahq;-><init>()V

    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v19

    new-instance v20, Lcom/snapchat/android/util/TitleBarManager;

    invoke-direct/range {v20 .. v20}, Lcom/snapchat/android/util/TitleBarManager;-><init>()V

    invoke-static {}, Lnn;->a()Lnn;

    move-result-object v21

    invoke-static {}, Lni;->a()Lni;

    move-result-object v22

    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v23

    invoke-static {}, Lalx;->a()Lalx;

    move-result-object v24

    invoke-static {}, Laol;->a()Laol;

    move-result-object v25

    invoke-static {}, Latm;->a()Latm;

    move-result-object v26

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v26}, Lcom/snapchat/android/LandingPageActivity;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lyt;Lys;Lyv;Laux;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnf;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lnj;Lauw;Lme;Ladj;Lyf;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lahr;Lahq;Lanw;Lcom/snapchat/android/util/TitleBarManager;Lnn;Lni;Lbaa;Lalx;Laol;Latm;)V

    .line 330
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lyt;Lys;Lyv;Laux;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnf;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lnj;Lauw;Lme;Ladj;Lyf;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lahr;Lahq;Lanw;Lcom/snapchat/android/util/TitleBarManager;Lnn;Lni;Lbaa;Lalx;Laol;Latm;)V
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 219
    const/4 v1, 0x2

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    .line 222
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    .line 223
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 247
    new-instance v1, Lbez;

    invoke-direct {v1}, Lbez;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lbez;

    .line 257
    new-instance v1, Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Z

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    .line 291
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$1;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Ljava/lang/Runnable;

    .line 387
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Landroid/os/Handler;

    .line 2139
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$7;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/content/ServiceConnection;

    .line 358
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v1

    invoke-interface {v1, p0}, Laza;->a(Lcom/snapchat/android/LandingPageActivity;)V

    .line 359
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 360
    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lyt;

    .line 361
    iput-object p3, p0, Lcom/snapchat/android/LandingPageActivity;->H:Lys;

    .line 362
    iput-object p4, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lyv;

    .line 363
    iput-object p5, p0, Lcom/snapchat/android/LandingPageActivity;->o:Laux;

    .line 364
    iput-object p6, p0, Lcom/snapchat/android/LandingPageActivity;->I:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 365
    iput-object p7, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    .line 366
    iput-object p8, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 367
    iput-object p9, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 368
    iput-object p10, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    .line 369
    iput-object p11, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    .line 370
    iput-object p12, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lme;

    .line 371
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    .line 372
    iput-object p13, p0, Lcom/snapchat/android/LandingPageActivity;->P:Ladj;

    .line 373
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lyf;

    .line 374
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    .line 375
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lahr;

    .line 376
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lahq;

    .line 377
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->U:Lanw;

    .line 378
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    .line 379
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lnn;

    .line 380
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lni;

    .line 381
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbaa;

    .line 382
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Lalx;

    .line 383
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Laol;

    .line 384
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Latm;

    .line 385
    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1681
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1690
    if-nez p1, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1697
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1698
    if-eqz v0, :cond_1

    .line 1699
    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1702
    :cond_1
    iput-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    .line 1703
    return-void

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Laim;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1546
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1547
    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_2

    .line 1548
    iget-boolean v1, p1, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v1, :cond_1

    .line 1549
    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1550
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1555
    :cond_0
    aget-object v1, v1, v4

    iput-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 1556
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lyv;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v1}, Lyv;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lyv;->d:Lnq;

    invoke-virtual {v1}, Lnq;->a()V

    iget-object v1, v0, Lyv;->c:Lajn;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v1, p1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    new-instance v1, Lyv$1;

    invoke-direct {v1, v0, p1}, Lyv$1;-><init>(Lyv;Laim;)V

    sget-object v0, Lyv;->a:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Laim;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Laww;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lyv;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v1}, Lyv;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lyv;->c:Lajn;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v1, p1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    iget-object v1, v0, Lyv;->d:Lnq;

    invoke-virtual {v1}, Lnq;->a()V

    new-instance v1, Lyv$2;

    invoke-direct {v1, v0, p1}, Lyv$2;-><init>(Lyv;Laim;)V

    sget-object v0, Lyv;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Laim;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Lawv;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;Z)V
    .locals 3

    .prologue
    .line 189
    instance-of v0, p1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lbap;

    sget-object v0, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v0}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->onCameraStateEvent(Lbap;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onCameraStateEvent(Lbap;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1715
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 1717
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1718
    instance-of v0, v1, Lcom/snapchat/android/preview/SnapPreviewFragment;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/snapchat/android/preview/SnapPreviewFragment;

    if-eqz v0, :cond_0

    .line 1720
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1723
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1727
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1728
    if-ltz v0, :cond_2

    .line 1729
    invoke-static {v2, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1730
    instance-of v3, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    if-eqz v3, :cond_2

    .line 1731
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/LeftSwipeViewPager;->setLeftSwipeEnable(Z)V

    .line 1735
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1736
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 1737
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1739
    :cond_3
    const v1, 0x7f0a0248

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1740
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1744
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1747
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/LandingPageActivity$5;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    :goto_0
    return-void

    .line 1753
    :catch_0
    move-exception v0

    .line 1755
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v0, 0x1

    .line 2047
    sparse-switch p1, :sswitch_data_0

    .line 2054
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbv;

    invoke-direct {v3, p1, p2}, Lbbv;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2057
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2060
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    const/16 v2, 0x42

    if-ne p1, v2, :cond_5

    .line 2078
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2065
    :cond_1
    sget-object v2, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_5

    .line 2069
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->p()V

    .line 2070
    if-ne p1, v4, :cond_4

    .line 2071
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lcom/snapchat/android/ui/CustomVolumeView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(I)V

    goto :goto_0

    .line 2065
    :cond_3
    sget-object v2, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v2}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lavh;->a(Landroid/view/Window;)Z

    move-result v2

    goto :goto_1

    .line 2072
    :cond_4
    if-ne p1, v5, :cond_0

    .line 2073
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lcom/snapchat/android/ui/CustomVolumeView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/CustomVolumeView;->a(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2078
    goto :goto_0

    .line 2047
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;)Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 837
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 838
    const-string v1, "snapchatUserIsLoggedIn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 840
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/LandingPageActivity;)Lbaa;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbaa;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Laey;

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    iget-object v2, v2, Laez;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    iget-object v3, v3, Laez;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    iget-object v4, v4, Laez;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    iget-boolean v5, v5, Laez;->d:Z

    invoke-direct {v1, v2, v3, v4, v5}, Laey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setAnimating(Z)V

    return-void
.end method

.method public static i()Lcom/snapchat/android/util/chat/SecureChatService;
    .locals 1

    .prologue
    .line 2136
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    return-object v0
.end method

.method static j()V
    .locals 3

    .prologue
    .line 2292
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 2293
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->a()V

    .line 2297
    :goto_0
    return-void

    .line 2295
    :cond_0
    const-string v0, "LandingPageActivity"

    const-string v1, "Cannot start a session because sSecureChatService is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 502
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 511
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapd;

    invoke-virtual {v0}, Lapd;->b()V

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 624
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->finish()V

    .line 625
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lcom/snapchat/android/ui/CustomVolumeView;

    if-eqz v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 723
    :cond_0
    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 724
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 725
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CustomVolumeView;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lcom/snapchat/android/ui/CustomVolumeView;

    goto :goto_0
.end method

.method private q()Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1027
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1028
    if-lez v1, :cond_1

    .line 1029
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1030
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    if-eqz v1, :cond_0

    .line 1031
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1036
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1468
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1469
    if-eqz v0, :cond_0

    const-string v1, "fromServerNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    .line 1473
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "FIRST_ITEM_READY"

    const-string v3, "from_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    iget-object v0, v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CONTENT_READY"

    const-string v2, "from_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 1475
    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 2163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2164
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2165
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/LandingPageActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2166
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->stopService(Landroid/content/Intent;)Z

    .line 2168
    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 2247
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->U:Lanw;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 2248
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    if-eqz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 713
    :cond_0
    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 714
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 715
    new-instance v0, Lma;

    const v1, 0x7f0a025c

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lma;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 864
    return-void
.end method

.method protected final a(Lajv;)V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2253
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->a(Lajv;)V

    .line 2254
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    iget-object v1, v0, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lnf;->mDidLoadFromDatabase:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 2255
    const-string v0, "LandingPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUserLoaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2258
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2259
    invoke-direct {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    .line 2260
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;)V

    .line 2261
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;)V

    .line 2264
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    iget-object v0, v0, Lajv;->mMessagingGatewayInfo:Lbil;

    if-eqz v0, :cond_1

    .line 2265
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->j()V

    .line 2276
    :cond_1
    :goto_0
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    if-eqz v0, :cond_3

    .line 2277
    invoke-static {v4}, Lajx;->g(Z)V

    .line 2278
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 2279
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnf;->a(Landroid/content/Intent;)V

    .line 2280
    new-instance v0, Lalz;

    invoke-direct {v0, p0}, Lalz;-><init>(Landroid/content/Context;)V

    .line 2281
    invoke-virtual {v0, p0}, Lalz;->a(Landroid/app/Activity;)V

    .line 2282
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-eqz v0, :cond_2

    .line 2283
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Laol;

    invoke-virtual {v0, v3, v4}, Laol;->a(ZZ)I

    .line 2285
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->t()V

    .line 2286
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 2288
    :cond_3
    :goto_1
    return-void

    .line 2267
    :cond_4
    invoke-static {}, Lajx;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2268
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->o()V

    goto :goto_1

    .line 2271
    :cond_5
    invoke-static {p0}, Lasr;->a(Landroid/app/Activity;)V

    .line 2272
    invoke-direct {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 2350
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 2351
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    invoke-virtual {v0, p1}, Lma;->a(Z)V

    .line 2352
    return-void
.end method

.method public final a(ILcom/snapchat/android/util/fragment/SnapchatFragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1196
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1196
    goto :goto_0

    .line 1199
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v2

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-static {}, Lajx;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v0

    .line 815
    :cond_1
    invoke-static {}, Lajx;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    invoke-virtual {v1}, Lajv;->w()V

    goto :goto_0

    .line 822
    :cond_2
    invoke-static {}, Lajx;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "LandingPageActivity"

    const-string v3, "Animating pager while paging is disabled. Ignoring touch event."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 903
    :goto_0
    return v0

    .line 875
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbaa;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v3}, Lcom/snapchat/android/util/SnapchatViewPager;->getLastScrolledPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbaa;->a(Ljava/lang/String;)V

    .line 877
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    .line 884
    :cond_2
    instance-of v3, v0, Lcom/snapchat/android/camera/CameraFragment;

    if-eqz v3, :cond_6

    .line 885
    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 886
    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsScrolling:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v3, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbes;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbes;

    iget-boolean v0, v0, Lbes;->mIsFlinging:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbaa;

    iput-boolean v1, v0, Lbaa;->mDeferPause:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 895
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    if-eqz v0, :cond_d

    .line 896
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    iget-object v4, v0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v0, Laup;->mTapToViewTouchListener:Laqf;

    invoke-virtual {v0, p1}, Laqf;->a(Landroid/view/MotionEvent;)Z

    .line 903
    :cond_8
    :goto_5
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 895
    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    .line 896
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget-boolean v1, v0, Laup;->mLongPressStarted:Z

    if-eqz v1, :cond_8

    :cond_c
    :goto_6
    invoke-virtual {v0}, Laup;->f()V

    goto :goto_5

    :pswitch_1
    iget-boolean v4, v0, Laup;->mLongPressStarted:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    goto :goto_6

    .line 897
    :cond_d
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 898
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    iget v4, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    iget v5, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    iget-object v6, v0, Laup;->mEditionViewerLauncher:Laeh;

    invoke-virtual {v6}, Laeh;->d()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Laup;->mEditionViewerLauncher:Laeh;

    invoke-virtual {v6}, Laeh;->e()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    move v0, v1

    :goto_7
    if-eqz v0, :cond_8

    move v0, v1

    .line 899
    goto/16 :goto_0

    .line 898
    :cond_f
    iget-object v6, v0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v3, v0, Laup;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v3, :cond_10

    iget-object v3, v0, Laup;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    move v2, v1

    :cond_10
    if-eqz v2, :cond_12

    iget-object v2, v0, Laup;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, v0, Laup;->mTapToViewTouchListener:Laqf;

    invoke-virtual {v0, p1}, Laqf;->a(Landroid/view/MotionEvent;)Z

    :cond_11
    move v0, v1

    goto :goto_7

    :cond_12
    iget-object v0, v0, Laup;->mTapToViewTouchListener:Laqf;

    invoke-virtual {v0, p1}, Laqf;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    :cond_14
    invoke-virtual {v0}, Laup;->f()V

    :cond_15
    move v0, v2

    goto :goto_7

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lauu;

    invoke-virtual {v0}, Lauu;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1428
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapchatViewPager;->getOffscreenPageLimit()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 1431
    :cond_0
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lbcz;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    return-object v0
.end method

.method public final h()Lbdj;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbdj;

    return-object v0
.end method

.method public final k()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Lvf;

    return-object v0
.end method

.method public final l()Lcom/snapchat/android/ui/SnapView;
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/SnapView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2090
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()V

    .line 2092
    const-string v0, "LandingPageActivity"

    const-string v1, "Activity Request with code %d, and Result with code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2093
    if-ne p2, v5, :cond_1

    .line 2094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onLogoutEvent(Lbch;)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/SnapchatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2098
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2100
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2101
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2102
    invoke-static {v0, p0}, Laur;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    const v0, 0x7f0c01d1

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    new-instance v0, Lajj$a;

    invoke-direct {v0}, Lajj$a;-><init>()V

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Lajj$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Lajj$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Lajj$a;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lajj$a;

    iput-boolean v5, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsChatMedia:Z

    check-cast v0, Lajj$a;

    invoke-virtual {v0}, Lajj$a;->c()Lajj;

    move-result-object v0

    new-instance v1, Lbdj;

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->PHONE_GALLERY:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v1, v0, v2}, Lbdj;-><init>(Laim;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->onSnapCapturedEvent(Lbdj;)V

    goto :goto_0

    .line 2103
    :cond_3
    if-nez p2, :cond_0

    goto :goto_0

    .line 2109
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 947
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 951
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 953
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 955
    if-nez v1, :cond_1

    .line 957
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 968
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 969
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    invoke-virtual {v0}, Lnj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v5}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACK_PRESSED:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    invoke-direct {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    invoke-virtual {v0}, Laup;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACK_PRESSED:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    invoke-direct {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v5}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCameraStateEvent(Lbap;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2181
    invoke-virtual {p1}, Lbap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Laup;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 2187
    :cond_0
    return-void
.end method

.method public onCancelInChatSnapEvent(Lbar;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1924
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget v0, v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mOriginatingFragment:I

    .line 1926
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1928
    iget-boolean v1, p1, Lbar;->mShouldReturnToChatFragment:Z

    if-nez v1, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1929
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1931
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelQuickSnapEvent(Lbas;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1952
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget v0, v0, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mOriginatingFragment:I

    .line 1954
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1956
    iget-boolean v1, p1, Lbas;->mShouldReturnToChatFragment:Z

    if-nez v1, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1959
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelReplyEvent(Lbat;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1871
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    .line 1872
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    .line 1873
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    invoke-virtual {v0}, Lnj;->d()V

    .line 1874
    return-void
.end method

.method public onChangeBrightnessEvent(Lbav;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1984
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1985
    iget v1, p1, Lbav;->mBrightness:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1986
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1987
    return-void
.end method

.method public onChangeOrientationEvent(Lbaw;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getRequestedOrientation()I

    move-result v0

    iget v1, p1, Lbaw;->mRequestedOrientation:I

    if-ne v0, v1, :cond_0

    .line 1971
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget v0, p1, Lbaw;->mRequestedOrientation:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 2335
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2337
    invoke-static {p0}, Lavh;->d(Landroid/content/Context;)I

    move-result v0

    .line 2338
    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->A:I

    if-eq v1, v0, :cond_0

    .line 2339
    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->A:I

    .line 2340
    invoke-static {p0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v1

    .line 2342
    const-string v2, "LandingPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rotated to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isPortrait? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2344
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    iget-boolean v2, v0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 2346
    :cond_0
    :goto_0
    return-void

    .line 2344
    :cond_1
    iget-boolean v2, v0, Lauw;->mIsImmersiveModeOn:Z

    invoke-virtual {v0, v1, v2}, Lauw;->a(ZZ)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 395
    invoke-static {}, Lnf;->d()V

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Laux;

    sget v1, Laux$a;->ACTIVITY_CREATE_CHECKPOINT$6dad94c5:I

    invoke-virtual {v0, v1}, Laux;->a(I)V

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->c()V

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a()V

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1, v6}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 400
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 401
    if-eqz p1, :cond_0

    const-string v0, "in_chat_snap_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    const-string v0, "view_pager_index"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    const-string v0, "should_pop_fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->mWaitingForActivityResult:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    iput-object v8, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 403
    :cond_0
    :goto_0
    const-string v0, "LandingPageActivity"

    const-string v1, "Native free space = %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Roboto-BoldCondensed.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Latj;->mRobotoBoldCondensed:Landroid/graphics/Typeface;

    const-string v1, "Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lbwu;->a:Landroid/graphics/Typeface;

    .line 411
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 412
    iput-boolean v6, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 415
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    const-string v1, "com.snapchat.android.util.DateTimeZoneProvider"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    const-string v0, "LandingPageActivity"

    const-string v1, "Landing Page Activity content view set"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setContentView(I)V

    .line 421
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v2, v0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    iput-object v1, v0, Lauw;->mWindow:Landroid/view/Window;

    iget-object v1, v0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Lauw;->mDefaultRightPadding:I

    iget-object v1, v0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Lauw;->mDefaultBottomPadding:I

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapd;

    invoke-virtual {v0, p0}, Lapd;->a(Landroid/content/Context;)V

    .line 425
    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/SnapchatViewPager;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    .line 426
    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Landroid/view/ViewStub;

    .line 427
    new-instance v0, Lvf;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-direct {v0, p0, v1}, Lvf;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Lvf;

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$2;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_1
    invoke-static {}, Laup;->d()Laup;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    .line 432
    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapView;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/SnapView;

    .line 433
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/SnapView;

    iput-object v0, v1, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v0, v1, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    const v2, 0x7f0a041e

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v0, v1, Laup;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 434
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    .line 436
    invoke-static {}, Lawq;->a()V

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 442
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 443
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 446
    :cond_2
    new-instance v0, Lly;

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Lly;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lauu;

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lauu;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setAdapter(Lauu;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lauu;

    iget-object v0, v0, Landroid/support/v4/view/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$3;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$4;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    sget-object v1, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    invoke-static {p0}, Lazu;->a(Landroid/app/Activity;)V

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v1, v0, Lcom/snapchat/android/util/TitleBarManager;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    iput-object v3, v0, Lcom/snapchat/android/util/TitleBarManager;->mResources:Landroid/content/res/Resources;

    .line 456
    new-instance v0, Lbel;

    sget-object v1, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v0, v1}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onTitleBarEvent(Lbel;)V

    .line 457
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->r()V

    .line 458
    invoke-static {}, Lnf;->e()V

    .line 459
    return-void

    .line 401
    :cond_3
    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->mWaitingForActivityResult:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_0

    iput v2, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v0

    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 446
    :catch_1
    move-exception v0

    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1205
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onDestroy()V

    .line 1208
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1212
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    if-nez v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapd;

    invoke-virtual {v0}, Lapd;->b()V

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1219
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 1222
    invoke-static {v1}, Lajx;->r(Z)V

    .line 1224
    invoke-static {}, Lazu;->a()V

    .line 1225
    return-void
.end method

.method public onDisplayInAppNotificationEvent(Lbbg;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 741
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    invoke-virtual {v0, p1}, Lma;->a(Lbbg;)V

    .line 742
    return-void
.end method

.method public onEditionClose(Laew;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 791
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 792
    if-ltz v1, :cond_0

    .line 795
    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_0

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 801
    :cond_0
    iget-object v0, p1, Laew;->b:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    sget-object v1, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    if-ne v0, v1, :cond_1

    .line 802
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0
.end method

.method public onEnableLargeUiUpdatesOnFragment(Lbbj;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v1, p1, Lbbj;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 2006
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-nez v1, :cond_0

    .line 2007
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    goto :goto_0
.end method

.method public onForceVerificationEvent(Lbbm;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2223
    const/4 v0, 0x1

    invoke-static {v0}, Lajx;->p(Z)V

    .line 2224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lbbm;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0168

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/LandingPageActivity$9;-><init>(Lcom/snapchat/android/LandingPageActivity;Lbbm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0166

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$8;

    invoke-direct {v2, p0}, Lcom/snapchat/android/LandingPageActivity$8;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2243
    return-void
.end method

.method public onGetCurrentActivityEvent(Lbbr;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2191
    return-void
.end method

.method public onImageSnapBitmapReadyForSnapPreview(Lbca;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1819
    iget-object v1, p1, Lbca;->mBitmap:Landroid/graphics/Bitmap;

    .line 1820
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1821
    const-string v2, "PreviewFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/preview/SnapPreviewFragment;

    .line 1822
    if-eqz v0, :cond_0

    .line 1823
    iget-object v2, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    iput-object v1, v2, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v2, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laim;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    iget-object v0, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->f:Lbgt;

    invoke-virtual {v0}, Lbgt;->b()V

    .line 1827
    :goto_0
    return-void

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbdj;

    iget-object v0, v0, Lbdj;->mMediabryo:Laim;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onInAppNotificationEvent(Lbcb;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 767
    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Lalx;

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->k()Lalw;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Landroid/view/ViewStub;

    invoke-virtual {v1, v0, v2}, Lalx;->a(Lalw;Landroid/view/ViewStub;)V

    goto :goto_0
.end method

.method public onInChatSnapEvent(Lcom/snapchat/android/util/eventbus/InChatSnapEvent;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1914
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1915
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2030
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    const/4 v0, 0x1

    .line 2033
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    const/4 v0, 0x1

    .line 2041
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLeaveInAppNotificationPosterEvent(Lbcd;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 747
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iget-object v1, p1, Lbcd;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lma;->a(Ljava/lang/String;)Z

    .line 748
    return-void
.end method

.method public onLogoutEvent(Lbch;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1991
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 1992
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    const-string v1, "SecureChatService"

    const-string v2, "CHAT-LOG: SecureChatService STOP SESSION"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 1994
    :cond_0
    const v0, 0x7f0c02e6

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 1996
    invoke-static {p0}, Lasr;->a(Landroid/app/Activity;)V

    .line 1997
    return-void
.end method

.method public onMessagingGatewayInfoUpdatedEvent(Lbci;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2172
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 2173
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->s()V

    .line 2177
    :goto_0
    return-void

    .line 2175
    :cond_0
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->j()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1462
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1463
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    .line 1464
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->r()V

    .line 1465
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1229
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 1230
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    .line 1232
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$LockedState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1234
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 1235
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-boolean v5, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-boolean v5, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    .line 1238
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lyf;

    invoke-virtual {v0, v5}, Lyf;->a(Z)V

    .line 1240
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f_()V

    .line 1244
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->l_()Z

    move-result v1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Z

    .line 1248
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z_()J

    move-result-wide v0

    .line 1249
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1250
    const-string v2, "LandingPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Schedule to set flag to pop stacked fragments after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lahr;

    invoke-virtual {v0}, Lahr;->c()V

    .line 1256
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Laup;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ENTER_BACKGROUND:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Laup;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 1257
    invoke-static {}, Laut;->a()V

    .line 1258
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1259
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1260
    iput-boolean v5, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 1262
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    invoke-virtual {v0}, Lajv;->x()V

    .line 1264
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Ladj;

    new-instance v1, Ladj$9;

    invoke-direct {v1, v0}, Ladj$9;-><init>(Ladj;)V

    invoke-static {v1}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbaa;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1, v5}, Lbaa;->a(Ljava/lang/String;Z)V

    .line 1268
    return-void
.end method

.method public onPushDelayedInAppNotificationEvent(Lbcs;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 753
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iget-object v2, p1, Lbcs;->sourceId:Ljava/lang/String;

    iget-object v0, v1, Lma;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma$a;

    iget-object v3, v1, Lma;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lma;->a(Lma$a;)V

    .line 754
    :cond_0
    return-void
.end method

.method public onQuickSnapEvent(Lcom/snapchat/android/util/eventbus/QuickSnapEvent;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1942
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1943
    return-void
.end method

.method public onRecentStoryReplyEvent(Lbcu;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1903
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    const-string v1, "RecentStoryReplyAnalyticsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startReplying to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lbcu;->friendUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, v0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    iput-boolean v4, v0, Lnj;->mHasReplied:Z

    .line 1904
    invoke-virtual {p0, v4, v4}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 1905
    return-void
.end method

.method public onReplaceInAppNotificationEvent(Lbcy;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iget-object v1, p1, Lbcy;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lma;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lma;

    iget-object v1, p1, Lbcy;->newEvent:Lbbg;

    invoke-virtual {v0, v1}, Lma;->a(Lbbg;)V

    .line 762
    :cond_0
    return-void
.end method

.method public onReplySnapEvent(Lbcz;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    .line 1864
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1866
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1867
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Laux;

    sget v1, Laux$a;->ACTIVITY_RESTART_CHECKPOINT$6dad94c5:I

    invoke-virtual {v0, v1}, Laux;->a(I)V

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->c()V

    .line 644
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a()V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_READY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 646
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onRestart()V

    .line 647
    return-void
.end method

.method protected onResume()V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-static {}, Lnf;->d()V

    .line 517
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 519
    sput-object p0, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    .line 521
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-boolean v3, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-boolean v3, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    .line 525
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lyf;

    invoke-virtual {v0, v3}, Lyf;->a(Z)V

    .line 528
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 535
    invoke-static {}, Lajx;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->b()V

    .line 537
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->o()V

    .line 616
    :goto_0
    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-nez v0, :cond_3

    .line 541
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 559
    :goto_1
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lajx;->V()Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->b()V

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/ScAcceptTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 543
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->b()V

    .line 545
    invoke-static {p0}, Lasr;->a(Landroid/app/Activity;)V

    .line 546
    invoke-direct {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    goto :goto_0

    .line 549
    :cond_4
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 550
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnf;->a(Landroid/content/Intent;)V

    .line 551
    new-instance v0, Lalz;

    invoke-direct {v0, p0}, Lalz;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v0, p0}, Lalz;->a(Landroid/app/Activity;)V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Laol;

    invoke-virtual {v0, v2, v3}, Laol;->a(ZZ)I

    .line 554
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->e()V

    .line 555
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->t()V

    goto :goto_1

    .line 566
    :cond_5
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    iput-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    :cond_7
    :goto_2
    const-string v0, "goToFragmentNum"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v7}, Labh;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const/4 v0, 0x3

    move v5, v0

    :goto_3
    if-eq v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()V

    :cond_8
    packed-switch v5, :pswitch_data_0

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v5, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    const-string v0, "goToFragmentNum"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 569
    :cond_a
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_1d

    .line 571
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 572
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v1}, Lni;->c(Ljava/lang/String;)V

    .line 577
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 580
    :cond_b
    const-string v1, "recovery_code_used"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 581
    const v1, 0x7f0c02c0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c02bf

    invoke-virtual {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v1, "recovery_code_used"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 587
    :cond_c
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    .line 589
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 594
    :goto_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 596
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 597
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c028d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RESUMING_FROM_SWIPE_MESSAGE"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    :cond_d
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 606
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    invoke-virtual {v0}, Laya;->b()V

    .line 607
    invoke-static {}, Lbft;->a()Lbft;

    invoke-static {}, Lbft;->b()V

    .line 610
    :cond_e
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 611
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lahr;

    invoke-virtual {v0}, Lahr;->b()V

    .line 614
    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    invoke-static {p0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v3, v0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v3, :cond_10

    iget-object v3, v0, Lauw;->mDecorView:Landroid/view/View;

    if-nez v3, :cond_1e

    .line 615
    :cond_10
    :goto_6
    invoke-static {}, Lnf;->e()V

    goto/16 :goto_0

    .line 566
    :cond_11
    const-string v0, "fromServerNotification"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    goto/16 :goto_2

    :cond_12
    if-eqz v1, :cond_13

    if-eq v0, v6, :cond_13

    move v5, v0

    goto/16 :goto_3

    :cond_13
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    move v5, v2

    goto/16 :goto_3

    :cond_15
    if-eqz v1, :cond_16

    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    move v5, v6

    goto/16 :goto_3

    :cond_16
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    move v5, v0

    goto/16 :goto_3

    :pswitch_0
    const-string v0, "friendUsername"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Laxi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_17
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Laxi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o()V

    move v1, v3

    move-object v4, v0

    :goto_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "LandingPageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CHAT-LOG: LandingPageActivity setInitialFragment setFriendUsername: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    if-eqz v0, :cond_18

    const-string v8, "LandingPageActivity"

    const-string v9, "CHAT-LOG: LandingPageActivity setInitialFragment updateFriendIfNecessary"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_1a

    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    :cond_18
    const-string v0, "fromServerNotification"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "seq_num"

    invoke-virtual {v7, v1, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v0, :cond_19

    cmp-long v0, v8, v12

    if-eqz v0, :cond_19

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0, v4}, Lakc;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v1, v10, v8

    if-ltz v1, :cond_1b

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Z()V

    :cond_19
    :goto_9
    const-string v0, "friendUsername"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto :goto_8

    :cond_1b
    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_19

    :cond_1c
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Y()V

    goto :goto_9

    :pswitch_1
    const-string v0, "fromServerNotification"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "snap_id"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "friendUsername"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v4}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lni;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 591
    :cond_1d
    invoke-static {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    goto/16 :goto_5

    .line 614
    :cond_1e
    const-string v3, "SoftNavigationBarManager"

    const-string v4, "adding flags and padding onresume"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lauw;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Lauw;->mDefaultFlags:I

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    iget v3, v0, Lauw;->mDefaultFlags:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v2, v0, Lauw;->mIsImmersiveModeOn:Z

    invoke-virtual {v0, v1, v2}, Lauw;->a(ZZ)V

    goto/16 :goto_6

    :cond_1f
    move v1, v2

    move-object v4, v0

    goto/16 :goto_7

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 679
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "in_chat_snap_event"

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const-string v0, "should_pop_fragments"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 698
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 701
    const-string v0, "view_pager_index"

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    goto :goto_0
.end method

.method public onSetPagingEnabledEvent(Lbdg;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v1, p1, Lbdg;->enablePaging:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1832
    return-void
.end method

.method public onShareDSnapEvent(Laex;)V
    .locals 14
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1879
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    .line 1881
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    iget-object v11, v0, Laex;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    iget v3, p1, Laex;->b:F

    iget v4, p1, Laex;->c:F

    invoke-virtual {v11}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v5

    iget-object v0, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_0

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1884
    :goto_0
    if-eqz v0, :cond_1

    .line 1885
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1886
    if-eqz v0, :cond_1

    .line 1887
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1890
    :cond_1
    return-void

    .line 1881
    :cond_2
    invoke-virtual {v11}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v10, v0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, v11, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    sub-long v8, v0, v6

    invoke-virtual {v5}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v7

    iget-object v0, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    if-nez v0, :cond_f

    const v0, 0x7f0c0110

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v12, v11, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v0, Lbbg;

    const/4 v1, 0x0

    iget-object v3, v11, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-object v4, v11, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v4, v4, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    const/4 v5, 0x1

    invoke-virtual {v11}, Lcom/snapchat/android/discover/ui/DSnapView;->getInAppNotificationSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v2, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v3, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v11, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v5, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ladf;->d(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v12, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v13, v11, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ladf;

    iget-object v11, v11, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v11, v11, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ladf;->e(Ljava/lang/String;)I

    move-result v11

    if-nez v5, :cond_9

    if-eqz v10, :cond_6

    new-instance v5, Lhd;

    invoke-direct {v5}, Lhd;-><init>()V

    iput-object v0, v5, Lhd;->publisherId:Ljava/lang/String;

    iput-object v2, v5, Lhd;->dsnapId:Ljava/lang/String;

    iput-object v1, v5, Lhd;->editionId:Ljava/lang/String;

    invoke-static {v8, v9}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v5, Lhd;->timeViewed:Ljava/lang/Double;

    invoke-static {v7}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v5, Lhd;->mediaType:Lhy;

    if-gez v4, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lhd;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lhd;->snapIndexPos:Ljava/lang/Long;

    :cond_3
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    new-instance v5, Lgy;

    invoke-direct {v5}, Lgy;-><init>()V

    iput-object v0, v5, Lgy;->publisherId:Ljava/lang/String;

    iput-object v2, v5, Lgy;->dsnapId:Ljava/lang/String;

    iput-object v1, v5, Lgy;->editionId:Ljava/lang/String;

    invoke-static {v7}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v5, Lgy;->longformType:Lhy;

    invoke-static {v8, v9}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v5, Lgy;->timeViewed:Ljava/lang/Double;

    if-gez v4, :cond_8

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_7

    add-int/lit8 v0, v3, 0x1

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lgy;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lgy;->snapIndexPos:Ljava/lang/Long;

    :cond_7
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    if-eqz v10, :cond_c

    new-instance v2, Lgq;

    invoke-direct {v2}, Lgq;-><init>()V

    iput-object v0, v2, Lgq;->publisherId:Ljava/lang/String;

    iput-object v6, v2, Lgq;->adsnapId:Ljava/lang/String;

    iput-object v1, v2, Lgq;->editionId:Ljava/lang/String;

    invoke-static {v8, v9}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lgq;->timeViewed:Ljava/lang/Double;

    invoke-static {v7}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v2, Lgq;->mediaType:Lhy;

    if-gez v4, :cond_b

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_a

    add-int/lit8 v0, v3, 0x1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lgq;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgq;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgq;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgq;->adIndexCount:Ljava/lang/Long;

    :cond_a
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    new-instance v2, Lgm;

    invoke-direct {v2}, Lgm;-><init>()V

    iput-object v0, v2, Lgm;->publisherId:Ljava/lang/String;

    iput-object v6, v2, Lgm;->adsnapId:Ljava/lang/String;

    iput-object v1, v2, Lgm;->editionId:Ljava/lang/String;

    invoke-static {v8, v9}, Lavf;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lgm;->timeViewed:Ljava/lang/Double;

    invoke-static {v7}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lhy;

    move-result-object v0

    iput-object v0, v2, Lgm;->longformType:Lhy;

    if-gez v4, :cond_e

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_d

    add-int/lit8 v0, v3, 0x1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lgm;->snapIndexCount:Ljava/lang/Long;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgm;->snapIndexPos:Ljava/lang/Long;

    int-to-long v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgm;->adIndexPos:Ljava/lang/Long;

    int-to-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lgm;->adIndexCount:Ljava/lang/Long;

    :cond_d
    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lady;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v1, :cond_13

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Lady;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v12, v11, Lcom/snapchat/android/discover/ui/DSnapView;->d:Laej;

    iget-object v0, v11, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapView$2;

    move-object v2, v11

    move v6, v10

    invoke-direct/range {v1 .. v9}, Lcom/snapchat/android/discover/ui/DSnapView$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v2

    if-gtz v2, :cond_11

    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_12

    const-string v0, "TopSnapSlideAnimator"

    const-string v1, "Could not prepare animation. Skipping animation."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Laej;->a:Landroid/view/View;

    iget-object v2, v12, Laej;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v12, Laej;->a:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v12, Laej;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v12, Laej;->a:Landroid/view/View;

    invoke-virtual {v11, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->addView(Landroid/view/View;)V

    iget-object v0, v12, Laej;->a:Landroid/view/View;

    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTop(I)V

    const/4 v0, 0x1

    goto :goto_7

    :cond_12
    iget-object v0, v12, Laej;->a:Landroid/view/View;

    const-string v2, "top"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, v12, Laej;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Laej$1;

    invoke-direct {v2, v12}, Laej$1;-><init>(Laej;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_8

    :cond_13
    move-object v2, v11

    move v6, v10

    invoke-virtual/range {v2 .. v9}, Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLady;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    goto :goto_8
.end method

.method public onShowDialogEvent(Lcom/snapchat/android/util/eventbus/ShowDialogEvent;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2197
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2198
    iget v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->stringResId:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2203
    :goto_0
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_2

    .line 2204
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    if-eqz v1, :cond_1

    .line 2205
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :goto_1
    return-void

    .line 2200
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    goto :goto_0

    .line 2207
    :cond_1
    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2209
    :cond_2
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_3

    .line 2210
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-static {p0, v1, v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_1

    .line 2212
    :cond_3
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_4

    .line 2213
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_1

    .line 2216
    :cond_4
    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onSnapCapturedEvent(Lbdj;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1761
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    .line 1765
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbdj;

    .line 1767
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbdj;

    iget-object v0, v0, Lbdj;->mMediabryo:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1768
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    if-eqz v1, :cond_6

    .line 1769
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    iget-object v1, v1, Lbcz;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    .line 1776
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1778
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1782
    :cond_3
    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;-><init>()V

    .line 1783
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    if-eqz v1, :cond_8

    .line 1784
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    iput-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->d:Lbcz;

    .line 1788
    :cond_4
    :goto_2
    const-string v1, "PreviewFragment"

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    .line 1790
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1792
    invoke-static {}, Lajx;->R()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1793
    invoke-static {}, Lajx;->S()V

    .line 1794
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ALLOWED_GPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lahq;

    invoke-virtual {v0}, Lahq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lahq;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$6;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, p0, v1}, Lahq;->a(Landroid/content/Context;Lahq$a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1770
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v1, :cond_7

    .line 1771
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1772
    :cond_7
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v1, :cond_2

    .line 1773
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1785
    :cond_8
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    if-eqz v1, :cond_4

    .line 1786
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    iput-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->e:Laex;

    goto :goto_2
.end method

.method public onSnapReadyForRecipientsEvent(Lbdn;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1520
    iget-object v0, p1, Lbdn;->mMediabryo:Laim;

    .line 1523
    iget-boolean v1, v0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v1, :cond_0

    .line 1524
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laim;)V

    .line 1542
    :goto_0
    return-void

    .line 1528
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lme;

    invoke-virtual {v1}, Lme;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laim;)V

    .line 1532
    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1533
    iget-boolean v2, p1, Lbdn;->mShouldGoToSendTo:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1534
    :cond_2
    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Laim;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1536
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    if-eqz v1, :cond_5

    .line 1537
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdo;

    invoke-direct {v2, v0, v3}, Lbdo;-><init>(Laim;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1539
    :cond_5
    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Laim;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onSnapReadyForSendingEvent(Lbdo;)V
    .locals 10
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1576
    iget-object v0, p1, Lbdo;->mMediabryo:Laim;

    .line 1577
    iget-boolean v3, p1, Lbdo;->mFromPreview:Z

    .line 1578
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lme;

    invoke-virtual {v1}, Lme;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1579
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laim;)V

    .line 1581
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lyt;

    invoke-virtual {v1, v0}, Lyt;->e(Laim;)V
    :try_end_0
    .catch Labw$b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdr;

    invoke-direct {v2}, Lbdr;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v1, v2, :cond_5

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    invoke-virtual {v1}, Lnj;->c()V

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    invoke-virtual {v1}, Lnj;->d()V

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v9}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1582
    :cond_3
    :goto_2
    return-void

    .line 1581
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->H:Lys;

    invoke-virtual {v1, v0}, Lys;->a(Laim;)V
    :try_end_1
    .catch Labw$b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v1}, Labw$b;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_0

    :cond_5
    move-object v2, v5

    check-cast v2, Lajk;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    iget v4, v4, Lbcz;->mOriginatingFragment:I

    if-ne v4, v7, :cond_8

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    :cond_6
    :goto_3
    invoke-static {v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Z)V

    :cond_7
    :goto_4
    iget-object v2, v2, Lajk;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v7

    :goto_5
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lnj;

    invoke-virtual {v4}, Lnj;->b()Z

    move-result v4

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laim;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILajv;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbcz;

    iget v4, v4, Lbcz;->mOriginatingFragment:I

    if-ne v4, v9, :cond_6

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v4, :cond_a

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v4, :cond_b

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    if-eqz v4, :cond_7

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_DISCOVER:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    goto :goto_4

    :cond_c
    move v2, v8

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v2, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Laex;

    const-string v0, "EditionViewerFragment"

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v0, v8}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-static {v1, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-gt v0, v7, :cond_10

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbar;

    invoke-direct {v1}, Lbar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbas;

    invoke-direct {v1}, Lbas;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    invoke-direct {p0, v7}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto/16 :goto_2
.end method

.method public onSoftNavigationBarEvent(Lbdt;)V
    .locals 7
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1975
    iget-boolean v0, p1, Lbdt;->shouldShow:Z

    if-eqz v0, :cond_2

    .line 1976
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    invoke-static {p0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, v0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1976
    :cond_1
    const-string v2, "SoftNavigationBarManager"

    const-string v3, "Turning immersive mode OFF"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    iget v3, v0, Lauw;->mDefaultFlags:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1, v5}, Lauw;->a(ZZ)V

    iput-boolean v5, v0, Lauw;->mIsImmersiveModeOn:Z

    goto :goto_0

    .line 1978
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lauw;

    invoke-static {p0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, v0, Lauw;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lauw;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_0

    const-string v2, "SoftNavigationBarManager"

    const-string v3, "Turning immersive mode ON"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lauw;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v1, v6}, Lauw;->a(ZZ)V

    iget-object v1, v0, Lauw;->mDecorView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v1, v0, Lauw;->mDecorView:Landroid/view/View;

    const/16 v2, 0x1702

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iput-boolean v6, v0, Lauw;->mIsImmersiveModeOn:Z

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lnf;->d()V

    .line 630
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStart()V

    .line 632
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->s()V

    .line 636
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 637
    invoke-static {}, Lnf;->e()V

    .line 638
    return-void
.end method

.method public onStartFragmentEvent(Lbdw;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1505
    iget-object v1, p1, Lbdw;->mFragmentToStart:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 1507
    iget-object v0, p1, Lbdw;->mBaseFragmentTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p1, Lbdw;->mBaseFragmentTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1511
    :cond_0
    iget-object v0, p1, Lbdw;->mTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1512
    :goto_0
    iget-boolean v2, p1, Lbdw;->mHideOldFragmentFlag:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    .line 1513
    return-void

    .line 1511
    :cond_1
    iget-object v0, p1, Lbdw;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 651
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnf;

    invoke-virtual {v0}, Lnf;->b()V

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    iput-object v7, v0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 653
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, "context"

    const-string v4, "exit"

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lnn;

    invoke-virtual {v0}, Lnn;->b()V

    .line 655
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStop()V

    .line 657
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->I:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    iget-object v1, v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-static {}, Lazz;->a()V

    .line 660
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_1

    .line 661
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/util/chat/SecureChatService$1;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/chat/SecureChatService$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 664
    iput-boolean v6, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    .line 666
    :cond_0
    sput-object v7, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 667
    iput-boolean v6, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 669
    :cond_1
    new-instance v0, Lahq;

    invoke-direct {v0}, Lahq;-><init>()V

    .line 670
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lahr;

    invoke-virtual {v0}, Lahr;->c()V

    .line 673
    :cond_2
    return-void

    .line 657
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStorySnapPostedFromSnapPreviewEvent(Lbec;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 1707
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1708
    return-void
.end method

.method public onSwitchToChatEvent(Lbee;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1568
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1570
    iget-object v0, p1, Lbee;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    .line 1571
    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 1572
    return-void
.end method

.method public onTapToViewDiscoverEvent(Laez;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1841
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->D:Laez;

    .line 1842
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1843
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setAnimating(Z)V

    .line 1844
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1845
    return-void
.end method

.method public onTitleBarEvent(Lbel;)V
    .locals 9
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1836
    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    iget-object v2, p1, Lbel;->mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    iget-object v4, p1, Lbel;->mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    iget-object v5, p1, Lbel;->mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    const-string v6, "TitleBarManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Target visibility: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " locked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " unlocked visibility: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    iput-object v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_1
    iget-object v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    sget-object v6, Lcom/snapchat/android/util/TitleBarManager$LockedState;->LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-ne v4, v6, :cond_4

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-eq v5, v4, :cond_4

    const-string v0, "TitleBarManager"

    const-string v2, "Title bar was locked. Do nothing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1837
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v1

    .line 1836
    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    iput-object v5, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    :cond_5
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-ne v5, v4, :cond_7

    if-eqz v2, :cond_6

    iput-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_6
    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_7
    if-eqz v2, :cond_2

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_8

    iget-boolean v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    if-nez v4, :cond_9

    :cond_8
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_a

    iget-boolean v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    if-nez v4, :cond_a

    :cond_9
    const-string v0, "TitleBarManager"

    const-string v2, "Already in target state. Do nothing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_b

    :goto_2
    iput-boolean v0, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    invoke-virtual {v3}, Lcom/snapchat/android/util/TitleBarManager;->a()V

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_2
.end method

.method public onUpdatingUserToDatabasesCompleteEvent(Lbeo;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 782
    iget-boolean v0, p1, Lbeo;->mSuccess:Z

    if-nez v0, :cond_0

    .line 783
    const-string v0, "Failed to upgrade. Try again later"

    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 786
    :cond_0
    return-void
.end method

.method public onUpdatingUserToDatabasesEvent(Lbep;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 774
    const-string v0, "Upgrading Snapchat"

    const-string v1, "Loading..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    .line 775
    return-void
.end method

.method public onVolumeViewChangedEvent(Lbeu;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 2083
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->p()V

    .line 2084
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lcom/snapchat/android/ui/CustomVolumeView;

    iget-object v1, p1, Lbeu;->mVolumeViewType:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;)V

    .line 2085
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1484
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onWindowFocusChanged(Z)V

    .line 1485
    const-string v0, "LandingPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On ac Should we onWindowFocusChanged has focus? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1486
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    if-eqz v0, :cond_0

    .line 1487
    const-string v0, "LandingPageActivity"

    const-string v1, "On ac Calling onResume from window focus fn"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    .line 1489
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcg;

    invoke-direct {v1}, Lbcg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1497
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1498
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(I)V

    .line 1501
    :cond_1
    return-void
.end method

.method public produceInChatSnapEvent()Lcom/snapchat/android/util/eventbus/InChatSnapEvent;
    .locals 1
    .annotation runtime Lbog;
    .end annotation

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    return-object v0
.end method

.method public produceQuickSnapEvent()Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
    .locals 1
    .annotation runtime Lbog;
    .end annotation

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    return-object v0
.end method

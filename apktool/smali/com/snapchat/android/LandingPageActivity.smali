.class public Lcom/snapchat/android/LandingPageActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"

# interfaces
.implements Lash;
.implements Lbfz;
.implements Lcom/snapchat/android/util/fragment/SnapchatFragment$a;
.implements Lvx;


# annotations
.annotation build Lawj;
.end annotation


# static fields
.field static i:Lcom/snapchat/android/util/chat/SecureChatService;

.field private static t:Lcom/snapchat/android/LandingPageActivity;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lavs;

.field private D:Lafz;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lzo;

.field private final I:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final J:Lnw;

.field private final K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final L:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final M:Loa;

.field private final N:Lavu;

.field private final O:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final P:Laej;

.field private final Q:Lzb;

.field private final R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

.field private final S:Lain;

.field private final T:Laim;

.field private final U:Laot;

.field private final V:Lcom/snapchat/android/util/TitleBarManager;

.field private final W:Loe;

.field private final X:Lnz;

.field private final Y:Lbbb;

.field private final Z:Lbbb;

.field protected a:Lcom/snapchat/android/util/SnapchatViewPager;

.field private final aa:Laph;

.field private final ab:Lauk;

.field private ac:Lamu;

.field private ad:Landroid/view/ViewStub;

.field private ae:Lwb;

.field private af:Lcom/snapchat/android/ui/CustomVolumeView;

.field private ag:Lcom/snapchat/android/ui/SnapView;

.field private ah:Z

.field private ai:Z

.field private final aj:Ljava/lang/Runnable;

.field private ak:Landroid/os/Handler;

.field private al:Landroid/content/ServiceConnection;

.field protected b:I

.field protected c:Lbej;

.field protected d:Lbdz;

.field protected e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

.field protected f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

.field protected g:Lafx;

.field h:Landroid/app/ProgressDialog;

.field public j:Lach;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Lapz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected l:Lbfy;

.field protected m:Lzp;

.field protected n:Lzr;

.field protected o:Lavv;

.field protected p:Lavn;

.field public final q:Lcom/snapchat/android/analytics/NotificationAnalytics;

.field protected r:Lcom/squareup/otto/Bus;

.field public s:Lms;

.field private final u:Lmw;

.field private v:Z

.field private w:F

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 28

    .prologue
    .line 307
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    new-instance v2, Lzp;

    invoke-direct {v2}, Lzp;-><init>()V

    new-instance v3, Lzo;

    invoke-direct {v3}, Lzo;-><init>()V

    new-instance v4, Lzr;

    invoke-direct {v4}, Lzr;-><init>()V

    invoke-static {}, Lavv;->a()Lavv;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v6

    invoke-static {}, Lnw;->a()Lnw;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v9

    invoke-static {}, Loa;->a()Loa;

    move-result-object v10

    invoke-static {}, Lavu;->a()Lavu;

    move-result-object v11

    new-instance v12, Lmw;

    invoke-direct {v12}, Lmw;-><init>()V

    invoke-static {}, Laej;->a()Laej;

    move-result-object v13

    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v14

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v15

    new-instance v16, Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>()V

    invoke-static {}, Lain;->a()Lain;

    move-result-object v17

    new-instance v18, Laim;

    invoke-direct/range {v18 .. v18}, Laim;-><init>()V

    invoke-static {}, Laot;->a()Laot;

    move-result-object v19

    new-instance v20, Lcom/snapchat/android/util/TitleBarManager;

    invoke-direct/range {v20 .. v20}, Lcom/snapchat/android/util/TitleBarManager;-><init>()V

    invoke-static {}, Loe;->a()Loe;

    move-result-object v21

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v22

    invoke-static {}, Lbbb;->b()Lbbb;

    move-result-object v23

    invoke-static {}, Lbbb;->a()Lbbb;

    move-result-object v24

    invoke-static {}, Lamu;->a()Lamu;

    move-result-object v25

    invoke-static {}, Laph;->a()Laph;

    move-result-object v26

    invoke-static {}, Lauk;->a()Lauk;

    move-result-object v27

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v27}, Lcom/snapchat/android/LandingPageActivity;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lzp;Lzo;Lzr;Lavv;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnw;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Loa;Lavu;Lmw;Laej;Lzb;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lain;Laim;Laot;Lcom/snapchat/android/util/TitleBarManager;Loe;Lnz;Lbbb;Lbbb;Lamu;Laph;Lauk;)V

    .line 335
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lzp;Lzo;Lzr;Lavv;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lnw;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Loa;Lavu;Lmw;Laej;Lzb;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lain;Laim;Laot;Lcom/snapchat/android/util/TitleBarManager;Loe;Lnz;Lbbb;Lbbb;Lamu;Laph;Lauk;)V
    .locals 2

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 222
    const/4 v1, 0x2

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    .line 225
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    .line 226
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 230
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 250
    new-instance v1, Lbfy;

    invoke-direct {v1}, Lbfy;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lbfy;

    .line 260
    new-instance v1, Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    .line 289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Z

    .line 295
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$1;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Ljava/lang/Runnable;

    .line 394
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/os/Handler;

    .line 2154
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$7;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->al:Landroid/content/ServiceConnection;

    .line 364
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v1

    invoke-interface {v1, p0}, Lazy;->a(Lcom/snapchat/android/LandingPageActivity;)V

    .line 365
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 366
    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lzp;

    .line 367
    iput-object p3, p0, Lcom/snapchat/android/LandingPageActivity;->H:Lzo;

    .line 368
    iput-object p4, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lzr;

    .line 369
    iput-object p5, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lavv;

    .line 370
    iput-object p6, p0, Lcom/snapchat/android/LandingPageActivity;->I:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 371
    iput-object p7, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    .line 372
    iput-object p8, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 373
    iput-object p9, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 374
    iput-object p10, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    .line 375
    iput-object p11, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    .line 376
    iput-object p12, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lmw;

    .line 377
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    .line 378
    iput-object p13, p0, Lcom/snapchat/android/LandingPageActivity;->P:Laej;

    .line 379
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lzb;

    .line 380
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    .line 381
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lain;

    .line 382
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Laim;

    .line 383
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->U:Laot;

    .line 384
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    .line 385
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Loe;

    .line 386
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lnz;

    .line 387
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbbb;

    .line 388
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Lbbb;

    .line 389
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Lamu;

    .line 390
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Laph;

    .line 391
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Lauk;

    .line 392
    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 1

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1028
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

    .line 1696
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1705
    if-nez p1, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1712
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1713
    if-eqz v0, :cond_1

    .line 1714
    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1717
    :cond_1
    iput-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    .line 1718
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Laji;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1561
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1562
    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_2

    .line 1563
    iget-boolean v1, p1, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v1, :cond_1

    .line 1564
    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1565
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1570
    :cond_0
    aget-object v1, v1, v4

    iput-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 1571
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    .line 1573
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lzr;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v1}, Lzr;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lzr;->d:Loh;

    invoke-virtual {v1}, Loh;->a()V

    iget-object v1, v0, Lzr;->c:Laki;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v1, p1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    new-instance v1, Lzr$1;

    invoke-direct {v1, v0, p1}, Lzr$1;-><init>(Lzr;Laji;)V

    sget-object v0, Lzr;->a:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Laji;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Laxu;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1575
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lzr;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v1}, Lzr;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lzr;->c:Laki;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v1, p1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    iget-object v1, v0, Lzr;->d:Loh;

    invoke-virtual {v1}, Loh;->a()V

    new-instance v1, Lzr$2;

    invoke-direct {v1, v0, p1}, Lzr$2;-><init>(Lzr;Laji;)V

    sget-object v0, Lzr;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Laji;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Laxt;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;Z)V
    .locals 3

    .prologue
    .line 192
    instance-of v0, p1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lbbq;

    sget-object v0, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v0}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->onCameraStateEvent(Lbbq;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onCameraStateEvent(Lbbq;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1730
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 1732
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1733
    instance-of v0, v1, Lcom/snapchat/android/preview/SnapPreviewFragment;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/snapchat/android/preview/SnapPreviewFragment;

    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1738
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1742
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1743
    if-ltz v0, :cond_2

    .line 1744
    invoke-static {v2, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1745
    instance-of v3, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    if-eqz v3, :cond_2

    .line 1746
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a:Lcom/snapchat/android/LeftSwipeViewPager;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/LeftSwipeViewPager;->setLeftSwipeEnable(Z)V

    .line 1750
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1751
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 1752
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1754
    :cond_3
    const v1, 0x7f0a0246

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1755
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1759
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1762
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/LandingPageActivity$5;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    :goto_0
    return-void

    .line 1770
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v0, 0x1

    .line 2062
    sparse-switch p1, :sswitch_data_0

    .line 2069
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v3, Lbcv;

    invoke-direct {v3, p1, p2}, Lbcv;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2072
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2075
    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    const/16 v2, 0x42

    if-ne p1, v2, :cond_5

    .line 2093
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2080
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

    .line 2084
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->p()V

    .line 2085
    if-ne p1, v4, :cond_4

    .line 2086
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/CustomVolumeView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(I)V

    goto :goto_0

    .line 2080
    :cond_3
    sget-object v2, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v2}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lawf;->a(Landroid/view/Window;)Z

    move-result v2

    goto :goto_1

    .line 2087
    :cond_4
    if-ne p1, v5, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/CustomVolumeView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/CustomVolumeView;->a(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2093
    goto :goto_0

    .line 2062
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
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 849
    const-string v1, "snapchatUserIsLoggedIn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 851
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/LandingPageActivity;)Lbbb;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbbb;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lafy;

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    iget-object v2, v2, Lafz;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    iget-object v3, v3, Lafz;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    iget-object v4, v4, Lafz;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    iget-boolean v5, v5, Lafz;->d:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lafy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setAnimating(Z)V

    return-void
.end method

.method public static i()Lcom/snapchat/android/util/chat/SecureChatService;
    .locals 1

    .prologue
    .line 2151
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    return-object v0
.end method

.method static j()V
    .locals 1

    .prologue
    .line 2307
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 2308
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b()V

    .line 2310
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 510
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbm;

    invoke-direct {v1}, Lbbm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 521
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    .line 631
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapz;

    invoke-virtual {v0}, Lapz;->b()V

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 635
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->finish()V

    .line 636
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/CustomVolumeView;

    if-eqz v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 734
    :cond_0
    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 735
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 736
    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CustomVolumeView;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/CustomVolumeView;

    goto :goto_0
.end method

.method private q()Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1038
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1039
    if-lez v1, :cond_1

    .line 1040
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1041
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    if-eqz v1, :cond_0

    .line 1042
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1047
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

    .line 1483
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_0

    const-string v1, "fromServerNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    .line 1488
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

    .line 1490
    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 2178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2179
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2180
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->al:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/LandingPageActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2181
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->stopService(Landroid/content/Intent;)Z

    .line 2183
    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 2261
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 2262
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->U:Laot;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 2263
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    if-eqz v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_0
    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 725
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 726
    new-instance v0, Lms;

    const v1, 0x7f0a025a

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lms;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 871
    if-nez p1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 875
    return-void
.end method

.method protected final a(Lakp;)V
    .locals 4
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2268
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->a(Lakp;)V

    .line 2269
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    iget-object v1, v0, Lnw;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lnw;->mDidLoadFromDatabase:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnw;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lnw;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUserLoaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2273
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2274
    invoke-direct {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    .line 2275
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;)V

    .line 2276
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;)V

    .line 2279
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    iget-object v0, v0, Lakp;->mMessagingGatewayInfo:Lbjl;

    if-eqz v0, :cond_1

    .line 2280
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->j()V

    .line 2291
    :cond_1
    :goto_0
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    if-eqz v0, :cond_3

    .line 2292
    invoke-static {v3}, Lakr;->g(Z)V

    .line 2293
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 2294
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnw;->a(Landroid/content/Intent;)V

    .line 2295
    new-instance v0, Lamw;

    invoke-direct {v0, p0}, Lamw;-><init>(Landroid/content/Context;)V

    .line 2296
    invoke-virtual {v0, p0}, Lamw;->a(Landroid/app/Activity;)V

    .line 2297
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    if-eqz v0, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Laph;

    invoke-virtual {v0, v2, v3}, Laph;->a(ZZ)I

    .line 2300
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->t()V

    .line 2301
    iput-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 2303
    :cond_3
    :goto_1
    return-void

    .line 2282
    :cond_4
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2283
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->o()V

    goto :goto_1

    .line 2286
    :cond_5
    invoke-static {p0}, Latq;->a(Landroid/app/Activity;)V

    .line 2287
    invoke-direct {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 2365
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 2366
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    invoke-virtual {v0, p1}, Lms;->a(Z)V

    .line 2367
    return-void
.end method

.method public final a(ILcom/snapchat/android/util/fragment/SnapchatFragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1204
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1208
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1208
    goto :goto_0

    .line 1211
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

    .line 824
    invoke-static {}, Lakr;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    invoke-static {}, Lakr;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 829
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    invoke-virtual {v1}, Lakp;->w()V

    goto :goto_0

    .line 833
    :cond_2
    invoke-static {}, Lakr;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 932
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
    .line 940
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

    .line 880
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsPagingEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 914
    :goto_0
    return v0

    .line 886
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbbb;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v4}, Lcom/snapchat/android/util/SnapchatViewPager;->getLastScrolledPage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lbbb;->a([Ljava/lang/String;)V

    .line 888
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    .line 895
    :cond_2
    instance-of v3, v0, Lcom/snapchat/android/camera/CameraFragment;

    if-eqz v3, :cond_6

    .line 896
    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 897
    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    .line 886
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mIsScrolling:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v3, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/snapchat/android/util/SnapchatViewPager;->mUserSwipedIntoChatEvent:Lbfr;

    iget-boolean v0, v0, Lbfr;->mIsFlinging:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbbb;

    iput-boolean v1, v0, Lbbb;->mDeferPause:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 906
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

    .line 907
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    iget-object v4, v0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v0, Lavn;->mTapToViewTouchListener:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a(Landroid/view/MotionEvent;)Z

    .line 914
    :cond_8
    :goto_5
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 906
    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    .line 907
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget-boolean v1, v0, Lavn;->mLongPressStarted:Z

    if-eqz v1, :cond_8

    :cond_c
    :goto_6
    invoke-virtual {v0}, Lavn;->f()V

    goto :goto_5

    :pswitch_1
    iget-boolean v4, v0, Lavn;->mLongPressStarted:Z

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

    .line 908
    :cond_d
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->w:F

    iget v4, p0, Lcom/snapchat/android/LandingPageActivity;->x:F

    iget v5, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    iget-object v6, v0, Lavn;->mEditionViewerLauncher:Lafh;

    invoke-virtual {v6}, Lafh;->d()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lavn;->mEditionViewerLauncher:Lafh;

    invoke-virtual {v6}, Lafh;->e()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    move v0, v1

    :goto_7
    if-eqz v0, :cond_8

    move v0, v1

    .line 910
    goto/16 :goto_0

    .line 909
    :cond_f
    iget-object v6, v0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v3, v0, Lavn;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lavn;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    move v2, v1

    :cond_10
    if-eqz v2, :cond_12

    iget-object v2, v0, Lavn;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, v0, Lavn;->mTapToViewTouchListener:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a(Landroid/view/MotionEvent;)Z

    :cond_11
    move v0, v1

    goto :goto_7

    :cond_12
    iget-object v0, v0, Lavn;->mTapToViewTouchListener:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a(Landroid/view/MotionEvent;)Z

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
    invoke-virtual {v0}, Lavn;->f()V

    :cond_15
    move v0, v2

    goto :goto_7

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lavs;

    invoke-virtual {v0}, Lavs;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1441
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapchatViewPager;->getOffscreenPageLimit()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 1444
    :cond_0
    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 1472
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

.method public final g()Lbdz;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    return-object v0
.end method

.method public final h()Lbej;
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbej;

    return-object v0
.end method

.method public final k()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lwb;

    return-object v0
.end method

.method public final l()Lcom/snapchat/android/ui/SnapView;
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Lcom/snapchat/android/ui/SnapView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2105
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()V

    .line 2107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2108
    if-ne p2, v3, :cond_1

    .line 2109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onLogoutEvent(Lbdh;)V

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/SnapchatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2113
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2115
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2116
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2117
    invoke-static {v0, p0}, Lavp;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    const v0, 0x7f0c01d1

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    new-instance v0, Lakf$a;

    invoke-direct {v0}, Lakf$a;-><init>()V

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Lakf$a;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lakf$a;

    iput-boolean v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsChatMedia:Z

    check-cast v0, Lakf$a;

    invoke-virtual {v0}, Lakf$a;->c()Lakf;

    move-result-object v0

    new-instance v1, Lbej;

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->PHONE_GALLERY:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v1, v0, v2}, Lbej;-><init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->onSnapCapturedEvent(Lbej;)V

    goto :goto_0

    .line 2118
    :cond_3
    if-nez p2, :cond_0

    goto :goto_0

    .line 2124
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2113
    nop

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

    .line 958
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 962
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 964
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 966
    if-nez v1, :cond_1

    .line 968
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 977
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 979
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 980
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
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    invoke-virtual {v0}, Loa;->b()Z

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
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    invoke-virtual {v0}, Lavn;->g()Z

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

.method public onCameraStateEvent(Lbbq;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2196
    invoke-virtual {p1}, Lbbq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Lavn;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 2202
    :cond_0
    return-void
.end method

.method public onCancelInChatSnapEvent(Lbbs;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1939
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget v0, v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mOriginatingFragment:I

    .line 1941
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1943
    iget-boolean v1, p1, Lbbs;->mShouldReturnToChatFragment:Z

    if-nez v1, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1946
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelQuickSnapEvent(Lbbt;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1967
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget v0, v0, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mOriginatingFragment:I

    .line 1969
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1971
    iget-boolean v1, p1, Lbbt;->mShouldReturnToChatFragment:Z

    if-nez v1, :cond_1

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1974
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelReplyEvent(Lbbu;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1886
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    .line 1887
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    .line 1888
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    invoke-virtual {v0}, Loa;->d()V

    .line 1889
    return-void
.end method

.method public onChangeBrightnessEvent(Lbbw;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2000
    iget v1, p1, Lbbw;->mBrightness:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2001
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2002
    return-void
.end method

.method public onChangeOrientationEvent(Lbbx;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1980
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getRequestedOrientation()I

    move-result v0

    iget v1, p1, Lbbx;->mRequestedOrientation:I

    if-ne v0, v1, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1985
    :cond_0
    iget v0, p1, Lbbx;->mRequestedOrientation:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 2350
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2352
    invoke-static {p0}, Lawf;->d(Landroid/content/Context;)I

    move-result v0

    .line 2353
    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->A:I

    if-eq v1, v0, :cond_0

    .line 2354
    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->A:I

    .line 2355
    invoke-static {p0}, Lawf;->e(Landroid/content/Context;)Z

    move-result v1

    .line 2357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rotated to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isPortrait? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2359
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    iget-boolean v2, v0, Lavu;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lavu;->mDecorView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 2361
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    iget-boolean v2, v0, Lavu;->mIsImmersiveModeOn:Z

    invoke-virtual {v0, v1, v2}, Lavu;->a(ZZ)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 402
    invoke-static {}, Lnw;->d()V

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lavv;

    sget v1, Lavv$a;->ACTIVITY_CREATE_CHECKPOINT$6dad94c5:I

    invoke-virtual {v0, v1}, Lavv;->a(I)V

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->c()V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a()V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 407
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 408
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

    iput-object v5, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 410
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 412
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Roboto-BoldCondensed.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lauh;->mRobotoBoldCondensed:Landroid/graphics/Typeface;

    const-string v1, "Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lbxv;->a:Landroid/graphics/Typeface;

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 419
    iput-boolean v4, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 422
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    const-string v1, "com.snapchat.android.util.DateTimeZoneProvider"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setContentView(I)V

    .line 428
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v2, v0, Lavu;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lavu;->mDecorView:Landroid/view/View;

    iput-object v1, v0, Lavu;->mWindow:Landroid/view/Window;

    iget-object v1, v0, Lavu;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Lavu;->mDefaultRightPadding:I

    iget-object v1, v0, Lavu;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Lavu;->mDefaultBottomPadding:I

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapz;

    invoke-virtual {v0, p0}, Lapz;->a(Landroid/content/Context;)V

    .line 432
    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/SnapchatViewPager;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    .line 433
    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Landroid/view/ViewStub;

    .line 435
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
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 437
    :goto_1
    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    .line 438
    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapView;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Lcom/snapchat/android/ui/SnapView;

    .line 439
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Lcom/snapchat/android/ui/SnapView;

    iput-object v0, v1, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v0, v1, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    const v2, 0x7f0a0417

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v0, v1, Lavn;->mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 440
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->y:I

    .line 442
    new-instance v0, Lwb;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ag:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {v0, p0, v1, v2}, Lwb;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Lcom/snapchat/android/ui/SnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Lwb;

    .line 444
    invoke-static {}, Laxo;->a()V

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 449
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 450
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 451
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 454
    :cond_2
    new-instance v0, Lmq;

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Lmq;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lavs;

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lavs;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setAdapter(Lavs;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Lavs;

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
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$4;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    sget-object v1, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    invoke-static {p0}, Lbat;->a(Landroid/app/Activity;)V

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v1, v0, Lcom/snapchat/android/util/TitleBarManager;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    iput-object v3, v0, Lcom/snapchat/android/util/TitleBarManager;->mResources:Landroid/content/res/Resources;

    .line 464
    new-instance v0, Lbfk;

    sget-object v1, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v0, v1}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onTitleBarEvent(Lbfk;)V

    .line 465
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->r()V

    .line 466
    invoke-static {}, Lnw;->e()V

    .line 467
    return-void

    .line 408
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

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1217
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onDestroy()V

    .line 1220
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1224
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->B:Z

    if-nez v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lapz;

    invoke-virtual {v0}, Lapz;->b()V

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1231
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 1234
    invoke-static {v1}, Lakr;->q(Z)V

    .line 1236
    invoke-static {}, Lbat;->a()V

    .line 1237
    return-void
.end method

.method public onDisplayInAppNotificationEvent(Lbcg;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 752
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    invoke-virtual {v0, p1}, Lms;->a(Lbcg;)V

    .line 753
    return-void
.end method

.method public onEditionClose(Lafw;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 802
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 803
    if-ltz v1, :cond_0

    .line 806
    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_0

    .line 808
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 812
    :cond_0
    iget-object v0, p1, Lafw;->b:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    sget-object v1, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    if-ne v0, v1, :cond_1

    .line 813
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0
.end method

.method public onEnableLargeUiUpdatesOnFragment(Lbcj;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v1, p1, Lbcj;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 2021
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-nez v1, :cond_0

    .line 2022
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    goto :goto_0
.end method

.method public onForceVerificationEvent(Lbcm;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2238
    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->o(Z)V

    .line 2239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lbcm;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0168

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/LandingPageActivity$9;-><init>(Lcom/snapchat/android/LandingPageActivity;Lbcm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0166

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$8;

    invoke-direct {v2, p0}, Lcom/snapchat/android/LandingPageActivity$8;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2258
    return-void
.end method

.method public onGetCurrentActivityEvent(Lbcr;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2206
    return-void
.end method

.method public onImageSnapBitmapReadyForSnapPreview(Lbda;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1834
    iget-object v1, p1, Lbda;->mBitmap:Landroid/graphics/Bitmap;

    .line 1835
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1836
    const-string v2, "PreviewFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/preview/SnapPreviewFragment;

    .line 1837
    if-eqz v0, :cond_0

    .line 1838
    iget-object v2, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laji;

    iput-object v1, v2, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v2, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->a:Laji;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    iget-object v0, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->f:Lbht;

    invoke-virtual {v0}, Lbht;->b()V

    .line 1842
    :goto_0
    return-void

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onInAppNotificationEvent(Lbdb;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 778
    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Lamu;

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->k()Lamt;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Landroid/view/ViewStub;

    invoke-virtual {v1, v0, v2}, Lamu;->a(Lamt;Landroid/view/ViewStub;)V

    goto :goto_0
.end method

.method public onInChatSnapEvent(Lcom/snapchat/android/util/eventbus/InChatSnapEvent;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1929
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1930
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2045
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const/4 v0, 0x1

    .line 2048
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
    .line 2053
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    const/4 v0, 0x1

    .line 2056
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLeaveInAppNotificationPosterEvent(Lbdd;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 758
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iget-object v1, p1, Lbdd;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lms;->a(Ljava/lang/String;)Z

    .line 759
    return-void
.end method

.method public onLogoutEvent(Lbdh;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2006
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 2007
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 2009
    :cond_0
    const v0, 0x7f0c02e4

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 2011
    invoke-static {p0}, Latq;->a(Landroid/app/Activity;)V

    .line 2012
    return-void
.end method

.method public onMessagingGatewayInfoUpdatedEvent(Lbdi;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2187
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 2188
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->s()V

    .line 2192
    :goto_0
    return-void

    .line 2190
    :cond_0
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->j()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1477
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1478
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    .line 1479
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->r()V

    .line 1480
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1241
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 1242
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    .line 1244
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$LockedState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1246
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 1247
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-boolean v4, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-boolean v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    .line 1250
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lzb;

    invoke-virtual {v0, v4}, Lzb;->a(Z)V

    .line 1252
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_1

    .line 1254
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e_()V

    .line 1256
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->j_()Z

    move-result v1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    .line 1260
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->y_()J

    move-result-wide v0

    .line 1261
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Schedule to set flag to pop stacked fragments after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lain;

    invoke-virtual {v0}, Lain;->c()V

    .line 1268
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lavn;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ENTER_BACKGROUND:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0, v1}, Lavn;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 1269
    invoke-static {}, Lavr;->a()V

    .line 1270
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1272
    iput-boolean v4, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    .line 1274
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    invoke-virtual {v0}, Lakp;->x()V

    .line 1276
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Laej;

    new-instance v1, Laej$10;

    invoke-direct {v1, v0}, Laej$10;-><init>(Laej;)V

    invoke-static {v1}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 1279
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Lbbb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Unknown"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "HORIZONTAL"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lbbb;->b([Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Lbbb;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbb;->b([Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public onPushDelayedInAppNotificationEvent(Lbds;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 764
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iget-object v2, p1, Lbds;->sourceId:Ljava/lang/String;

    iget-object v0, v1, Lms;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms$a;

    iget-object v3, v1, Lms;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lms;->a(Lms$a;)V

    .line 765
    :cond_0
    return-void
.end method

.method public onQuickSnapEvent(Lcom/snapchat/android/util/eventbus/QuickSnapEvent;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1957
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1958
    return-void
.end method

.method public onRecentStoryReplyEvent(Lbdu;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1918
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startReplying to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lbdu;->friendUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p1, v0, Loa;->mRecentStoryReplyEvent:Lbdu;

    iput-boolean v3, v0, Loa;->mHasReplied:Z

    .line 1919
    invoke-virtual {p0, v3, v3}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 1920
    return-void
.end method

.method public onReplaceInAppNotificationEvent(Lbdy;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->a()V

    .line 770
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iget-object v1, p1, Lbdy;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lms;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->s:Lms;

    iget-object v1, p1, Lbdy;->newEvent:Lbcg;

    invoke-virtual {v0, v1}, Lms;->a(Lbcg;)V

    .line 773
    :cond_0
    return-void
.end method

.method public onReplySnapEvent(Lbdz;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    .line 1879
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1881
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1882
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lavv;

    sget v1, Lavv$a;->ACTIVITY_RESTART_CHECKPOINT$6dad94c5:I

    invoke-virtual {v0, v1}, Lavv;->a(I)V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->c()V

    .line 655
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a()V

    .line 656
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 657
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onRestart()V

    .line 658
    return-void
.end method

.method protected onResume()V
    .locals 12
    .annotation build Lawj;
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    invoke-static {}, Lnw;->d()V

    .line 527
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 529
    sput-object p0, Lcom/snapchat/android/LandingPageActivity;->t:Lcom/snapchat/android/LandingPageActivity;

    .line 531
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-boolean v3, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-boolean v3, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Z

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lzb;

    invoke-virtual {v0, v3}, Lzb;->a(Z)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ak:Landroid/os/Handler;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->aj:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->z:Z

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 545
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->b()V

    .line 547
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->o()V

    .line 627
    :goto_0
    return-void

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    if-nez v0, :cond_3

    .line 551
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 569
    :goto_1
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lakr;->V()Z

    move-result v0

    if-nez v0, :cond_5

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->b()V

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/ScAcceptTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->b()V

    .line 555
    invoke-static {p0}, Latq;->a(Landroid/app/Activity;)V

    .line 556
    invoke-direct {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->b(Z)V

    goto :goto_0

    .line 559
    :cond_4
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 560
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lnw;->a(Landroid/content/Intent;)V

    .line 561
    new-instance v0, Lamw;

    invoke-direct {v0, p0}, Lamw;-><init>(Landroid/content/Context;)V

    .line 562
    invoke-virtual {v0, p0}, Lamw;->a(Landroid/app/Activity;)V

    .line 563
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Laph;

    invoke-virtual {v0, v2, v3}, Laph;->a(ZZ)I

    .line 564
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->e()V

    .line 565
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->t()V

    goto :goto_1

    .line 576
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

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    iput-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity;->ai:Z

    :cond_7
    :goto_2
    const-string v0, "goToFragmentNum"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v7}, Lach;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    move v5, v1

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

    .line 579
    :cond_a
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_1e

    .line 581
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 582
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v1}, Lnz;->c(Ljava/lang/String;)V

    .line 587
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 590
    :cond_b
    const-string v1, "recovery_code_used"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 591
    const v1, 0x7f0c02be

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c02bd

    invoke-virtual {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "recovery_code_used"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 597
    :cond_c
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    .line 599
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 604
    :goto_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 607
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

    .line 610
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 611
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 615
    :cond_d
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 616
    invoke-static {}, Layy;->a()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()V

    .line 617
    invoke-static {}, Lbgt;->a()Lbgt;

    invoke-static {}, Lbgt;->b()V

    .line 620
    :cond_e
    invoke-static {}, Lakr;->aa()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lain;

    invoke-virtual {v0}, Lain;->b()V

    .line 624
    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    invoke-static {p0}, Lawf;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v3, v0, Lavu;->mIsImmersiveModeSupported:Z

    if-eqz v3, :cond_10

    iget-object v3, v0, Lavu;->mDecorView:Landroid/view/View;

    if-nez v3, :cond_1f

    .line 625
    :cond_10
    :goto_6
    invoke-static {}, Lnw;->e()V

    .line 626
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Lbbb;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbb;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_11
    const-string v0, "fromServerNotification"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ah:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    goto/16 :goto_2

    :cond_12
    if-eqz v4, :cond_13

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
    if-eqz v4, :cond_17

    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_16

    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    if-ne v0, v1, :cond_17

    :cond_16
    move v5, v6

    goto/16 :goto_3

    :cond_17
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    move v5, v0

    goto/16 :goto_3

    :pswitch_0
    const-string v0, "friendUsername"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Layg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_18
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Layg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o()V

    move v1, v3

    move-object v4, v0

    :goto_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    if-eqz v0, :cond_19

    if-nez v1, :cond_1b

    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Z)V

    :cond_19
    const-string v0, "fromServerNotification"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "seq_num"

    invoke-virtual {v7, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v0, :cond_1a

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1a

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v1, v10, v8

    if-ltz v1, :cond_1c

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Z()V

    :cond_1a
    :goto_9
    const-string v0, "friendUsername"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    goto/16 :goto_4

    :cond_1b
    move v1, v2

    goto :goto_8

    :cond_1c
    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_1a

    :cond_1d
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

    invoke-static {v4}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

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

    invoke-static {v0, v1}, Lnz;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 601
    :cond_1e
    invoke-static {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    goto/16 :goto_5

    .line 624
    :cond_1f
    iget-object v3, v0, Lavu;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v3, v0, Lavu;->mDecorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x100

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Lavu;->mDefaultFlags:I

    iget-object v3, v0, Lavu;->mDecorView:Landroid/view/View;

    iget v4, v0, Lavu;->mDefaultFlags:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v3, v0, Lavu;->mDecorView:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v3, v0, Lavu;->mIsImmersiveModeOn:Z

    invoke-virtual {v0, v1, v3}, Lavu;->a(ZZ)V

    goto/16 :goto_6

    :cond_20
    move v1, v2

    move-object v4, v0

    goto/16 :goto_7

    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 688
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "in_chat_snap_event"

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    const-string v0, "should_pop_fragments"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 712
    const-string v0, "view_pager_index"

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    goto :goto_0
.end method

.method public onSetPagingEnabledEvent(Lbeg;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v1, p1, Lbeg;->enablePaging:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1847
    return-void
.end method

.method public onShareDSnapEvent(Lafx;)V
    .locals 17
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1894
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    iget-object v4, v2, Lafx;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    move-object/from16 v0, p1

    iget v5, v0, Lafx;->b:F

    move-object/from16 v0, p1

    iget v6, v0, Lafx;->c:F

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v7

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v2, :cond_0

    if-nez v7, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 1899
    :goto_0
    if-eqz v2, :cond_1

    .line 1900
    invoke-direct/range {p0 .. p0}, Lcom/snapchat/android/LandingPageActivity;->q()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v2

    .line 1901
    if-eqz v2, :cond_1

    .line 1902
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1905
    :cond_1
    return-void

    .line 1896
    :cond_2
    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v2

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v10, v4, Lcom/snapchat/android/discover/ui/DSnapView;->k:J

    sub-long v10, v2, v10

    invoke-virtual {v7}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v9

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-boolean v2, v2, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    if-nez v2, :cond_f

    const v2, 0x7f0c0110

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v4, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lauv;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/snapchat/android/discover/ui/DSnapView;->r:Lcom/squareup/otto/Bus;

    new-instance v5, Lbcg;

    iget-object v6, v4, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v6, v6, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v7, v7, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/DSnapView;->getInAppNotificationSourceId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v2, v6, v7, v12}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v5, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v12, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v7, v12}, Laef;->d(Ljava/lang/String;)I

    move-result v7

    iget-object v12, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v12, v12, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v13, v13, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    iget-object v14, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    iget v14, v14, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iget-object v15, v4, Lcom/snapchat/android/discover/ui/DSnapView;->l:Laef;

    iget-object v0, v4, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Laef;->e(Ljava/lang/String;)I

    move-result v15

    iget-object v4, v4, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v4, v4, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->getSourceType()Llv;

    move-result-object v4

    if-nez v12, :cond_9

    if-eqz v8, :cond_6

    new-instance v8, Lhm;

    invoke-direct {v8}, Lhm;-><init>()V

    iput-object v2, v8, Lhm;->publisherId:Ljava/lang/String;

    iput-object v5, v8, Lhm;->dsnapId:Ljava/lang/String;

    iput-object v3, v8, Lhm;->editionId:Ljava/lang/String;

    invoke-static {v10, v11}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v8, Lhm;->timeViewed:Ljava/lang/Double;

    invoke-static {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v8, Lhm;->mediaType:Lih;

    iput-object v4, v8, Lhm;->source:Llv;

    if-gez v7, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v8, Lhm;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v8, Lhm;->snapIndexPos:Ljava/lang/Long;

    :cond_3
    invoke-static {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    new-instance v8, Lhh;

    invoke-direct {v8}, Lhh;-><init>()V

    iput-object v2, v8, Lhh;->publisherId:Ljava/lang/String;

    iput-object v5, v8, Lhh;->dsnapId:Ljava/lang/String;

    iput-object v3, v8, Lhh;->editionId:Ljava/lang/String;

    invoke-static {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v8, Lhh;->longformType:Lih;

    invoke-static {v10, v11}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v8, Lhh;->timeViewed:Ljava/lang/Double;

    iput-object v4, v8, Lhh;->source:Llv;

    if-gez v7, :cond_8

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    add-int/lit8 v2, v6, 0x1

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v8, Lhh;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v8, Lhh;->snapIndexPos:Ljava/lang/Long;

    :cond_7
    invoke-static {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    if-eqz v8, :cond_c

    new-instance v5, Lgz;

    invoke-direct {v5}, Lgz;-><init>()V

    iput-object v2, v5, Lgz;->publisherId:Ljava/lang/String;

    iput-object v13, v5, Lgz;->adsnapId:Ljava/lang/String;

    iput-object v3, v5, Lgz;->editionId:Ljava/lang/String;

    invoke-static {v10, v11}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lgz;->timeViewed:Ljava/lang/Double;

    invoke-static {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->a(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v5, Lgz;->mediaType:Lih;

    iput-object v4, v5, Lgz;->source:Llv;

    if-gez v7, :cond_b

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_a

    add-int/lit8 v2, v6, 0x1

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lgz;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgz;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgz;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgz;->adIndexCount:Ljava/lang/Long;

    :cond_a
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    new-instance v5, Lgv;

    invoke-direct {v5}, Lgv;-><init>()V

    iput-object v2, v5, Lgv;->publisherId:Ljava/lang/String;

    iput-object v13, v5, Lgv;->adsnapId:Ljava/lang/String;

    iput-object v3, v5, Lgv;->editionId:Ljava/lang/String;

    invoke-static {v10, v11}, Lawd;->a(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lgv;->timeViewed:Ljava/lang/Double;

    invoke-static {v9}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;->b(Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lih;

    move-result-object v2

    iput-object v2, v5, Lgv;->longformType:Lih;

    iput-object v4, v5, Lgv;->source:Llv;

    if-gez v7, :cond_e

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_d

    add-int/lit8 v2, v6, 0x1

    int-to-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lgv;->snapIndexCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgv;->snapIndexPos:Ljava/lang/Long;

    int-to-long v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgv;->adIndexPos:Ljava/lang/Long;

    int-to-long v2, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgv;->adIndexCount:Ljava/lang/Long;

    :cond_d
    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_3

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Laey;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v2, v3, :cond_12

    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)Laey;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v12, v4, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lafj;

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    new-instance v3, Lcom/snapchat/android/discover/ui/DSnapView$2;

    invoke-direct/range {v3 .. v11}, Lcom/snapchat/android/discover/ui/DSnapView$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    invoke-virtual {v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v5

    if-gtz v5, :cond_11

    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_10

    iget-object v2, v12, Lafj;->a:Landroid/view/View;

    const-string v4, "top"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget-object v7, v12, Lafj;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    neg-int v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lafj$1;

    invoke-direct {v4, v12}, Lafj$1;-><init>(Lafj;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_10
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v12, Lafj;->a:Landroid/view/View;

    iget-object v5, v12, Lafj;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v12, Lafj;->a:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v12, Lafj;->a:Landroid/view/View;

    invoke-virtual {v2, v6}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeView(Landroid/view/View;)V

    iget-object v2, v12, Lafj;->a:Landroid/view/View;

    invoke-virtual {v4, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->addView(Landroid/view/View;)V

    iget-object v2, v12, Lafj;->a:Landroid/view/View;

    neg-int v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTop(I)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual/range {v4 .. v11}, Lcom/snapchat/android/discover/ui/DSnapView;->a(FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    goto :goto_8
.end method

.method public onShowDialogEvent(Lcom/snapchat/android/util/eventbus/ShowDialogEvent;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2212
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2213
    iget v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->stringResId:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2218
    :goto_0
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_2

    .line 2219
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    if-eqz v1, :cond_1

    .line 2220
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    :goto_1
    return-void

    .line 2215
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    goto :goto_0

    .line 2222
    :cond_1
    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2224
    :cond_2
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_3

    .line 2225
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-static {p0, v1, v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_1

    .line 2227
    :cond_3
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_4

    .line 2228
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-static {p0, v1, v0, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_1

    .line 2231
    :cond_4
    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onSnapCapturedEvent(Lbej;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1776
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1778
    :cond_1
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    .line 1780
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbej;

    .line 1782
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lbej;

    iget-object v0, v0, Lbej;->mMediabryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1783
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    if-eqz v1, :cond_6

    .line 1784
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    iget-object v1, v1, Lbdz;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    .line 1791
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1793
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1797
    :cond_3
    new-instance v0, Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;-><init>()V

    .line 1798
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    if-eqz v1, :cond_8

    .line 1799
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    iput-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->d:Lbdz;

    .line 1803
    :cond_4
    :goto_2
    const-string v1, "PreviewFragment"

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    .line 1805
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1807
    invoke-static {}, Lakr;->R()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1808
    invoke-static {}, Lakr;->S()V

    .line 1809
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ALLOWED_GPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Laim;

    invoke-virtual {v0}, Laim;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-static {}, Lakr;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Laim;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$6;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, p0, v1}, Laim;->a(Landroid/content/Context;Laim$a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1785
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v1, :cond_7

    .line 1786
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1787
    :cond_7
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v1, :cond_2

    .line 1788
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->mRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1800
    :cond_8
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    if-eqz v1, :cond_4

    .line 1801
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

    iput-object v1, v0, Lcom/snapchat/android/preview/SnapPreviewFragment;->e:Lafx;

    goto :goto_2
.end method

.method public onSnapReadyForRecipientsEvent(Lben;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1535
    iget-object v0, p1, Lben;->mMediabryo:Laji;

    .line 1538
    iget-boolean v1, v0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v1, :cond_0

    .line 1539
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laji;)V

    .line 1557
    :goto_0
    return-void

    .line 1543
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lmw;

    invoke-virtual {v1}, Lmw;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laji;)V

    .line 1547
    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1548
    iget-boolean v2, p1, Lben;->mShouldGoToSendTo:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1549
    :cond_2
    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Laji;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1551
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    if-eqz v1, :cond_5

    .line 1552
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeo;

    invoke-direct {v2, v0, v3}, Lbeo;-><init>(Laji;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1554
    :cond_5
    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Laji;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onSnapReadyForSendingEvent(Lbeo;)V
    .locals 10
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1591
    iget-object v0, p1, Lbeo;->mMediabryo:Laji;

    .line 1592
    iget-boolean v3, p1, Lbeo;->mFromPreview:Z

    .line 1593
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Lmw;

    invoke-virtual {v1}, Lmw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1594
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Laji;)V

    .line 1596
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lzp;

    invoke-virtual {v1, v0}, Lzp;->e(Laji;)V
    :try_end_0
    .catch Lacw$b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v2, Lber;

    invoke-direct {v2}, Lber;-><init>()V

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
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    invoke-virtual {v1}, Loa;->c()V

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    invoke-virtual {v1}, Loa;->d()V

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v9}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1597
    :cond_3
    :goto_2
    return-void

    .line 1596
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->H:Lzo;

    invoke-virtual {v1, v0}, Lzo;->a(Laji;)V
    :try_end_1
    .catch Lacw$b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v1}, Lacw$b;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_0

    :cond_5
    move-object v2, v5

    check-cast v2, Lakg;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    iget v4, v4, Lbdz;->mOriginatingFragment:I

    if-ne v4, v7, :cond_8

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    :cond_6
    :goto_3
    invoke-static {v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Z)V

    :cond_7
    :goto_4
    iget-object v2, v2, Lakg;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v7

    :goto_5
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->M:Loa;

    invoke-virtual {v4}, Loa;->b()Z

    move-result v4

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lakp;

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laji;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILakp;)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lbdz;

    iget v4, v4, Lbdz;->mOriginatingFragment:I

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
    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

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

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lafx;

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

    new-instance v1, Lbbs;

    invoke-direct {v1}, Lbbs;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbt;

    invoke-direct {v1}, Lbbt;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    invoke-direct {p0, v7}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto/16 :goto_2
.end method

.method public onSoftNavigationBarEvent(Lbet;)V
    .locals 6
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1990
    iget-boolean v0, p1, Lbet;->shouldShow:Z

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    invoke-static {p0}, Lawf;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, v0, Lavu;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lavu;->mDecorView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-object v2, v0, Lavu;->mDecorView:Landroid/view/View;

    iget v3, v0, Lavu;->mDefaultFlags:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1, v5}, Lavu;->a(ZZ)V

    iput-boolean v5, v0, Lavu;->mIsImmersiveModeOn:Z

    goto :goto_0

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lavu;

    invoke-static {p0}, Lawf;->e(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, v0, Lavu;->mIsImmersiveModeSupported:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lavu;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lavu;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v1, v4}, Lavu;->a(ZZ)V

    iget-object v1, v0, Lavu;->mDecorView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v1, v0, Lavu;->mDecorView:Landroid/view/View;

    const/16 v2, 0x1702

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iput-boolean v4, v0, Lavu;->mIsImmersiveModeOn:Z

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lnw;->d()V

    .line 641
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStart()V

    .line 643
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->s()V

    .line 647
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 648
    invoke-static {}, Lnw;->e()V

    .line 649
    return-void
.end method

.method public onStartFragmentEvent(Lbev;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1520
    iget-object v1, p1, Lbev;->mFragmentToStart:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 1522
    iget-object v0, p1, Lbev;->mBaseFragmentTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p1, Lbev;->mBaseFragmentTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1526
    :cond_0
    iget-object v0, p1, Lbev;->mTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    :goto_0
    iget-boolean v2, p1, Lbev;->mHideOldFragmentFlag:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Z)V

    .line 1528
    return-void

    .line 1526
    :cond_1
    iget-object v0, p1, Lbev;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 662
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lnw;

    invoke-virtual {v0}, Lnw;->b()V

    .line 663
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->q:Lcom/snapchat/android/analytics/NotificationAnalytics;

    iput-object v7, v0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "context"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Loe;

    invoke-virtual {v0}, Loe;->b()V

    .line 666
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStop()V

    .line 668
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

    .line 669
    invoke-static {}, Lbaz;->a()V

    .line 671
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_2

    .line 672
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/util/chat/SecureChatService$1;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/chat/SecureChatService$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 673
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->al:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 675
    iput-boolean v6, p0, Lcom/snapchat/android/LandingPageActivity;->E:Z

    .line 677
    :cond_1
    sput-object v7, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 678
    iput-boolean v6, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 680
    :cond_2
    new-instance v0, Laim;

    invoke-direct {v0}, Laim;-><init>()V

    .line 681
    invoke-static {}, Lakr;->aa()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lain;

    invoke-virtual {v0}, Lain;->c()V

    .line 684
    :cond_3
    return-void

    .line 668
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStorySnapPostedFromSnapPreviewEvent(Lbfb;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 1722
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1723
    return-void
.end method

.method public onSwitchToChatEvent(Lbfd;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1583
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1585
    iget-object v0, p1, Lbfd;->mFriendUsername:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    .line 1586
    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 1587
    return-void
.end method

.method public onTapToViewDiscoverEvent(Lafz;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1856
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->D:Lafz;

    .line 1857
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1858
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setAnimating(Z)V

    .line 1859
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1860
    return-void
.end method

.method public onTitleBarEvent(Lbfk;)V
    .locals 8
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1851
    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/util/TitleBarManager;

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_8

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_7

    iget-object v2, p1, Lbfk;->mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    iget-object v4, p1, Lbfk;->mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    iget-object v5, p1, Lbfk;->mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Target visibility: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " locked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unlocked visibility: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    iput-object v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_1
    iget-object v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    sget-object v6, Lcom/snapchat/android/util/TitleBarManager$LockedState;->LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-ne v4, v6, :cond_2

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-ne v5, v4, :cond_7

    :cond_2
    if-eqz v5, :cond_3

    iput-object v5, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    :cond_3
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    if-ne v5, v4, :cond_5

    if-eqz v2, :cond_4

    iput-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_4
    iget-object v2, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    :cond_5
    if-eqz v2, :cond_7

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_6

    iget-boolean v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    if-nez v4, :cond_7

    :cond_6
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_9

    iget-boolean v4, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    if-nez v4, :cond_9

    .line 1852
    :cond_7
    :goto_1
    return-void

    :cond_8
    move v2, v1

    .line 1851
    goto :goto_0

    :cond_9
    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    if-ne v2, v4, :cond_a

    :goto_2
    iput-boolean v0, v3, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    invoke-virtual {v3}, Lcom/snapchat/android/util/TitleBarManager;->a()V

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public onUpdatingUserToDatabasesCompleteEvent(Lbfn;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 793
    iget-boolean v0, p1, Lbfn;->mSuccess:Z

    if-nez v0, :cond_0

    .line 794
    const-string v0, "Failed to upgrade. Try again later"

    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    :cond_0
    return-void
.end method

.method public onUpdatingUserToDatabasesEvent(Lbfo;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 785
    const-string v0, "Upgrading Snapchat"

    const-string v1, "Loading..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    .line 786
    return-void
.end method

.method public onVolumeViewChangedEvent(Lbft;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 2098
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->p()V

    .line 2099
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->af:Lcom/snapchat/android/ui/CustomVolumeView;

    iget-object v1, p1, Lbft;->mVolumeViewType:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;)V

    .line 2100
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 1499
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onWindowFocusChanged(Z)V

    .line 1500
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    if-eqz v0, :cond_0

    .line 1502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->v:Z

    .line 1504
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    invoke-direct {v1}, Lbdg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1512
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1513
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(I)V

    .line 1516
    :cond_1
    return-void
.end method

.method public produceInChatSnapEvent()Lcom/snapchat/android/util/eventbus/InChatSnapEvent;
    .locals 1
    .annotation runtime Lbph;
    .end annotation

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    return-object v0
.end method

.method public produceQuickSnapEvent()Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
    .locals 1
    .annotation runtime Lbph;
    .end annotation

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    return-object v0
.end method

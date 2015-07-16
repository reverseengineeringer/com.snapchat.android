.class public final Lavn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavn$a;,
        Lavn$c;,
        Lavn$d;,
        Lavn$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapListItemHandler"

.field private static sInstance:Lavn;


# instance fields
.field private final mChronologicalProviderFactory:Lzw;

.field public final mEditionViewerLauncher:Lafh;

.field private final mFeedIconManager:Lzj;

.field public final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation
.end field

.field public mLongPressStarted:Z

.field mMediaViewAnalytics:Lnx;

.field public final mMessagingAnalytics:Lnz;

.field private mOpenBroadcastSnapUrlRunnable:Lavn$a;

.field public mOpenSnapHandler:Landroid/os/Handler;

.field private mOpenSnapRunnable:Lavn$b;

.field protected mOurCampusStoryDialogLog:Laaq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mReplaySnapRunnable:Lavn$d;

.field mSecondTapForFailedStory:Z

.field private final mSendingMailman:Lzm;

.field public mSnapView:Lcom/snapchat/android/ui/SnapView;

.field public mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field final mStoryLoadAnalyticsReporter:Laab;

.field public final mTapToViewTouchListener:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

.field public mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;


# direct methods
.method private constructor <init>(Lzm;Lzj;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lnx;Landroid/os/Handler;Lnz;Laab;Lzw;Lafh;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavn;->mSecondTapForFailedStory:Z

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lavn;->mListeners:Ljava/util/Set;

    .line 109
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lavn;)V

    .line 110
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lavn;->mSendingMailman:Lzm;

    .line 112
    iput-object p2, p0, Lavn;->mFeedIconManager:Lzj;

    .line 113
    iput-object p3, p0, Lavn;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 114
    iput-object p4, p0, Lavn;->mMediaViewAnalytics:Lnx;

    .line 115
    iput-object p5, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    .line 116
    iput-object p8, p0, Lavn;->mChronologicalProviderFactory:Lzw;

    .line 117
    iput-object p9, p0, Lavn;->mEditionViewerLauncher:Lafh;

    .line 118
    iput-object p6, p0, Lavn;->mMessagingAnalytics:Lnz;

    .line 119
    iput-object p7, p0, Lavn;->mStoryLoadAnalyticsReporter:Laab;

    .line 120
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;)V

    iput-object v0, p0, Lavn;->mTapToViewTouchListener:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;

    .line 121
    return-void
.end method

.method public static declared-synchronized d()Lavn;
    .locals 11

    .prologue
    .line 124
    const-class v10, Lavn;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lavn;->sInstance:Lavn;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lavn;

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    invoke-static {}, Lzj;->a()Lzj;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v6

    new-instance v7, Laab;

    invoke-direct {v7}, Laab;-><init>()V

    new-instance v8, Lzw;

    invoke-direct {v8}, Lzw;-><init>()V

    invoke-static {}, Lafh;->a()Lafh;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lavn;-><init>(Lzm;Lzj;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lnx;Landroid/os/Handler;Lnz;Laab;Lzw;Lafh;)V

    sput-object v0, Lavn;->sInstance:Lavn;

    .line 130
    :cond_0
    sget-object v0, Lavn;->sInstance:Lavn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized e()V
    .locals 2

    .prologue
    .line 134
    const-class v0, Lavn;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lavn;->sInstance:Lavn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/SnapView;->e:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->getSnap()Laka;

    move-result-object v0

    .line 381
    instance-of v3, v0, Lakl;

    if-eqz v3, :cond_3

    check-cast v0, Lakl;

    iget-boolean v0, v0, Lakl;->mFailed:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 382
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lavn;->mSecondTapForFailedStory:Z

    if-eqz v0, :cond_7

    .line 383
    :cond_0
    iget-object v3, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->b:Lasg;

    iget v4, v0, Lasg;->b:I

    if-le v4, v1, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/snapchat/android/ui/SnapView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->f:Lasi;

    invoke-interface {v0}, Lasi;->i()V

    :cond_1
    invoke-virtual {v3}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbfi;

    invoke-direct {v1}, Lbfi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 388
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 381
    goto :goto_0

    .line 383
    :cond_4
    iget-boolean v4, v0, Lasg;->c:Z

    if-eqz v4, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lasg;->a:J

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    .line 385
    :cond_7
    iput-boolean v1, p0, Lavn;->mSecondTapForFailedStory:Z

    goto :goto_2
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SnapView;->a(F)V

    .line 401
    return-void
.end method

.method public final a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 332
    return-void
.end method

.method public final a(Laka;Lajk;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    instance-of v0, p1, Lajj;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laka;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laka;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    check-cast p1, Lajj;

    iget-object v0, p1, Lajj;->mActionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lavn$a;

    invoke-direct {v3, p0, v0}, Lavn$a;-><init>(Lavn;Ljava/lang/String;)V

    iput-object v3, p0, Lavn;->mOpenBroadcastSnapUrlRunnable:Lavn$a;

    iget-object v0, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v3, p0, Lavn;->mOpenBroadcastSnapUrlRunnable:Lavn$a;

    const-wide/16 v4, 0xbf

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lavn;->mLongPressStarted:Z

    :cond_0
    :goto_0
    move v0, v2

    .line 314
    :goto_1
    return v0

    .line 296
    :cond_1
    invoke-virtual {p1}, Laka;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lavn;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    .line 300
    invoke-interface {v0, p1}, Larn;->a(Laka;)V

    goto :goto_2

    .line 303
    :cond_2
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lbet;

    invoke-direct {v3, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 304
    new-instance v0, Lavn$b;

    invoke-direct {v0, p0, p1, p2}, Lavn$b;-><init>(Lavn;Laka;Lajk;)V

    iput-object v0, p0, Lavn;->mOpenSnapRunnable:Lavn$b;

    .line 305
    iget-object v0, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v2, p0, Lavn;->mOpenSnapRunnable:Lavn$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    iput-boolean v1, p0, Lavn;->mLongPressStarted:Z

    move v0, v1

    .line 307
    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p1}, Laka;->S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lavn;->mMediaViewAnalytics:Lnx;

    const-string v1, "tap_to_load"

    invoke-virtual {v0, p3, v1}, Lnx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "SNAP_TAP_TO_LOAD"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 312
    new-instance v0, Lpg;

    invoke-direct {v0, p1}, Lpg;-><init>(Laka;)V

    invoke-virtual {v0}, Lpg;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v0}, Lavn;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 394
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbey;

    invoke-direct {v1}, Lbey;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 396
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->c()V

    .line 406
    return-void
.end method

.method public final f()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Lavn;->mOpenSnapRunnable:Lavn$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Lavn;->mReplaySnapRunnable:Lavn$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-object v0, p0, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Lavn;->mOpenBroadcastSnapUrlRunnable:Lavn$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavn;->mLongPressStarted:Z

    .line 323
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHideSnapStoryEvent(Lbcy;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 348
    return-void
.end method

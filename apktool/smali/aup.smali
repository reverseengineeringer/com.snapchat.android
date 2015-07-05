.class public final Laup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqf$a;
.implements Lyu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laup$a;,
        Laup$c;,
        Laup$d;,
        Laup$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapListItemHandler"

.field private static sInstance:Laup;


# instance fields
.field private final mChronologicalProviderFactory:Lza;

.field public final mEditionViewerLauncher:Laeh;

.field public final mFeedIconManager:Lyn;

.field public mLongPressStarted:Z

.field mMediaViewAnalytics:Lng;

.field public final mMessagingAnalytics:Lni;

.field private mOpenBroadcastSnapUrlRunnable:Laup$a;

.field private mOpenSnapHandler:Landroid/os/Handler;

.field private mOpenSnapRunnable:Laup$b;

.field protected mOurCampusStoryDialogLog:Lzq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mReplaySnapRunnable:Laup$d;

.field mSecondTapForFailedStory:Z

.field private final mSendingMailman:Lyq;

.field public mSnapView:Lcom/snapchat/android/ui/SnapView;

.field public mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field final mStoryLoadAnalyticsReporter:Lze;

.field public final mTapToViewTouchListener:Laqf;

.field public mVerticalSwipeMyStory:Lcom/snapchat/android/ui/VerticalSwipeLayout;


# direct methods
.method private constructor <init>(Lyq;Lyn;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lng;Landroid/os/Handler;Lni;Lze;Lza;Laeh;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Laup;->mSecondTapForFailedStory:Z

    .line 106
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Laup;)V

    .line 107
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Laup;->mSendingMailman:Lyq;

    .line 109
    iput-object p2, p0, Laup;->mFeedIconManager:Lyn;

    .line 110
    iput-object p3, p0, Laup;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 111
    iput-object p4, p0, Laup;->mMediaViewAnalytics:Lng;

    .line 112
    iput-object p5, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    .line 113
    iput-object p8, p0, Laup;->mChronologicalProviderFactory:Lza;

    .line 114
    iput-object p9, p0, Laup;->mEditionViewerLauncher:Laeh;

    .line 115
    iput-object p6, p0, Laup;->mMessagingAnalytics:Lni;

    .line 116
    iput-object p7, p0, Laup;->mStoryLoadAnalyticsReporter:Lze;

    .line 117
    new-instance v0, Laqf;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Laqf;-><init>(Landroid/content/Context;Laqf$a;)V

    iput-object v0, p0, Laup;->mTapToViewTouchListener:Laqf;

    .line 118
    return-void
.end method

.method public static declared-synchronized d()Laup;
    .locals 11

    .prologue
    .line 121
    const-class v10, Laup;

    monitor-enter v10

    :try_start_0
    sget-object v0, Laup;->sInstance:Laup;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Laup;

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v1

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lng;->a()Lng;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lni;->a()Lni;

    move-result-object v6

    new-instance v7, Lze;

    invoke-direct {v7}, Lze;-><init>()V

    new-instance v8, Lza;

    invoke-direct {v8}, Lza;-><init>()V

    invoke-static {}, Laeh;->a()Laeh;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Laup;-><init>(Lyq;Lyn;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lng;Landroid/os/Handler;Lni;Lze;Lza;Laeh;)V

    sput-object v0, Laup;->sInstance:Laup;

    .line 127
    :cond_0
    sget-object v0, Laup;->sInstance:Laup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized e()V
    .locals 2

    .prologue
    .line 131
    const-class v0, Laup;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Laup;->sInstance:Laup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    .line 131
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

    .line 357
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/SnapView;->e:Z

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->getSnap()Laje;

    move-result-object v0

    .line 359
    instance-of v3, v0, Lajr;

    if-eqz v3, :cond_3

    check-cast v0, Lajr;

    iget-boolean v0, v0, Lajr;->mFailed:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 360
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laup;->mSecondTapForFailedStory:Z

    if-eqz v0, :cond_7

    .line 361
    :cond_0
    iget-object v3, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->b:Larh;

    iget v4, v0, Larh;->b:I

    if-le v4, v1, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/snapchat/android/ui/SnapView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->f:Larj;

    invoke-interface {v0}, Larj;->i()V

    :cond_1
    invoke-virtual {v3}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/snapchat/android/ui/SnapView;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbej;

    invoke-direct {v1}, Lbej;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 366
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 359
    goto :goto_0

    .line 361
    :cond_4
    iget-boolean v4, v0, Larh;->c:Z

    if-eqz v4, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Larh;->a:J

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    .line 363
    :cond_7
    iput-boolean v1, p0, Laup;->mSecondTapForFailedStory:Z

    goto :goto_2
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SnapView;->a(F)V

    .line 379
    return-void
.end method

.method public final a(Lain;)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p1, Lain;->mActionUrl:Ljava/lang/String;

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v1, Laup$a;

    invoke-direct {v1, p0, v0}, Laup$a;-><init>(Laup;Ljava/lang/String;)V

    iput-object v1, p0, Laup;->mOpenBroadcastSnapUrlRunnable:Laup$a;

    .line 273
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mOpenBroadcastSnapUrlRunnable:Laup$a;

    const-wide/16 v2, 0xbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Laup;->mLongPressStarted:Z

    goto :goto_0
.end method

.method public final a(Laio;)V
    .locals 0
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 602
    return-void
.end method

.method public final a(Laje;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 594
    return-void
.end method

.method public final a(Laje;Laio;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 591
    return-void
.end method

.method public final a(Laje;Laio;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    instance-of v0, p1, Lain;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laje;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laje;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    check-cast p1, Lain;

    invoke-virtual {p0, p1}, Laup;->a(Lain;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Laje;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const-string v0, "SnapListItemHandler"

    const-string v1, "Snap is loaded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdt;

    invoke-direct {v1, v3}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 284
    new-instance v0, Laup$b;

    invoke-direct {v0, p0, p1, p2}, Laup$b;-><init>(Laup;Laje;Laio;)V

    iput-object v0, p0, Laup;->mOpenSnapRunnable:Laup$b;

    .line 285
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mOpenSnapRunnable:Laup$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Laup;->mLongPressStarted:Z

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Laje;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "SnapListItemHandler"

    const-string v1, "Snap is not loaded. Calling LoadSnapMediaTask"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Laup;->mMediaViewAnalytics:Lng;

    const-string v1, "tap_to_load"

    invoke-virtual {v0, p3, v1}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "SNAP_TAP_TO_LOAD"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 291
    new-instance v0, Lop;

    invoke-direct {v0, p1}, Lop;-><init>(Laje;)V

    invoke-virtual {v0}, Lop;->a()V

    goto :goto_0
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 599
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/snapchat/android/model/Snap;Laio;)V
    .locals 4

    .prologue
    .line 261
    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Laup$d;

    check-cast p2, Laje;

    invoke-direct {v0, p0, p2, p3, p1}, Laup$d;-><init>(Laup;Laje;Laio;Landroid/content/Context;)V

    iput-object v0, p0, Laup;->mReplaySnapRunnable:Laup$d;

    .line 263
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mReplaySnapRunnable:Laup$d;

    const-wide/16 v2, 0xbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Laup;->mLongPressStarted:Z

    .line 266
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 310
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Laup;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 233
    const-string v1, "feed"

    invoke-virtual {p0, v0, p1, v1}, Laup;->a(Laje;Laio;Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {p0, v0}, Laup;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;)V

    .line 372
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdz;

    invoke-direct {v1}, Lbdz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 374
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->d()V

    .line 384
    return-void
.end method

.method public final f()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mOpenSnapRunnable:Laup$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mReplaySnapRunnable:Laup$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Laup;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, p0, Laup;->mOpenBroadcastSnapUrlRunnable:Laup$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Laup;->mLongPressStarted:Z

    .line 301
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onHideSnapStoryEvent(Lbby;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 326
    return-void
.end method

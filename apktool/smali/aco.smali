.class public final Laco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmm$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmm$a",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ladj;

.field private final b:Ladd;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lack;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v0

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laco;-><init>(Ladj;Ladd;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ladj;Ladd;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laco;->c:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laco;->d:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Laco;->b:Ladd;

    .line 42
    iput-object p1, p0, Laco;->a:Ladj;

    .line 43
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Laco;->a:Ladj;

    iget-object v1, v0, Ladj;->g:Landroid/os/Handler;

    new-instance v2, Ladj$8;

    invoke-direct {v2, v0, p1, p2}, Ladj$8;-><init>(Ladj;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lmo;)V
    .locals 6

    .prologue
    .line 26
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, p0, Laco;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laco;->c:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lack;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Timed out while resolving ad for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_TIMEOUT:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lmo;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Content No Fill Response received for %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CONTENT_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lmo;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v0, :cond_3

    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Exception caught while resolving ad for %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lmo;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p2, Lmo;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$1;->$SwitchMap$com$snapchat$android$ads$AdRequestError$ErrorCode:[I

    iget-object v0, v0, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    :goto_2
    invoke-direct {p0, p1, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CONTENT_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CLIENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_TIMEOUT:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_4
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_5
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_6
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :pswitch_7
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_UNKNOWN:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lmo;->mTransformedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Resolved ad for %s, url: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lmo;->mTransformedUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Laco;->a:Ladj;

    iget-object v2, p2, Lmo;->mTransformedUrl:Ljava/lang/String;

    iget-object v3, p2, Lmo;->mTransformedUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lmo;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ladj;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    iget-object v0, v0, Ladj;->h:Landroid/content/Context;

    iget-object v5, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {v0, v5, v2, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Null ad url for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Laco;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 7
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    iget-object v2, p0, Laco;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v3, p0, Laco;->c:Ljava/util/Map;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string v1, "DSnapAdResolver"

    const-string v3, "DISCOVER-MEDIA: Skipping resolve for ad %s since there is a pending request for it."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    monitor-exit v2

    .line 63
    :goto_0
    return v0

    .line 58
    :cond_0
    const-string v0, "DSnapAdResolver"

    const-string v3, "DISCOVER-MEDIA: Requesting resolve for ad %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v3, Lack;

    invoke-direct {v3, p1, p0}, Lack;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;Lmm$a;)V

    .line 60
    iget-object v0, p0, Laco;->c:Ljava/util/Map;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Laco;->b:Ladd;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->RESOLVING_AD:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p1, v4}, Ladd;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 62
    new-instance v4, Lmp$a;

    invoke-direct {v4}, Lmp$a;-><init>()V

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lmp$a;->mAdType:I

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iput-object v0, v4, Lmp$a;->mChannelName:Ljava/lang/String;

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iput-object v0, v4, Lmp$a;->mEditionName:Ljava/lang/String;

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    iput v0, v4, Lmp$a;->mPosition:I

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Ljava/lang/String;

    iput-object v0, v4, Lmp$a;->mAdUnitId:Ljava/lang/String;

    iget-object v0, v3, Lack;->mAdContainer:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lmp$a;->mTargetingParams:Ljava/util/Map;

    invoke-virtual {v4}, Lmp$a;->a()Lmp;

    move-result-object v0

    const-string v4, "AD_RESOLVE_TIME"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    iput-object v4, v3, Lmm;->mMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v4, v3, Lmm;->mMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "type"

    invoke-virtual {v3}, Lmm;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v4, v3, Lmm;->mMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "reachability"

    iget-object v6, v3, Lmm;->mNetworkStatusManager:Lale;

    invoke-virtual {v6}, Lale;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v4, v3, Lmm;->mMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v4, v3, Lmm;->mAdManager:Lmj;

    invoke-virtual {v4, v0, v3}, Lmj;->a(Lml;Lmn;)V

    iget-object v0, v3, Lmm;->mTimeoutTimer:Ljava/util/Timer;

    iget-object v3, v3, Lmm;->mTimeoutRunnable:Ljava/util/TimerTask;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 63
    monitor-exit v2

    move v0, v1

    goto/16 :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

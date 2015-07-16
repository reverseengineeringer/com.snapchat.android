.class public final Lcom/snapchat/android/analytics/NetworkAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
    }
.end annotation


# static fields
.field public static final CLIENT_ID_PARAM:Ljava/lang/String; = "client_id"

.field public static final CONTENT_READY_EVENT:Ljava/lang/String; = "CONTENT_READY"

.field public static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field public static final FIRST_ITEM_READY_EVENT:Ljava/lang/String; = "FIRST_ITEM_READY"

.field public static final FROM_NOTIFICATION_PARAM:Ljava/lang/String; = "from_notification"

.field public static final IS_DOUBLE_POST_PARAM:Ljava/lang/String; = "is_double_post"

.field public static final IS_FULL_RESPONSE_PARAM:Ljava/lang/String; = "is_full_response"

.field public static final MEDIA_DURATION_PARAM:Ljava/lang/String; = "media_duration"

.field public static final MEDIA_SIZE_PARAM:Ljava/lang/String; = "media_size"

.field public static final PATH_PARAM:Ljava/lang/String; = "path"

.field public static final PREVIEW_SCREEN_CONTEXT:Ljava/lang/String; = "preview_screen"

.field public static final PULL_TO_REFRESH_EVENT:Ljava/lang/String; = "PULL_TO_REFRESH"

.field public static final REACHABILITY_PARAM:Ljava/lang/String; = "reachability"

.field public static final RECEIVED_BYTES_PARAM:Ljava/lang/String; = "return_size_bytes"

.field public static final RESPONSE_CHECKSUM_PARAM:Ljava/lang/String; = "response_checksum"

.field public static final RESPONSE_COMPARE_RESULTS_DICT_PARAM:Ljava/lang/String; = "response_compare_results_dict"

.field public static final RESPONSE_COMPARE_RESULT_PARAM:Ljava/lang/String; = "response_compare_result"

.field public static final RETRY_POST_FAILED_STORY_CONTEXT:Ljava/lang/String; = "retry_post_failed_story"

.field public static final RETRY_SEND_FAILED_SNAP_CONTEXT:Ljava/lang/String; = "retry_send_failed_snap"

.field public static final SEND_TO_SCREEN_CONTEXT:Ljava/lang/String; = "send_to_screen"

.field public static final SERVER_INFO_PARAM:Ljava/lang/String; = "server_info"

.field public static final SERVER_LATENCY_PARAM:Ljava/lang/String; = "server_latency"

.field public static final SNAP_SENT_DELAY_EVENT:Ljava/lang/String; = "SNAP_SENT_DELAY"

.field public static final SNAP_SENT_FAILED_EVENT:Ljava/lang/String; = "SNAP_SENT_FAILED"

.field protected static final SNAP_SENT_SNAP_DUMMY_EVENT:Ljava/lang/String; = "SNAP_SENT_SNAP_DUMMY"

.field protected static final SNAP_SENT_STORY_DUMMY_EVENT:Ljava/lang/String; = "SNAP_SENT_STORY_DUMMY"

.field public static final SNAP_SENT_SUCCESS_EVENT:Ljava/lang/String; = "SNAP_SENT_SUCCESS"

.field public static final STATUS_CODE_PARAM:Ljava/lang/String; = "status_code"

.field public static final STORY_POST_DELAY_EVENT:Ljava/lang/String; = "STORY_POST_DELAY"

.field public static final SUCCESS_PARAM:Ljava/lang/String; = "success"

.field public static final TYPE_PARAM:Ljava/lang/String; = "type"

.field public static final WITH_MEDIA_PARAM:Ljava/lang/String; = "with_media"

.field private static final sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;


# instance fields
.field public final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field public final mRequestTaskResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTimedMetricsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 105
    iput-object p2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    .line 108
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 510
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 512
    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    monitor-exit v1

    .line 515
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/util/UUID;)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "from_notification"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 450
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "context"

    invoke-static {p2}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/framework/EasyMetric;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 527
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 529
    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mTimedMetricsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 477
    if-nez p2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 482
    if-eqz v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "reachability"

    const-string v3, "reachability"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 484
    const-string v1, "status_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "success"

    invoke-static {v1}, Lauo;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 486
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "return_size_bytes"

    const-string v3, "return_size_bytes"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 487
    const-string v1, "server_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    const-string v1, "server_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjx;

    .line 489
    sget-object v1, Lbjx$a;->EQUAL:Lbjx$a;

    invoke-virtual {v0}, Lbjx;->e()Lbjx$a;

    move-result-object v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    .line 491
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "is_full_response"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 492
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "server_latency"

    invoke-virtual {v0}, Lbjx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 493
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "response_checksum"

    invoke-virtual {v0}, Lbjx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 494
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "response_compare_result"

    invoke-virtual {v0}, Lbjx;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 495
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "response_compare_results_dict"

    invoke-virtual {v0}, Lbjx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 489
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V
    .locals 3

    .prologue
    .line 459
    const-string v0, "PULL_TO_REFRESH"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 461
    const-string v1, "PULL_TO_REFRESH"

    const-string v2, "PULL_TO_REFRESH"

    invoke-direct {p0, v1, v2, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 462
    return-void
.end method

.method public final a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 416
    const-string v0, "CONTENT_READY"

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 417
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbjx;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lbjx;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_1

    .line 248
    const-string v0, "status_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "return_size_bytes"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "reachability"

    invoke-virtual {v0, v2, p6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz p7, :cond_0

    sget-object v0, Lbjx$a;->EQUAL:Lbjx$a;

    invoke-virtual {p7}, Lbjx;->e()Lbjx$a;

    move-result-object v2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v2, "server_info"

    invoke-virtual {v1, v2, p7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "is_full_response"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 249
    :cond_0
    const-string v0, "is_double_post"

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 250
    invoke-direct {p0, p1, p2, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 252
    :cond_1
    return-void

    .line 248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 182
    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "with_media"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "media_size"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 188
    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 189
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 263
    :cond_0
    const-string v1, "reachability"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "status_code"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v1, v2, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 269
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 305
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    const-string v1, "media_size"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "with_media"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 309
    invoke-direct {p0, p1, p3, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 312
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 316
    :cond_1
    const-string v1, "path"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 317
    invoke-direct {p0, p2, p3, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 318
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDZ)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    const-string v1, "success"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "type"

    if-eqz p4, :cond_2

    const-string v0, "video"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "media_duration"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 375
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_1

    .line 377
    if-eqz p7, :cond_3

    const-string v0, "SNAP_SENT_SUCCESS"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "type"

    if-eqz p4, :cond_4

    const-string v0, "video"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 381
    :cond_1
    return-void

    .line 369
    :cond_2
    const-string v0, "image"

    goto :goto_0

    .line 377
    :cond_3
    const-string v0, "SNAP_SENT_FAILED"

    goto :goto_1

    :cond_4
    const-string v0, "image"

    goto :goto_2
.end method

.method public final a(Ljava/util/UUID;)V
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 469
    const-string v0, "PULL_TO_REFRESH"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/util/UUID;)V

    .line 470
    const-string v0, "PULL_TO_REFRESH"

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 474
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_ITEM_READY"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CONTENT_READY"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 436
    return-void
.end method

.method public final b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 430
    const-string v0, "FIRST_ITEM_READY"

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 431
    return-void
.end method

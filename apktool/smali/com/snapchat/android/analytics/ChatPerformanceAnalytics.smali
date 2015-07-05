.class public final Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;
    }
.end annotation


# static fields
.field protected static final CANCELED_KEY:Ljava/lang/String; = "canceled"

.field protected static final CHAT_MEDIA_DOWNLOAD_METRIC_NAME:Ljava/lang/String; = "CHAT_MEDIA_DOWNLOAD"

.field protected static final DISCOVER_SHARE_BAR_ICON_LOAD_METRIC_NAME:Ljava/lang/String; = "DISCOVER_SHARE_BAR_ICON_LOAD"

.field protected static final DISCOVER_SHARE_LINK_VALIDATION_METRIC_NAME:Ljava/lang/String; = "DISCOVER_SHARE_LINK_VALIDATION"

.field protected static final DISCOVER_SHARE_LOCKED_VIDEO_LOAD_METRIC_NAME:Ljava/lang/String; = "DISCOVER_SHARE_LOCKED_VIDEO_LOAD"

.field private static final INSTANCE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field protected static final LINK_STATUS_KEY:Ljava/lang/String; = "link_status"

.field protected static final REACHABILITY_KEY:Ljava/lang/String; = "reachability"

.field protected static final SIZE_KEY:Ljava/lang/String; = "size"

.field protected static final STATUS_KEY:Ljava/lang/String; = "status"

.field protected static final TYPE_KEY:Ljava/lang/String; = "type"

.field protected static final VIDEO_ERROR_KEY:Ljava/lang/String; = "video_error"


# instance fields
.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field public final mNetworkStatusManager:Lale;

.field private final mReportedLockedVideoLoadMetricIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
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
    .line 22
    new-instance v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->INSTANCE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lale;->a()Lale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mReportedLockedVideoLoadMetricIds:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lale;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->INSTANCE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V
    .locals 3

    .prologue
    .line 100
    const-string v0, "CHAT_MEDIA_DOWNLOAD"

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to log end for CHAT_MEDIA_DOWNLOAD metric with metric named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const-string v0, "size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3

    .prologue
    .line 89
    const-string v0, "CHAT_MEDIA_DOWNLOAD"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mNetworkStatusManager:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 77
    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    monitor-exit v1

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    monitor-exit v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mTimedMetricsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Logging DISCOVER_SHARE_BAR_ICON_LOAD cannot be both successful and canceled!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    const-string v0, "DISCOVER_SHARE_BAR_ICON_LOAD"

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    if-eqz p3, :cond_2

    .line 158
    const-string v1, "status"

    const-string v2, "CANCELED"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    if-eqz p2, :cond_3

    .line 160
    const-string v1, "status"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "status"

    const-string v2, "FAILED"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mReportedLockedVideoLoadMetricIds:Ljava/util/Set;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mReportedLockedVideoLoadMetricIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "DISCOVER_SHARE_LOCKED_VIDEO_LOAD"

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const-string v2, "canceled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "video_error"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->mReportedLockedVideoLoadMetricIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

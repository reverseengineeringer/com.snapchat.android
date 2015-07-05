.class public final Labq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Labq;


# instance fields
.field public final a:Lale;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final d:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final e:Ladd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Labq;

    invoke-direct {v0}, Labq;-><init>()V

    sput-object v0, Labq;->c:Labq;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lale;->a()Lale;

    move-result-object v1

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labq;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;Ladd;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;Ladd;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Labq;->d:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 78
    iput-object p2, p0, Labq;->a:Lale;

    .line 79
    iput-object p3, p0, Labq;->e:Ladd;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    return-void
.end method

.method public static a()Labq;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Labq;->c:Labq;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 538
    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 510
    iget-object v1, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 95
    const-string v1, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 97
    iget-object v2, p0, Labq;->e:Ladd;

    invoke-virtual {v2, p1}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v0, "publisher_name"

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "intro_video_url"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Labq;->e:Ladd;

    invoke-virtual {v2, p1}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 110
    :try_start_0
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v3, v0}, Labq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 112
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v3, v0, v1}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 114
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 528
    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v2, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
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
    .locals 3

    .prologue
    .line 285
    const-string v0, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v0, p1}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    const-string v1, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method public final b(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Labq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 129
    :try_start_0
    const-string v2, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-direct {p0, v2, v0}, Labq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    .line 131
    const-string v3, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-virtual {p0, v3, v0, v2}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 133
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

.method public final b(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 322
    const-string v0, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-virtual {p0, v0, p1}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    const-string v1, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public final c(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v0, p0, Labq;->e:Ladd;

    invoke-virtual {v0, p1}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 151
    const-string v1, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-virtual {p0, v1, v0}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    .line 153
    const-string v2, "publisher_name"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reachability"

    iget-object v3, p0, Labq;->a:Lale;

    invoke-virtual {v3}, Lale;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    iget-object v3, p0, Labq;->e:Ladd;

    invoke-virtual {v3, p1}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 159
    :cond_2
    const-string v1, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v1, v0}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const-string v1, "publisher_name"

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "intro_video_url"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Labq;->e:Ladd;

    invoke-virtual {v2, p1}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method

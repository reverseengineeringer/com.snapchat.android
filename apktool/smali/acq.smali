.class public final Lacq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lacq;


# instance fields
.field public final a:Lama;

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

.field private final e:Laed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lacq;

    invoke-direct {v0}, Lacq;-><init>()V

    sput-object v0, Lacq;->c:Lacq;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    invoke-static {}, Laed;->a()Laed;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lacq;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;Laed;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;Laed;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lacq;->d:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 80
    iput-object p2, p0, Lacq;->a:Lama;

    .line 81
    iput-object p3, p0, Lacq;->e:Laed;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    return-void
.end method

.method public static a()Lacq;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lacq;->c:Lacq;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 545
    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x0

    .line 548
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
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 517
    iget-object v1, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    monitor-exit v1

    .line 522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 523
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
    .line 126
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 132
    :try_start_0
    const-string v2, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-direct {p0, v2, v0}, Lacq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const-string v2, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    .line 134
    const-string v3, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-virtual {p0, v3, v0, v2}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 136
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

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 97
    const-string v1, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 98
    const-string v2, "source"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 100
    iget-object v2, p0, Lacq;->e:Laed;

    invoke-virtual {v2, p1}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
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

    iget-object v2, p0, Lacq;->a:Lama;

    invoke-virtual {v2}, Lama;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Lacq;->e:Laed;

    invoke-virtual {v2, p1}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 113
    :try_start_0
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v3, v0}, Lacq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 115
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v3, v0, v1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 117
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
    .line 533
    iget-object v1, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 535
    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 538
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v2, p0, Lacq;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
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
    .line 288
    const-string v0, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v0, p1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
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

    iget-object v2, p0, Lacq;->a:Lama;

    invoke-virtual {v2}, Lama;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method public final b(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lacq;->e:Laed;

    invoke-virtual {v0, p1}, Laed;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 154
    const-string v1, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-virtual {p0, v1, v0}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    const-string v2, "publisher_name"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reachability"

    iget-object v3, p0, Lacq;->a:Lama;

    invoke-virtual {v3}, Lama;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    iget-object v3, p0, Lacq;->e:Laed;

    invoke-virtual {v3, p1}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 162
    :cond_2
    const-string v1, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-virtual {p0, v1, v0}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
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

    iget-object v2, p0, Lacq;->a:Lama;

    invoke-virtual {v2}, Lama;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Lacq;->e:Laed;

    invoke-virtual {v2, p1}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 325
    const-string v0, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-virtual {p0, v0, p1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
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

    iget-object v2, p0, Lacq;->a:Lama;

    invoke-virtual {v2}, Lama;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 332
    :cond_0
    return-void
.end method

.class public Lcom/snapchat/android/analytics/framework/EasyMetricManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final b:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    monitor-enter v2

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    move-object v1, v0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v2

    return-object v1

    .line 73
    :cond_2
    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 38
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    monitor-exit v1

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 47
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    monitor-exit v1

    .line 146
    :goto_0
    return-object p0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;
    .locals 3

    .prologue
    .line 107
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    :cond_0
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public final Lbae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbba;


# static fields
.field public static final AVG_PARAM:Ljava/lang/String; = "avg"

.field private static final MAX_LATENCY_LIST_SIZE:I = 0xa

.field private static final MAX_LATENCY_SUMMARY_QUEUE_SIZE:I = 0x5

.field public static final MAX_PARAM:Ljava/lang/String; = "max"

.field public static final UI_DELAYS_PARAM:Ljava/lang/String; = "ui_delays"


# instance fields
.field private final mLatencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatencySummaryQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbae;->mLatencyList:Ljava/util/List;

    .line 27
    invoke-static {}, Ldc;->a()Ldc;

    move-result-object v0

    iput-object v0, p0, Lbae;->mLatencySummaryQueue:Ljava/util/Queue;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbae;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lbae;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lbae;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lbae;->mLatencySummaryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 89
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/framework/EasyMetric;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v2, p0, Lbae;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v0, p0, Lbae;->mLatencySummaryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lbae;->mLatencySummaryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v0, "ui_delays"

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 68
    :cond_1
    return-object p1
.end method

.method public final a(J)V
    .locals 13

    .prologue
    .line 38
    iget-object v6, p0, Lbae;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 39
    :try_start_0
    iget-object v0, p0, Lbae;->mLatencyList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lbae;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 41
    iget-object v7, p0, Lbae;->mLatencyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    const-string v2, "avg"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "max"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Ldm;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldm;

    move-result-object v0

    .line 42
    :goto_1
    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lbae;->mLatencySummaryQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    iget-object v0, p0, Lbae;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    :cond_2
    monitor-exit v6

    return-void

    .line 41
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lbae;->a()V

    .line 34
    return-void
.end method

.method public final varargs b([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lbae;->a()V

    .line 53
    return-void
.end method

.class public Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Laol;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;-><init>(Laol;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Laol;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->b:Laol;

    .line 40
    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->b:Laol;

    invoke-virtual {v0}, Laol;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 71
    :goto_1
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v2, Lakq$a;

    invoke-direct {v2, p1}, Lakq$a;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, p2}, Lakq$a;->a(Ljava/util/Map;)Lakq$a;

    .line 57
    invoke-virtual {v2, p3}, Lakq$a;->a(Ljava/util/Map;)Lakq$a;

    .line 58
    if-eqz p4, :cond_2

    .line 59
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lakq$a;->a(Ljava/lang/String;Ljava/lang/String;)Lakq$a;

    goto :goto_2

    .line 63
    :cond_2
    if-eqz p5, :cond_3

    .line 64
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lakq$a;->b(Ljava/lang/String;Ljava/lang/String;)Lakq$a;

    goto :goto_3

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    invoke-virtual {v2}, Lakq$a;->a()Lakq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->c()V

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    return-void
.end method

.class public final Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;
    }
.end annotation


# instance fields
.field public final a:Labq;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Labq;->a()Labq;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;-><init>(Labq;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Labq;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->b:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->d:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->e:I

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 101
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    .line 102
    if-eqz v1, :cond_0

    sget-object v3, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    if-ne v1, v3, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v3, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->a:Labq;

    iget-object v1, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    const-string v5, "DISCOVER_DSNAP_WAIT_TIME"

    invoke-virtual {v3, v5, v1}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "loading"

    :goto_1
    const-string v4, "type"

    invoke-virtual {v5, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v4, "reachability"

    iget-object v3, v3, Labq;->a:Lale;

    invoke-virtual {v3}, Lale;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    sget-object v3, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->REPORTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_3
    return-void
.end method

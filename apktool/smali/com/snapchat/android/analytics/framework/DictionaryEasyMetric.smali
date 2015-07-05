.class public Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;

.field private final f:Lbgk;

.field private final g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->h:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lbgl;

    invoke-direct {v0}, Lbgl;-><init>()V

    iget-object v0, v0, Lbgl;->mClock:Lbgk;

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;-><init>(Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->f:Lbgk;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 60
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->h:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_2
    monitor-exit v1

    .line 186
    return-object p0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d(Ljava/lang/String;)V

    .line 263
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 285
    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 291
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 299
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 302
    :cond_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d(Ljava/lang/String;)V

    .line 303
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

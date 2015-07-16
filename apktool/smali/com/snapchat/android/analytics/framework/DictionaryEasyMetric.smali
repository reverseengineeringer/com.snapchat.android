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

.field private final f:Lbhk;

.field private final g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->h:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;-><init>(Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->f:Lbhk;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 61
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->h:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    monitor-exit v1

    .line 187
    return-object p0

    .line 186
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
    .line 262
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 264
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
    .line 236
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
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
    .line 286
    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 292
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 300
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 303
    :cond_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 304
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

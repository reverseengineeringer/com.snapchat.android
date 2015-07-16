.class public final Lalw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalw$b;,
        Lalw$c;,
        Lalw$a;
    }
.end annotation


# static fields
.field private static final e:Lalw;


# instance fields
.field public final a:Lamd;

.field public b:Z

.field public c:Lalw$c;

.field protected final d:Lamg$a;

.field private final f:Ljava/lang/StringBuilder;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Laly;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lbgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgn",
            "<",
            "Lamg;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lbgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgn",
            "<",
            "Lbgl;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lamj;

.field private final l:Laml;

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Lami;

.field private final o:Lalt;

.field private final p:Lamm;

.field private final q:Lalx;

.field private r:Lalv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lalw;

    invoke-direct {v0}, Lalw;-><init>()V

    sput-object v0, Lalw;->e:Lalw;

    return-void
.end method

.method private constructor <init>()V
    .locals 17

    .prologue
    .line 134
    new-instance v0, Lbgn;

    sget-object v1, Lamg;->a:Ljavax/inject/Provider;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbgn;-><init>(Ljavax/inject/Provider;I)V

    new-instance v14, Lbgn;

    new-instance v1, Lalw$3;

    invoke-direct {v1}, Lalw$3;-><init>()V

    const/16 v2, 0xa

    invoke-direct {v14, v1, v2}, Lbgn;-><init>(Ljavax/inject/Provider;I)V

    new-instance v15, Lamj;

    invoke-direct {v15}, Lamj;-><init>()V

    new-instance v16, Laml;

    invoke-direct/range {v16 .. v16}, Laml;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const v3, 0x7fffffff

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v8, 0x7fffffff

    invoke-direct {v7, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-static {}, Lamh;->a()Lamh;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v8, Lami;

    invoke-direct {v8}, Lami;-><init>()V

    invoke-static {}, Lalt;->a()Lalt;

    move-result-object v9

    new-instance v10, Lamm;

    invoke-direct {v10}, Lamm;-><init>()V

    new-instance v11, Lamd;

    invoke-direct {v11}, Lamd;-><init>()V

    sget-object v12, Lalv;->a:Ljava/util/Set;

    new-instance v13, Lalx;

    invoke-direct {v13}, Lalx;-><init>()V

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v7, v1

    invoke-direct/range {v2 .. v13}, Lalw;-><init>(Lbgn;Lbgn;Lamj;Laml;Ljava/util/concurrent/ExecutorService;Lami;Lalt;Lamm;Lamd;Ljava/util/Set;Lalx;)V

    .line 145
    return-void
.end method

.method private constructor <init>(Lbgn;Lbgn;Lamj;Laml;Ljava/util/concurrent/ExecutorService;Lami;Lalt;Lamm;Lamd;Ljava/util/Set;Lalx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgn",
            "<",
            "Lamg;",
            ">;",
            "Lbgn",
            "<",
            "Lbgl;",
            ">;",
            "Lamj;",
            "Laml;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lami;",
            "Lalt;",
            "Lamm;",
            "Lamd;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lalx;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lalw;->f:Ljava/lang/StringBuilder;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalw;->g:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lalw;->h:Ljava/util/Map;

    .line 122
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DEFAULT"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lalw;->r:Lalv;

    .line 123
    iput-boolean v3, p0, Lalw;->b:Z

    .line 463
    new-instance v0, Lalw$2;

    invoke-direct {v0, p0}, Lalw$2;-><init>(Lalw;)V

    iput-object v0, p0, Lalw;->d:Lamg$a;

    .line 159
    iput-object p1, p0, Lalw;->i:Lbgn;

    .line 160
    iput-object p2, p0, Lalw;->j:Lbgn;

    .line 161
    iput-object p3, p0, Lalw;->k:Lamj;

    .line 162
    iput-object p4, p0, Lalw;->l:Laml;

    .line 163
    iput-object p5, p0, Lalw;->m:Ljava/util/concurrent/ExecutorService;

    .line 164
    iput-object p6, p0, Lalw;->n:Lami;

    .line 165
    iput-object p7, p0, Lalw;->o:Lalt;

    .line 166
    iput-object p8, p0, Lalw;->p:Lamm;

    .line 167
    iput-object p9, p0, Lalw;->a:Lamd;

    .line 168
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lalw;->h:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    iput-object p11, p0, Lalw;->q:Lalx;

    .line 172
    return-void
.end method

.method public static a()Lalw;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lalw;->e:Lalw;

    return-object v0
.end method

.method private a(I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 376
    iget-object v3, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 377
    :try_start_0
    iget-object v0, p0, Lalw;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 381
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    return-object v2
.end method

.method static synthetic a(Lalw;Lamg;Laly;Lbgl;Lus;Lalw$b;)V
    .locals 9

    .prologue
    .line 42
    iget-object v8, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p2, Laly;->h:Ljava/lang/String;

    iget-object v1, p0, Lalw;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to remove invalid request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Laly;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lalw;->c:Lalw$c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p4}, Lalw$c;->a(Laly;Lus;)V

    :cond_2
    iget-object v0, p2, Laly;->k:Lame;

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lus;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lamc;

    iget-object v2, v0, Lame;->a:Ljava/lang/String;

    iget-object v3, p4, Lus;->mRequestId:Ljava/lang/String;

    iget-object v4, v0, Lame;->b:Ljava/lang/String;

    invoke-virtual {p4}, Lus;->c()I

    move-result v5

    iget-wide v6, v0, Lame;->c:J

    invoke-direct/range {v1 .. v7}, Lamc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object v0, p0, Lalw;->a:Lamd;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lamd;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, Lamd;->a:Ljava/util/Map;

    invoke-static {v1}, Lamd;->a(Lamc;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lalw;->p:Lamm;

    iget v0, p3, Lbgl;->mSize:I

    int-to-long v2, v0

    iget-wide v4, v1, Lamm;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    const-string v4, "Session not started"

    invoke-static {v0, v4}, Lco;->b(ZLjava/lang/Object;)V

    iget v0, v1, Lamm;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lamm;->d:I

    iget-wide v4, v1, Lamm;->c:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lamm;->c:J

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lamm;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    iget-wide v4, v1, Lamm;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lalw;->i:Lbgn;

    invoke-virtual {v0, p1}, Lbgn;->a(Ljava/lang/Object;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lalw;->i:Lbgn;

    iget-object v2, v2, Lbgn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lalw;->i:Lbgn;

    iget v2, v2, Lbgn;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lalw;->l:Laml;

    invoke-virtual {v2}, Laml;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lalw;->c()V

    invoke-direct {p0}, Lalw;->d()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v7, p0, Lalw;->p:Lamm;

    iget-wide v0, v7, Lamm;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Session not started"

    invoke-static {v0, v1}, Lco;->b(ZLjava/lang/Object;)V

    new-instance v1, Lamm$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v7, Lamm;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, v7, Lamm;->c:J

    iget v6, v7, Lamm;->d:I

    invoke-direct/range {v1 .. v6}, Lamm$a;-><init>(JJI)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v7, Lamm;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lamm;->b:J

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lamm;->c:J

    const/4 v0, 0x0

    iput v0, v7, Lamm;->d:I

    iget v0, v7, Lamm;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lamm;->a:I

    iget-object v0, p0, Lalw;->n:Lami;

    const-string v2, "DOWNLOAD_MANAGER_THROUGHPUT"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "time_span"

    iget-wide v4, v1, Lamm$a;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "size_downloaded"

    iget-wide v4, v1, Lamm$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "item_count"

    iget v4, v1, Lamm$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "bit_rate"

    iget-wide v4, v1, Lamm$a;->a:J

    iget-wide v6, v1, Lamm$a;->b:J

    invoke-static {v4, v5, v6, v7}, Lalu;->a(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "reachability"

    iget-object v0, v0, Lami;->a:Lama;

    invoke-virtual {v0}, Lama;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    iget-object v0, p0, Lalw;->o:Lalt;

    iget-wide v2, v1, Lamm$a;->a:J

    iget-wide v4, v1, Lamm$a;->b:J

    invoke-static {v2, v3, v4, v5}, Lalu;->a(JJ)J

    move-result-wide v2

    invoke-virtual {v0}, Lalt;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1}, Lalt;->a(Ljava/lang/String;)Lamf;

    move-result-object v0

    iget-object v1, v0, Lamf;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, v0, Lamf;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    iget v5, v0, Lamf;->c:I

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Lamf;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_4
    iget-object v0, v0, Lamf;->b:Ljava/util/Queue;

    new-instance v4, Lamf$a;

    invoke-direct {v4, v2, v3}, Lamf$a;-><init>(J)V

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v2, p5, Lalw$b;->a:Ljava/util/Set;

    iget-object v6, p0, Lalw;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lalw$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lalw$1;-><init>(Lalw;Ljava/util/Set;Laly;Lbgl;Lus;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method static synthetic a(Lalw;Ljava/util/Set;Laly;Lbgl;Lus;)V
    .locals 2

    .prologue
    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalw$a;

    invoke-interface {v0, p2, p3, p4}, Lalw$a;->a(Laly;Lbgl;Lus;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lalw;->j:Lbgn;

    invoke-virtual {v0, p3}, Lbgn;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lalw;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/StringBuilder;Laly;)V
    .locals 1

    .prologue
    .line 523
    const-string v0, "- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v0, p1, Laly;->g:Lalv;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v0, p1, Laly;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v0, p1, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v0, p1, Laly;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v0, p0, Lalw;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 369
    goto :goto_0

    .line 370
    :cond_0
    monitor-exit v2

    .line 371
    return v1

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 491
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 495
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v4, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 498
    :try_start_0
    iget-object v0, p0, Lalw;->r:Lalv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v5

    .line 499
    sget-object v0, Lalv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 500
    new-instance v7, Ljava/util/HashSet;

    iget-object v1, p0, Lalw;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Ljava/util/LinkedList;

    iget-object v7, p0, Lalw;->l:Laml;

    iget-object v7, v7, Laml;->a:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    iget-object v0, p0, Lalw;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 506
    iget-object v0, p0, Lalw;->f:Ljava/lang/StringBuilder;

    const-string v1, "Executing:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    sget-object v0, Lalv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 509
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    .line 510
    iget-object v6, p0, Lalw;->f:Ljava/lang/StringBuilder;

    invoke-static {v6, v0}, Lalw;->a(Ljava/lang/StringBuilder;Laly;)V

    goto :goto_2

    .line 513
    :cond_3
    iget-object v0, p0, Lalw;->f:Ljava/lang/StringBuilder;

    const-string v1, "Pending:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 515
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    .line 516
    iget-object v3, p0, Lalw;->f:Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lalw;->a(Ljava/lang/StringBuilder;Laly;)V

    goto :goto_3

    .line 519
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Lalw;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lalv;)V
    .locals 9
    .param p1    # Lalv;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 224
    iget-object v2, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v3, p0, Lalw;->r:Lalv;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lalw;->l:Laml;

    invoke-virtual {v3}, Laml;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 227
    iput-object p1, p0, Lalw;->r:Lalv;

    .line 228
    iget-object v3, p0, Lalw;->l:Laml;

    iget-object v4, p0, Lalw;->r:Lalv;

    iget-object v5, v3, Laml;->b:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v3, Laml;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v3, Laml;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v4}, Laml;->a(ILalv;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 234
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 228
    :cond_0
    :try_start_3
    iget-object v0, v3, Laml;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :try_start_4
    iget-object v0, p0, Lalw;->c:Lalw$c;

    .line 230
    if-eqz v0, :cond_2

    .line 231
    iget-object v1, p0, Lalw;->r:Lalv;

    invoke-interface {v0, v1}, Lalw$c;->a(Lalv;)V

    .line 233
    :cond_2
    invoke-direct {p0}, Lalw;->e()V

    .line 234
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public final a(Laly;Lalw$a;)V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lalw;->l:Laml;

    invoke-virtual {v0, p1}, Laml;->a(Laly;)V

    .line 210
    iget-object v2, p0, Lalw;->k:Lamj;

    iget-object v3, v2, Lamj;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v2, Lamj;->b:Ljava/util/Map;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v2, Lamj;->b:Ljava/util/Map;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lalw;->l:Laml;

    invoke-virtual {v3}, Laml;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 212
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    invoke-virtual {p0}, Lalw;->c()V

    .line 215
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 212
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 264
    iget-object v2, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 265
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 267
    iget-object v3, p0, Lalw;->l:Laml;

    invoke-virtual {v3, p1}, Laml;->a(Ljava/lang/String;)Laly;

    move-result-object v3

    .line 268
    if-eqz v3, :cond_1

    .line 271
    iget-object v0, p0, Lalw;->k:Lamj;

    invoke-virtual {v0, v3}, Lamj;->a(Laly;)Ljava/util/Set;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalw$a;

    .line 273
    invoke-interface {v0, v3}, Lalw$a;->a(Laly;)V

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lalw;->l:Laml;

    invoke-virtual {v4}, Laml;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 277
    monitor-exit v2

    move v0, v1

    .line 281
    :goto_1
    return v0

    .line 280
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 281
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b()Lalv;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lalw;->r:Lalv;

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 12
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v7, p0, Lalw;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 291
    :try_start_0
    iget-object v0, p0, Lalw;->i:Lbgn;

    iget v0, v0, Lbgn;->mCapacity:I

    iget-object v1, p0, Lalw;->i:Lbgn;

    iget-object v1, v1, Lbgn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    sub-int v2, v0, v1

    .line 293
    iget-object v0, p0, Lalw;->q:Lalx;

    invoke-virtual {v0}, Lalx;->a()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 294
    iget-object v0, p0, Lalw;->i:Lbgn;

    iget-object v0, v0, Lbgn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamg;

    move-object v1, v0

    .line 299
    :goto_0
    iget-object v0, p0, Lalw;->j:Lbgn;

    iget-object v0, v0, Lbgn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbgl;

    .line 300
    iget-object v0, p0, Lalw;->q:Lalx;

    invoke-virtual {v0}, Lalx;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lalw;->a(I)Ljava/util/Set;

    move-result-object v0

    .line 304
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 306
    iget-object v2, p0, Lalw;->l:Laml;

    iget-object v5, p0, Lalw;->r:Lalv;

    invoke-virtual {v2, v5, v0}, Laml;->a(Lalv;Ljava/util/Set;)Laly;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_7

    .line 308
    iget-boolean v0, p0, Lalw;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lalw;->r:Lalv;

    invoke-virtual {v0, v2}, Lalv;->a(Laly;)Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lalw;->l:Laml;

    invoke-virtual {v0, v2}, Laml;->a(Laly;)V

    .line 328
    :goto_1
    if-nez v4, :cond_1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    iget-object v0, p0, Lalw;->i:Lbgn;

    invoke-virtual {v0, v1}, Lbgn;->a(Ljava/lang/Object;)V

    .line 332
    :cond_0
    if-eqz v3, :cond_1

    .line 333
    iget-object v0, p0, Lalw;->j:Lbgn;

    invoke-virtual {v0, v3}, Lbgn;->a(Ljava/lang/Object;)V

    .line 336
    :cond_1
    monitor-exit v7

    return-void

    .line 296
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 315
    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lalw;->i:Lbgn;

    iget-object v5, v5, Lbgn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lalw;->i:Lbgn;

    iget v5, v5, Lbgn;->mCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lalw;->l:Laml;

    invoke-virtual {v5}, Laml;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v0, p0, Lalw;->k:Lamj;

    invoke-virtual {v0, v2}, Lamj;->a(Laly;)Ljava/util/Set;

    move-result-object v0

    new-instance v5, Lalw$b;

    invoke-direct {v5, v0}, Lalw$b;-><init>(Ljava/util/Set;)V

    iget-object v0, v2, Laly;->h:Ljava/lang/String;

    iget-object v4, p0, Lalw;->h:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lalw;->c:Lalw$c;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lalw$c;->a(Laly;)V

    :cond_4
    invoke-direct {p0}, Lalw;->e()V

    iget-object v0, p0, Lalw;->p:Lamm;

    iget-wide v8, v0, Lamm;->b:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lamm;->b:J

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v0, Lamm;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget-wide v10, v0, Lamm;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    :cond_5
    iget-object v4, p0, Lalw;->d:Lamg$a;

    iget-object v8, v1, Lamg;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lamg$2;

    invoke-direct/range {v0 .. v5}, Lamg$2;-><init>(Lamg;Laly;Lbgl;Lamg$a;Ljava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v6

    :goto_2
    move v4, v0

    .line 319
    goto/16 :goto_1

    .line 320
    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lalw;->q:Lalx;

    invoke-virtual {v5}, Lalx;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x2

    iget-object v5, p0, Lalw;->q:Lalx;

    invoke-virtual {v5}, Lalx;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    goto/16 :goto_1

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move v0, v4

    goto :goto_2
.end method

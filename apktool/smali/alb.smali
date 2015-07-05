.class public final Lalb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalb$b;,
        Lalb$c;,
        Lalb$a;
    }
.end annotation


# static fields
.field private static final e:Lalb;


# instance fields
.field public final a:Lalh;

.field public b:Z

.field public c:Lalb$c;

.field protected final d:Lalk$a;

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
            "Lalc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lbfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbfn",
            "<",
            "Lalk;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lbfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbfn",
            "<",
            "Lbfl;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Laln;

.field private final l:Lalp;

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Lalm;

.field private final o:Laky;

.field private final p:Lalq;

.field private q:Lala;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lalb;

    invoke-direct {v0}, Lalb;-><init>()V

    sput-object v0, Lalb;->e:Lalb;

    return-void
.end method

.method private constructor <init>()V
    .locals 16

    .prologue
    .line 138
    new-instance v0, Lbfn;

    sget-object v1, Lalk;->a:Ljavax/inject/Provider;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbfn;-><init>(Ljavax/inject/Provider;I)V

    new-instance v13, Lbfn;

    new-instance v1, Lalb$3;

    invoke-direct {v1}, Lalb$3;-><init>()V

    const/4 v2, 0x6

    invoke-direct {v13, v1, v2}, Lbfn;-><init>(Ljavax/inject/Provider;I)V

    new-instance v14, Laln;

    invoke-direct {v14}, Laln;-><init>()V

    new-instance v15, Lalp;

    invoke-direct {v15}, Lalp;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const v3, 0x7fffffff

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v8, 0x7fffffff

    invoke-direct {v7, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-static {}, Lall;->a()Lall;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v8, Lalm;

    invoke-direct {v8}, Lalm;-><init>()V

    invoke-static {}, Laky;->a()Laky;

    move-result-object v9

    new-instance v10, Lalq;

    invoke-direct {v10}, Lalq;-><init>()V

    new-instance v11, Lalh;

    invoke-direct {v11}, Lalh;-><init>()V

    sget-object v12, Lala;->a:Ljava/util/Set;

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v7, v1

    invoke-direct/range {v2 .. v12}, Lalb;-><init>(Lbfn;Lbfn;Laln;Lalp;Ljava/util/concurrent/ExecutorService;Lalm;Laky;Lalq;Lalh;Ljava/util/Set;)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lbfn;Lbfn;Laln;Lalp;Ljava/util/concurrent/ExecutorService;Lalm;Laky;Lalq;Lalh;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfn",
            "<",
            "Lalk;",
            ">;",
            "Lbfn",
            "<",
            "Lbfl;",
            ">;",
            "Laln;",
            "Lalp;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lalm;",
            "Laky;",
            "Lalq;",
            "Lalh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lalb;->f:Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalb;->g:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lalb;->h:Ljava/util/Map;

    .line 126
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DEFAULT"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lalb;->q:Lala;

    .line 127
    iput-boolean v3, p0, Lalb;->b:Z

    .line 449
    new-instance v0, Lalb$2;

    invoke-direct {v0, p0}, Lalb$2;-><init>(Lalb;)V

    iput-object v0, p0, Lalb;->d:Lalk$a;

    .line 161
    iput-object p1, p0, Lalb;->i:Lbfn;

    .line 162
    iput-object p2, p0, Lalb;->j:Lbfn;

    .line 163
    iput-object p3, p0, Lalb;->k:Laln;

    .line 164
    iput-object p4, p0, Lalb;->l:Lalp;

    .line 165
    iput-object p5, p0, Lalb;->m:Ljava/util/concurrent/ExecutorService;

    .line 166
    iput-object p6, p0, Lalb;->n:Lalm;

    .line 167
    iput-object p7, p0, Lalb;->o:Laky;

    .line 168
    iput-object p8, p0, Lalb;->p:Lalq;

    .line 169
    iput-object p9, p0, Lalb;->a:Lalh;

    .line 170
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lalb;->h:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public static a()Lalb;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lalb;->e:Lalb;

    return-object v0
.end method

.method static synthetic a(Lalb;Lalk;Lalc;Lbfl;Luc;Lalb$b;)V
    .locals 14

    .prologue
    .line 42
    iget-object v10, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lalc;->h:Ljava/lang/String;

    iget-object v3, p0, Lalb;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempting to remove invalid request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lalc;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lalb;->c:Lalb$c;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v2, v0, v1}, Lalb$c;->a(Lalc;Luc;)V

    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lalc;->k:Lali;

    if-eqz v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Luc;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lalg;

    iget-object v4, v2, Lali;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Luc;->mRequestId:Ljava/lang/String;

    iget-object v6, v2, Lali;->b:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Luc;->c()I

    move-result v7

    iget-wide v8, v2, Lali;->c:J

    invoke-direct/range {v3 .. v9}, Lalg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object v2, p0, Lalb;->a:Lalh;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lalh;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v2, Lalh;->a:Ljava/util/Map;

    invoke-static {v3}, Lalh;->a(Lalg;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    iget-object v3, p0, Lalb;->p:Lalq;

    move-object/from16 v0, p3

    iget v2, v0, Lbfl;->mSize:I

    int-to-long v4, v2

    iget-wide v6, v3, Lalq;->b:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    const-string v6, "Session not started"

    invoke-static {v2, v6}, Lck;->b(ZLjava/lang/Object;)V

    iget v2, v3, Lalq;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lalq;->d:I

    iget-wide v6, v3, Lalq;->c:J

    add-long/2addr v6, v4

    iput-wide v6, v3, Lalq;->c:J

    const-string v2, "ContinuousDownloadSession"

    const-string v6, "Session[%d] adding %d bytes, total %d bytes"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v3, Lalq;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    iget-wide v8, v3, Lalq;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v2, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lalb;->i:Lbfn;

    invoke-virtual {v2, p1}, Lbfn;->a(Ljava/lang/Object;)V

    const-string v2, "DownloadManager"

    const-string v3, "DOWNLOAD-MANAGER: Request %s completed. Download executor pool size now %d/%d, queue size now %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lalb;->i:Lbfn;

    iget-object v6, v6, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lalb;->i:Lbfn;

    iget v6, v6, Lbfn;->mCapacity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lalb;->l:Lalp;

    invoke-virtual {v6}, Lalp;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lalb;->c()V

    invoke-direct {p0}, Lalb;->d()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v9, p0, Lalb;->p:Lalq;

    iget-wide v2, v9, Lalq;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Session not started"

    invoke-static {v2, v3}, Lck;->b(ZLjava/lang/Object;)V

    new-instance v3, Lalq$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v9, Lalq;->b:J

    sub-long/2addr v4, v6

    iget-wide v6, v9, Lalq;->c:J

    iget v8, v9, Lalq;->d:I

    invoke-direct/range {v3 .. v8}, Lalq$a;-><init>(JJI)V

    const-string v2, "ContinuousDownloadSession"

    const-string v4, "Session[%d] ended: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v9, Lalq;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    iput-wide v4, v9, Lalq;->b:J

    const-wide/16 v4, 0x0

    iput-wide v4, v9, Lalq;->c:J

    const/4 v2, 0x0

    iput v2, v9, Lalq;->d:I

    iget v2, v9, Lalq;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lalq;->a:I

    iget-object v2, p0, Lalb;->n:Lalm;

    const-string v4, "DOWNLOAD_MANAGER_THROUGHPUT"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "time_span"

    iget-wide v6, v3, Lalq$a;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "size_downloaded"

    iget-wide v6, v3, Lalq$a;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "item_count"

    iget v6, v3, Lalq$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "bit_rate"

    iget-wide v6, v3, Lalq$a;->a:J

    iget-wide v8, v3, Lalq$a;->b:J

    invoke-static {v6, v7, v8, v9}, Lakz;->a(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "reachability"

    iget-object v2, v2, Lalm;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    iget-object v2, p0, Lalb;->o:Laky;

    iget-wide v4, v3, Lalq$a;->a:J

    iget-wide v6, v3, Lalq$a;->b:J

    invoke-static {v4, v5, v6, v7}, Lakz;->a(JJ)J

    move-result-wide v4

    invoke-virtual {v2}, Laky;->b()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BandwidthEstimator"

    const-string v7, "BANDWIDTH: Recording BW sample of %d bps (%d kbps) for current network"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Laky;->a(Ljava/lang/String;)Lalj;

    move-result-object v2

    iget-object v3, v2, Lalj;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, v2, Lalj;->b:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    iget v7, v2, Lalj;->c:I

    if-ne v6, v7, :cond_4

    iget-object v6, v2, Lalj;->b:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_4
    iget-object v2, v2, Lalj;->b:Ljava/util/Queue;

    new-instance v6, Lalj$a;

    invoke-direct {v6, v4, v5}, Lalj$a;-><init>(J)V

    invoke-interface {v2, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p5

    iget-object v4, v0, Lalb$b;->a:Ljava/util/Set;

    iget-object v8, p0, Lalb;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lalb$1;

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lalb$1;-><init>(Lalb;Ljava/util/Set;Lalc;Lbfl;Luc;)V

    invoke-interface {v8, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method static synthetic a(Lalb;Ljava/util/Set;Lalc;Lbfl;Luc;)V
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

    check-cast v0, Lalb$a;

    invoke-interface {v0, p2, p3, p4}, Lalb$a;->a(Lalc;Lbfl;Luc;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lalb;->j:Lbfn;

    invoke-virtual {v0, p3}, Lbfn;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lalb;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/StringBuilder;Lalc;)V
    .locals 1

    .prologue
    .line 509
    const-string v0, "- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v0, p1, Lalc;->g:Lala;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 512
    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v0, p1, Lalc;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v0, p1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v0, p1, Lalc;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 349
    iget-object v2, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v0, p0, Lalb;->h:Ljava/util/Map;

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

    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 352
    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 355
    goto :goto_0

    .line 356
    :cond_0
    monitor-exit v2

    .line 357
    return v1

    .line 356
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

.method private e()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 362
    iget-object v3, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    iget-object v0, p0, Lalb;->h:Ljava/util/Map;

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

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 367
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
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

    .line 371
    return-object v2
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 477
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 480
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iget-object v4, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 484
    :try_start_0
    iget-object v0, p0, Lalb;->q:Lala;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lala;->a(Ljava/lang/String;)Lala;

    move-result-object v5

    .line 485
    sget-object v0, Lala;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    new-instance v7, Ljava/util/HashSet;

    iget-object v1, p0, Lalb;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/util/LinkedList;

    iget-object v7, p0, Lalb;->l:Lalp;

    iget-object v7, v7, Lalp;->a:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
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

    .line 491
    iget-object v0, p0, Lalb;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 492
    iget-object v0, p0, Lalb;->f:Ljava/lang/StringBuilder;

    const-string v1, "Executing:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    sget-object v0, Lala;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 495
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalc;

    .line 496
    iget-object v6, p0, Lalb;->f:Ljava/lang/StringBuilder;

    invoke-static {v6, v0}, Lalb;->a(Ljava/lang/StringBuilder;Lalc;)V

    goto :goto_2

    .line 499
    :cond_3
    iget-object v0, p0, Lalb;->f:Ljava/lang/StringBuilder;

    const-string v1, "Pending:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 501
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalc;

    .line 502
    iget-object v3, p0, Lalb;->f:Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lalb;->a(Ljava/lang/StringBuilder;Lalc;)V

    goto :goto_3

    .line 505
    :cond_5
    const-string v0, "DownloadManager"

    const-string v1, "DOWNLOAD-MANAGER: Download queue (context %s):\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v8

    const/4 v3, 0x1

    iget-object v4, p0, Lalb;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lala;)V
    .locals 9
    .param p1    # Lala;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 225
    iget-object v2, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    const-string v0, "DownloadManager"

    const-string v1, "DOWNLOAD-MANAGER: Signaling context changed from %s to %s with %d queued requests"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lalb;->q:Lala;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lalb;->l:Lalp;

    invoke-virtual {v5}, Lalp;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-object p1, p0, Lalb;->q:Lala;

    .line 229
    iget-object v3, p0, Lalb;->l:Lalp;

    iget-object v4, p0, Lalb;->q:Lala;

    iget-object v5, v3, Lalp;->b:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v3, Lalp;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v3, Lalp;->a:Ljava/util/Map;

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

    invoke-static {v7, v4}, Lalp;->a(ILala;)Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalc;

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 235
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 229
    :cond_0
    :try_start_3
    iget-object v0, v3, Lalp;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :try_start_4
    iget-object v0, p0, Lalb;->c:Lalb$c;

    .line 231
    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lalb;->q:Lala;

    invoke-interface {v0, v1}, Lalb$c;->a(Lala;)V

    .line 234
    :cond_2
    invoke-direct {p0}, Lalb;->f()V

    .line 235
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public final a(Lalc;Lalb$a;)V
    .locals 6
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lalb;->l:Lalp;

    invoke-virtual {v0, p1}, Lalp;->a(Lalc;)V

    .line 211
    iget-object v2, p0, Lalb;->k:Laln;

    iget-object v3, v2, Laln;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v2, Laln;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v2, Laln;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :try_start_2
    const-string v0, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Request %s queued. Queue size now %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lalb;->l:Lalp;

    invoke-virtual {v5}, Lalp;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    invoke-virtual {p0}, Lalb;->c()V

    .line 216
    return-void

    .line 211
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 213
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    iget-object v2, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    const-string v3, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Attempting to cancel request for key %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v3, p0, Lalb;->l:Lalp;

    invoke-virtual {v3, p1}, Lalp;->a(Ljava/lang/String;)Lalc;

    move-result-object v3

    .line 269
    if-eqz v3, :cond_1

    .line 272
    iget-object v0, p0, Lalb;->k:Laln;

    invoke-virtual {v0, v3}, Laln;->a(Lalc;)Ljava/util/Set;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalb$a;

    .line 274
    invoke-interface {v0, v3}, Lalb$a;->a(Lalc;)V

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_0
    :try_start_1
    const-string v0, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Request %s canceled. Queue size now %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v6, p0, Lalb;->l:Lalp;

    invoke-virtual {v6}, Lalp;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    monitor-exit v2

    move v0, v1

    .line 282
    :goto_1
    return v0

    .line 281
    :cond_1
    const-string v1, "DownloadManager"

    const-string v3, "DOWNLOAD-MANAGER: No request to cancel for key %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b()Lala;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lalb;->q:Lala;

    monitor-exit v1

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 288
    iget-object v7, p0, Lalb;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 291
    :try_start_0
    iget-object v1, p0, Lalb;->i:Lbfn;

    iget-object v1, v1, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalk;

    .line 292
    iget-object v2, p0, Lalb;->j:Lbfn;

    iget-object v2, v2, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfl;

    .line 293
    invoke-direct {p0}, Lalb;->e()Ljava/util/Set;

    move-result-object v2

    .line 296
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 298
    iget-object v4, p0, Lalb;->l:Lalp;

    iget-object v5, p0, Lalb;->q:Lala;

    invoke-virtual {v4, v5, v2}, Lalp;->a(Lala;Ljava/util/Set;)Lalc;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_0

    .line 300
    iget-boolean v4, p0, Lalb;->b:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lalb;->q:Lala;

    invoke-virtual {v4, v2}, Lala;->a(Lalc;)Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;->isBackground()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    const-string v4, "DownloadManager"

    const-string v5, "DOWNLOAD-MANAGER: Skipping remaining queue downloads since background downloads are paused."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v4, p0, Lalb;->l:Lalp;

    invoke-virtual {v4, v2}, Lalp;->a(Lalc;)V

    .line 314
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 315
    if-eqz v1, :cond_1

    .line 316
    iget-object v0, p0, Lalb;->i:Lbfn;

    invoke-virtual {v0, v1}, Lbfn;->a(Ljava/lang/Object;)V

    .line 318
    :cond_1
    if-eqz v3, :cond_2

    .line 319
    iget-object v0, p0, Lalb;->j:Lbfn;

    invoke-virtual {v0, v3}, Lbfn;->a(Ljava/lang/Object;)V

    .line 322
    :cond_2
    monitor-exit v7

    return-void

    .line 307
    :cond_3
    const-string v0, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Request %s starting. Download executor pool size now %d/%d, queue size now %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lalb;->i:Lbfn;

    iget-object v9, v9, Lbfn;->mResources:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lalb;->i:Lbfn;

    iget v9, v9, Lbfn;->mCapacity:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lalb;->l:Lalp;

    invoke-virtual {v9}, Lalp;->a()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lalb;->k:Laln;

    invoke-virtual {v0, v2}, Laln;->a(Lalc;)Ljava/util/Set;

    move-result-object v0

    new-instance v5, Lalb$b;

    invoke-direct {v5, v0}, Lalb$b;-><init>(Ljava/util/Set;)V

    iget-object v0, v2, Lalc;->h:Ljava/lang/String;

    iget-object v4, p0, Lalb;->h:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lalb;->c:Lalb$c;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lalb$c;->a(Lalc;)V

    :cond_4
    invoke-direct {p0}, Lalb;->f()V

    iget-object v0, p0, Lalb;->p:Lalq;

    iget-wide v8, v0, Lalq;->b:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lalq;->b:J

    const-string v4, "ContinuousDownloadSession"

    const-string v8, "Session[%d] starting at %d ms"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v0, Lalq;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v12, v0, Lalq;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v4, v8, v9}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v4, p0, Lalb;->d:Lalk$a;

    iget-object v8, v1, Lalk;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lalk$2;

    invoke-direct/range {v0 .. v5}, Lalk$2;-><init>(Lalk;Lalc;Lbfl;Lalk$a;Ljava/lang/Object;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v6

    .line 308
    goto/16 :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

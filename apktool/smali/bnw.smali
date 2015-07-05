.class public final Lbnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnw$b;,
        Lbnw$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Lblz;

.field final b:Z

.field c:J

.field d:J

.field public final e:Lbnu;

.field final f:Lbnu;

.field final g:Lbny;

.field final h:Ljava/net/Socket;

.field public final i:Lbnk;

.field final j:Lbnw$b;

.field private final m:Lbnq;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbnx;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbns;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lbnt;

.field private w:I

.field private x:Z

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 52
    const-class v0, Lbnw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbnw;->k:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    .line 68
    invoke-static {v0}, Lbmp;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lbnw;->l:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(Lbnw$a;)V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbnw;->n:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lbnw;->s:J

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbnw;->c:J

    .line 113
    new-instance v0, Lbnu;

    invoke-direct {v0}, Lbnu;-><init>()V

    iput-object v0, p0, Lbnw;->e:Lbnu;

    .line 119
    new-instance v0, Lbnu;

    invoke-direct {v0}, Lbnu;-><init>()V

    iput-object v0, p0, Lbnw;->f:Lbnu;

    .line 121
    iput-boolean v2, p0, Lbnw;->x:Z

    .line 791
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbnw;->y:Ljava/util/Set;

    .line 130
    iget-object v0, p1, Lbnw$a;->d:Lblz;

    iput-object v0, p0, Lbnw;->a:Lblz;

    .line 131
    iget-object v0, p1, Lbnw$a;->e:Lbnt;

    iput-object v0, p0, Lbnw;->v:Lbnt;

    .line 132
    iget-boolean v0, p1, Lbnw$a;->f:Z

    iput-boolean v0, p0, Lbnw;->b:Z

    .line 133
    iget-object v0, p1, Lbnw$a;->c:Lbnq;

    iput-object v0, p0, Lbnw;->m:Lbnq;

    .line 135
    iget-boolean v0, p1, Lbnw$a;->f:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lbnw;->q:I

    .line 136
    iget-boolean v0, p1, Lbnw$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnw;->a:Lblz;

    sget-object v4, Lblz;->d:Lblz;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lbnw;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbnw;->q:I

    .line 140
    :cond_0
    iget-boolean v0, p1, Lbnw$a;->f:Z

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lbnw;->w:I

    .line 146
    iget-boolean v0, p1, Lbnw$a;->f:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lbnw;->e:Lbnu;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lbnu;->a(III)Lbnu;

    .line 150
    :cond_2
    iget-object v0, p1, Lbnw$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lbnw;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lbnw;->a:Lblz;

    sget-object v1, Lblz;->d:Lblz;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lbno;

    invoke-direct {v0}, Lbno;-><init>()V

    iput-object v0, p0, Lbnw;->g:Lbny;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmp;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lbnw;->f:Lbnu;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lbnu;->a(III)Lbnu;

    .line 160
    iget-object v0, p0, Lbnw;->f:Lbnu;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lbnu;->a(III)Lbnu;

    .line 167
    :goto_1
    iget-object v0, p0, Lbnw;->f:Lbnu;

    invoke-virtual {v0}, Lbnu;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbnw;->d:J

    .line 168
    iget-object v0, p1, Lbnw$a;->b:Ljava/net/Socket;

    iput-object v0, p0, Lbnw;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lbnw;->g:Lbny;

    iget-object v1, p1, Lbnw$a;->b:Ljava/net/Socket;

    invoke-static {v1}, Lcad;->a(Ljava/net/Socket;)Lcai;

    move-result-object v1

    invoke-static {v1}, Lcad;->a(Lcai;)Lbzv;

    move-result-object v1

    iget-boolean v3, p0, Lbnw;->b:Z

    invoke-interface {v0, v1, v3}, Lbny;->a(Lbzv;Z)Lbnk;

    move-result-object v0

    iput-object v0, p0, Lbnw;->i:Lbnk;

    .line 171
    new-instance v0, Lbnw$b;

    invoke-direct {v0, p0, v2}, Lbnw$b;-><init>(Lbnw;B)V

    iput-object v0, p0, Lbnw;->j:Lbnw$b;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbnw;->j:Lbnw$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lbnw;->a:Lblz;

    sget-object v1, Lblz;->c:Lblz;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lbnv;

    invoke-direct {v0}, Lbnv;-><init>()V

    iput-object v0, p0, Lbnw;->g:Lbny;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lbnw;->a:Lblz;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lbnw$a;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lbnw;-><init>(Lbnw$a;)V

    return-void
.end method

.method static synthetic a(Lbnw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lbni;Lbni;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 445
    sget-boolean v0, Lbnw;->k:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbnw;->i:Lbnk;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lbnw;->r:Z

    if-eqz v0, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 455
    :goto_0
    monitor-enter p0

    .line 456
    :try_start_4
    iget-object v0, p0, Lbnw;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 457
    iget-object v0, p0, Lbnw;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lbnw;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lbnx;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnx;

    .line 458
    iget-object v4, p0, Lbnw;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 459
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lbnw;->a(Z)V

    move-object v5, v0

    .line 461
    :goto_1
    iget-object v0, p0, Lbnw;->u:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 462
    iget-object v0, p0, Lbnw;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lbnw;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lbns;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbns;

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lbnw;->u:Ljava/util/Map;

    move-object v4, v0

    .line 465
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 467
    if-eqz v5, :cond_4

    .line 468
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_3

    aget-object v1, v5, v2

    .line 470
    :try_start_5
    invoke-virtual {v1, p2}, Lbnx;->a(Lbni;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 468
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 448
    :cond_2
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lbnw;->r:Z

    iget v0, p0, Lbnw;->p:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, p0, Lbnw;->i:Lbnk;

    sget-object v5, Lbmp;->a:[B

    invoke-interface {v4, v0, p1, v5}, Lbnk;->a(ILbni;[B)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 451
    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .line 465
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 471
    :catch_1
    move-exception v1

    .line 472
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    .line 477
    :cond_4
    if-eqz v4, :cond_7

    .line 478
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_7

    aget-object v3, v4, v0

    .line 479
    iget-wide v6, v3, Lbns;->c:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_5

    iget-wide v6, v3, Lbns;->b:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    iget-wide v6, v3, Lbns;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lbns;->c:J

    iget-object v3, v3, Lbns;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 485
    :cond_7
    :try_start_c
    iget-object v0, p0, Lbnw;->i:Lbnk;

    invoke-interface {v0}, Lbnk;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    .line 492
    :cond_8
    :goto_6
    :try_start_d
    iget-object v1, p0, Lbnw;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 497
    :goto_7
    if-eqz v0, :cond_9

    throw v0

    .line 486
    :catch_2
    move-exception v0

    .line 487
    if-eqz v1, :cond_8

    move-object v0, v1

    goto :goto_6

    .line 498
    :cond_9
    return-void

    .line 493
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v4, v2

    goto :goto_2

    :cond_b
    move-object v5, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lbnw;II)V
    .locals 7

    .prologue
    .line 52
    sget-object v6, Lbnw;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lbnw$3;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbnw;ILbni;)V
    .locals 7

    .prologue
    .line 52
    iget-object v6, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbnw$7;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILbni;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbnw;ILbzw;IZ)V
    .locals 9

    .prologue
    .line 52
    new-instance v5, Lbzu;

    invoke-direct {v5}, Lbzu;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lbzw;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lbzw;->a(Lbzu;J)J

    iget-wide v0, v5, Lbzu;->b:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lbzu;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lbnw$6;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILbzu;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbnw;ILjava/util/List;)V
    .locals 7

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnw;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbni;->b:Lbni;

    invoke-virtual {p0, p1, v0}, Lbnw;->a(ILbni;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbnw;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbnw$4;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbnw;ILjava/util/List;Z)V
    .locals 8

    .prologue
    .line 52
    iget-object v7, p0, Lbnw;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbnw$5;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbnw;Lbni;Lbni;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lbnw;->a(Lbni;Lbni;)V

    return-void
.end method

.method static synthetic a(Lbnw;ZIILbns;)V
    .locals 6

    .prologue
    .line 52
    iget-object v1, p0, Lbnw;->i:Lbnk;

    monitor-enter v1

    if-eqz p4, :cond_1

    :try_start_0
    iget-wide v2, p4, Lbns;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p4, Lbns;->b:J

    :cond_1
    iget-object v0, p0, Lbnw;->i:Lbnk;

    invoke-interface {v0, p1, p2, p3}, Lbnk;->a(ZII)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lbnw;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lbnw;I)Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->a:Lblz;

    sget-object v1, Lblz;->d:Lblz;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lbnw;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lbnw;->p:I

    return p1
.end method

.method static synthetic b(Lbnw;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lbnw;->r:Z

    return v0
.end method

.method static synthetic c(Lbnw;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbnw;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lbns;
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnw;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnw;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lbnw;I)Lbns;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lbnw;->c(I)Lbns;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lbnw;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbnw;->q:I

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lbnw;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lbnw;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lbnw;)Lbnq;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->m:Lbnq;

    return-object v0
.end method

.method static synthetic g(Lbnw;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lbnw;->x:Z

    return v0
.end method

.method static synthetic h(Lbnw;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnw;->x:Z

    return v0
.end method

.method static synthetic i(Lbnw;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnw;->r:Z

    return v0
.end method

.method static synthetic j(Lbnw;)Lbnt;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->v:Lbnt;

    return-object v0
.end method

.method static synthetic k(Lbnw;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbnw;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(I)Lbnx;
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnw;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Z)Lbnx;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;Z)",
            "Lbnx;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    if-nez p2, :cond_0

    const/4 v3, 0x1

    .line 248
    :cond_0
    iget-object v6, p0, Lbnw;->i:Lbnk;

    monitor-enter v6

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lbnw;->r:Z

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 257
    :cond_1
    :try_start_3
    iget v1, p0, Lbnw;->q:I

    .line 258
    iget v0, p0, Lbnw;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbnw;->q:I

    .line 259
    new-instance v0, Lbnx;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbnx;-><init>(ILbnw;ZZLjava/util/List;)V

    .line 260
    invoke-virtual {v0}, Lbnx;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lbnw;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lbnw;->a(Z)V

    .line 264
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :try_start_4
    iget-object v2, p0, Lbnw;->i:Lbnk;

    invoke-interface {v2, v3, v1, p1}, Lbnk;->a(ZILjava/util/List;)V

    .line 268
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    if-nez p2, :cond_3

    .line 276
    iget-object v1, p0, Lbnw;->i:Lbnk;

    invoke-interface {v1}, Lbnk;->b()V

    .line 279
    :cond_3
    return-object v0
.end method

.method final a(IJ)V
    .locals 8

    .prologue
    .line 355
    sget-object v0, Lbnw;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbnw$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lbnw$2;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method final a(ILbni;)V
    .locals 7

    .prologue
    .line 340
    sget-object v6, Lbnw;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbnw$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbnw;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbnw$1;-><init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;ILbni;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    return-void
.end method

.method public final a(IZLbzu;J)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lbnw;->i:Lbnk;

    invoke-interface {v0, p2, p1, p3, v1}, Lbnk;->a(ZILbzu;I)V

    .line 328
    :cond_0
    return-void

    .line 320
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lbnw;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 321
    iget-object v2, p0, Lbnw;->i:Lbnk;

    invoke-interface {v2}, Lbnk;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 322
    iget-wide v4, p0, Lbnw;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lbnw;->d:J

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 326
    iget-object v3, p0, Lbnw;->i:Lbnk;

    if-eqz p2, :cond_3

    cmp-long v0, p4, v8

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, Lbnk;->a(ZILbzu;I)V

    .line 309
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :goto_1
    :try_start_1
    iget-wide v2, p0, Lbnw;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbnw;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()J
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbnw;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)Lbnx;
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbnw;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnx;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbnw;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbnw;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(ILbni;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lbnw;->i:Lbnk;

    invoke-interface {v0, p1, p2}, Lbnk;->a(ILbni;)V

    .line 352
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lbnw;->i:Lbnk;

    invoke-interface {v0}, Lbnk;->b()V

    .line 412
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lbni;->a:Lbni;

    sget-object v1, Lbni;->l:Lbni;

    invoke-direct {p0, v0, v1}, Lbnw;->a(Lbni;Lbni;)V

    .line 442
    return-void
.end method

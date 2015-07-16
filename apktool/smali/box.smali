.class public final Lbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbox$b;,
        Lbox$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Lbna;

.field final b:Z

.field c:J

.field d:J

.field public final e:Lbov;

.field final f:Lbov;

.field final g:Lboz;

.field final h:Ljava/net/Socket;

.field public final i:Lbol;

.field final j:Lbox$b;

.field private final m:Lbor;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lboy;",
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
            "Lbot;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lbou;

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
    const-class v0, Lbox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbox;->k:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    .line 68
    invoke-static {v0}, Lbnq;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lbox;->l:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(Lbox$a;)V
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

    iput-object v0, p0, Lbox;->n:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lbox;->s:J

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbox;->c:J

    .line 113
    new-instance v0, Lbov;

    invoke-direct {v0}, Lbov;-><init>()V

    iput-object v0, p0, Lbox;->e:Lbov;

    .line 119
    new-instance v0, Lbov;

    invoke-direct {v0}, Lbov;-><init>()V

    iput-object v0, p0, Lbox;->f:Lbov;

    .line 121
    iput-boolean v2, p0, Lbox;->x:Z

    .line 791
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbox;->y:Ljava/util/Set;

    .line 130
    iget-object v0, p1, Lbox$a;->d:Lbna;

    iput-object v0, p0, Lbox;->a:Lbna;

    .line 131
    iget-object v0, p1, Lbox$a;->e:Lbou;

    iput-object v0, p0, Lbox;->v:Lbou;

    .line 132
    iget-boolean v0, p1, Lbox$a;->f:Z

    iput-boolean v0, p0, Lbox;->b:Z

    .line 133
    iget-object v0, p1, Lbox$a;->c:Lbor;

    iput-object v0, p0, Lbox;->m:Lbor;

    .line 135
    iget-boolean v0, p1, Lbox$a;->f:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lbox;->q:I

    .line 136
    iget-boolean v0, p1, Lbox$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbox;->a:Lbna;

    sget-object v4, Lbna;->d:Lbna;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lbox;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbox;->q:I

    .line 140
    :cond_0
    iget-boolean v0, p1, Lbox$a;->f:Z

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lbox;->w:I

    .line 146
    iget-boolean v0, p1, Lbox$a;->f:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lbox;->e:Lbov;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lbov;->a(III)Lbov;

    .line 150
    :cond_2
    iget-object v0, p1, Lbox$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lbox;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lbox;->a:Lbna;

    sget-object v1, Lbna;->d:Lbna;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lbop;

    invoke-direct {v0}, Lbop;-><init>()V

    iput-object v0, p0, Lbox;->g:Lboz;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lbox;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbnq;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lbox;->f:Lbov;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lbov;->a(III)Lbov;

    .line 160
    iget-object v0, p0, Lbox;->f:Lbov;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lbov;->a(III)Lbov;

    .line 167
    :goto_1
    iget-object v0, p0, Lbox;->f:Lbov;

    invoke-virtual {v0}, Lbov;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lbox;->d:J

    .line 168
    iget-object v0, p1, Lbox$a;->b:Ljava/net/Socket;

    iput-object v0, p0, Lbox;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lbox;->g:Lboz;

    iget-object v1, p1, Lbox$a;->b:Ljava/net/Socket;

    invoke-static {v1}, Lcbe;->a(Ljava/net/Socket;)Lcbj;

    move-result-object v1

    invoke-static {v1}, Lcbe;->a(Lcbj;)Lcaw;

    move-result-object v1

    iget-boolean v3, p0, Lbox;->b:Z

    invoke-interface {v0, v1, v3}, Lboz;->a(Lcaw;Z)Lbol;

    move-result-object v0

    iput-object v0, p0, Lbox;->i:Lbol;

    .line 171
    new-instance v0, Lbox$b;

    invoke-direct {v0, p0, v2}, Lbox$b;-><init>(Lbox;B)V

    iput-object v0, p0, Lbox;->j:Lbox$b;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbox;->j:Lbox$b;

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
    iget-object v0, p0, Lbox;->a:Lbna;

    sget-object v1, Lbna;->c:Lbna;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lbow;

    invoke-direct {v0}, Lbow;-><init>()V

    iput-object v0, p0, Lbox;->g:Lboz;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lbox;->a:Lbna;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lbox$a;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lbox;-><init>(Lbox$a;)V

    return-void
.end method

.method static synthetic a(Lbox;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lboj;Lboj;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 445
    sget-boolean v0, Lbox;->k:Z

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
    iget-object v1, p0, Lbox;->i:Lbol;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lbox;->r:Z

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
    iget-object v0, p0, Lbox;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 457
    iget-object v0, p0, Lbox;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lbox;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lboy;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lboy;

    .line 458
    iget-object v4, p0, Lbox;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 459
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lbox;->a(Z)V

    move-object v5, v0

    .line 461
    :goto_1
    iget-object v0, p0, Lbox;->u:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 462
    iget-object v0, p0, Lbox;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lbox;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lbot;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbot;

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lbox;->u:Ljava/util/Map;

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
    invoke-virtual {v1, p2}, Lboy;->a(Lboj;)V
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
    iput-boolean v0, p0, Lbox;->r:Z

    iget v0, p0, Lbox;->p:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, p0, Lbox;->i:Lbol;

    sget-object v5, Lbnq;->a:[B

    invoke-interface {v4, v0, p1, v5}, Lbol;->a(ILboj;[B)V

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
    iget-wide v6, v3, Lbot;->c:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_5

    iget-wide v6, v3, Lbot;->b:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    iget-wide v6, v3, Lbot;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lbot;->c:J

    iget-object v3, v3, Lbot;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 485
    :cond_7
    :try_start_c
    iget-object v0, p0, Lbox;->i:Lbol;

    invoke-interface {v0}, Lbol;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    .line 492
    :cond_8
    :goto_6
    :try_start_d
    iget-object v1, p0, Lbox;->h:Ljava/net/Socket;

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

.method static synthetic a(Lbox;II)V
    .locals 7

    .prologue
    .line 52
    sget-object v6, Lbox;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

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

    invoke-direct/range {v0 .. v5}, Lbox$3;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbox;ILboj;)V
    .locals 7

    .prologue
    .line 52
    iget-object v6, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbox$7;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILboj;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbox;ILcax;IZ)V
    .locals 9

    .prologue
    .line 52
    new-instance v5, Lcav;

    invoke-direct {v5}, Lcav;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcax;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcax;->a(Lcav;J)J

    iget-wide v0, v5, Lcav;->b:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lcav;->b:J

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
    iget-object v8, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lbox$6;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILcav;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbox;ILjava/util/List;)V
    .locals 7

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbox;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lboj;->b:Lboj;

    invoke-virtual {p0, p1, v0}, Lbox;->a(ILboj;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbox;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbox$4;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

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

.method static synthetic a(Lbox;ILjava/util/List;Z)V
    .locals 8

    .prologue
    .line 52
    iget-object v7, p0, Lbox;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbox$5;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbox;Lboj;Lboj;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lbox;->a(Lboj;Lboj;)V

    return-void
.end method

.method static synthetic a(Lbox;ZIILbot;)V
    .locals 6

    .prologue
    .line 52
    iget-object v1, p0, Lbox;->i:Lbol;

    monitor-enter v1

    if-eqz p4, :cond_1

    :try_start_0
    iget-wide v2, p4, Lbot;->b:J

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

    iput-wide v2, p4, Lbot;->b:J

    :cond_1
    iget-object v0, p0, Lbox;->i:Lbol;

    invoke-interface {v0, p1, p2, p3}, Lbol;->a(ZII)V

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
    iput-wide v0, p0, Lbox;->s:J
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

.method static synthetic a(Lbox;I)Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->a:Lbna;

    sget-object v1, Lbna;->d:Lbna;

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

.method static synthetic b(Lbox;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lbox;->p:I

    return p1
.end method

.method static synthetic b(Lbox;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lbox;->r:Z

    return v0
.end method

.method static synthetic c(Lbox;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbox;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lbot;
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbox;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbox;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbot;
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

.method static synthetic c(Lbox;I)Lbot;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lbox;->c(I)Lbot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lbox;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbox;->q:I

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lbox;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lbox;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lbox;)Lbor;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->m:Lbor;

    return-object v0
.end method

.method static synthetic g(Lbox;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lbox;->x:Z

    return v0
.end method

.method static synthetic h(Lbox;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbox;->x:Z

    return v0
.end method

.method static synthetic i(Lbox;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbox;->r:Z

    return v0
.end method

.method static synthetic j(Lbox;)Lbou;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->v:Lbou;

    return-object v0
.end method

.method static synthetic k(Lbox;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbox;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(I)Lboy;
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbox;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Z)Lboy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;Z)",
            "Lboy;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    if-nez p2, :cond_0

    const/4 v3, 0x1

    .line 248
    :cond_0
    iget-object v6, p0, Lbox;->i:Lbol;

    monitor-enter v6

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lbox;->r:Z

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
    iget v1, p0, Lbox;->q:I

    .line 258
    iget v0, p0, Lbox;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbox;->q:I

    .line 259
    new-instance v0, Lboy;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lboy;-><init>(ILbox;ZZLjava/util/List;)V

    .line 260
    invoke-virtual {v0}, Lboy;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lbox;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lbox;->a(Z)V

    .line 264
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :try_start_4
    iget-object v2, p0, Lbox;->i:Lbol;

    invoke-interface {v2, v3, v1, p1}, Lbol;->a(ZILjava/util/List;)V

    .line 268
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    if-nez p2, :cond_3

    .line 276
    iget-object v1, p0, Lbox;->i:Lbol;

    invoke-interface {v1}, Lbol;->b()V

    .line 279
    :cond_3
    return-object v0
.end method

.method final a(IJ)V
    .locals 8

    .prologue
    .line 355
    sget-object v0, Lbox;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbox$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lbox;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lbox$2;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method final a(ILboj;)V
    .locals 7

    .prologue
    .line 340
    sget-object v6, Lbox;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lbox$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lbox;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbox$1;-><init>(Lbox;Ljava/lang/String;[Ljava/lang/Object;ILboj;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    return-void
.end method

.method public final a(IZLcav;J)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lbox;->i:Lbol;

    invoke-interface {v0, p2, p1, p3, v1}, Lbol;->a(ZILcav;I)V

    .line 328
    :cond_0
    return-void

    .line 309
    :cond_1
    :goto_0
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :try_start_0
    iget-wide v2, p0, Lbox;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 321
    iget-object v2, p0, Lbox;->i:Lbol;

    invoke-interface {v2}, Lbol;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 322
    iget-wide v4, p0, Lbox;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lbox;->d:J

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 326
    iget-object v3, p0, Lbox;->i:Lbol;

    if-eqz p2, :cond_2

    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v3, v0, p1, p3, v2}, Lbol;->a(ZILcav;I)V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 326
    goto :goto_1
.end method

.method public final declared-synchronized a()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbox;->s:J
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
    iget-wide v0, p0, Lbox;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)Lboy;
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbox;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboy;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbox;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbox;->a(Z)V
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

.method final b(ILboj;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lbox;->i:Lbol;

    invoke-interface {v0, p1, p2}, Lbol;->a(ILboj;)V

    .line 352
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lbox;->i:Lbol;

    invoke-interface {v0}, Lbol;->b()V

    .line 412
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lboj;->a:Lboj;

    sget-object v1, Lboj;->l:Lboj;

    invoke-direct {p0, v0, v1}, Lbox;->a(Lboj;Lboj;)V

    .line 442
    return-void
.end method

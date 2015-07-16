.class public final Lbmq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbmq;


# instance fields
.field private final b:I

.field private final c:J

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lbmp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Lbmq;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lbmq;-><init>(IJ)V

    sput-object v2, Lbmq;->a:Lbmq;

    .line 72
    :goto_1
    return-void

    .line 63
    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 67
    :cond_1
    if-eqz v3, :cond_2

    .line 68
    new-instance v2, Lbmq;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lbmq;-><init>(IJ)V

    sput-object v2, Lbmq;->a:Lbmq;

    goto :goto_1

    .line 70
    :cond_2
    new-instance v2, Lbmq;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lbmq;-><init>(IJ)V

    sput-object v2, Lbmq;->a:Lbmq;

    goto :goto_1
.end method

.method private constructor <init>(IJ)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbmq;->d:Ljava/util/LinkedList;

    .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 93
    invoke-static {v0}, Lbnq;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lbmq;->e:Ljava/util/concurrent/Executor;

    .line 95
    new-instance v0, Lbmq$1;

    invoke-direct {v0, p0}, Lbmq$1;-><init>(Lbmq;)V

    iput-object v0, p0, Lbmq;->f:Ljava/lang/Runnable;

    .line 102
    iput p1, p0, Lbmq;->b:I

    .line 103
    mul-long v0, p2, v10

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lbmq;->c:J

    .line 104
    return-void
.end method

.method public static a()Lbmq;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lbmq;->a:Lbmq;

    return-object v0
.end method

.method static synthetic a(Lbmq;)V
    .locals 1

    .prologue
    .line 54
    :cond_0
    invoke-direct {p0}, Lbmq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private b()Z
    .locals 18

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 318
    :goto_0
    return v2

    .line 270
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    const/4 v3, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 273
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbmq;->c:J

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmq;->d:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 277
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbmp;

    .line 279
    invoke-virtual {v2}, Lbmp;->d()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbmq;->c:J

    add-long/2addr v12, v14

    sub-long/2addr v12, v8

    .line 280
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_1

    invoke-virtual {v2}, Lbmp;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    :cond_1
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 282
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 283
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lbmp;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 284
    add-int/lit8 v6, v3, 0x1

    .line 285
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move v4, v6

    :goto_2
    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 287
    goto :goto_1

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmq;->d:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 291
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lbmq;->b:I

    if-le v3, v2, :cond_4

    .line 292
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbmp;

    .line 293
    invoke-virtual {v2}, Lbmp;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 296
    add-int/lit8 v2, v3, -0x1

    :goto_4
    move v3, v2

    .line 298
    goto :goto_3

    .line 301
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    const/4 v2, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 307
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    const/4 v2, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_6

    .line 314
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbmp;

    .line 315
    iget-object v2, v2, Lbmp;->c:Ljava/net/Socket;

    invoke-static {v2}, Lbnq;->a(Ljava/net/Socket;)V

    .line 313
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 318
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(Lbmh;)Lbmp;
    .locals 8

    .prologue
    .line 137
    monitor-enter p0

    const/4 v2, 0x0

    .line 138
    :try_start_0
    iget-object v0, p0, Lbmq;->d:Ljava/util/LinkedList;

    iget-object v1, p0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmp;

    .line 141
    iget-object v1, v0, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->a:Lbmh;

    invoke-virtual {v1, p1}, Lbmh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lbmp;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lbmp;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lbmq;->c:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 144
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 147
    invoke-virtual {v0}, Lbmp;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :try_start_1
    invoke-static {}, Lbno;->a()Lbno;

    move-result-object v1

    iget-object v4, v0, Lbmp;->c:Ljava/net/Socket;

    invoke-virtual {v1, v4}, Lbno;->a(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lbmp;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_2
    monitor-exit p0

    return-object v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    iget-object v0, v0, Lbmp;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbnq;->a(Ljava/net/Socket;)V

    .line 153
    invoke-static {}, Lbno;->a()Lbno;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to tagSocket(): "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbno;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method final a(Lbmp;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 206
    iget-object v1, p0, Lbmq;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lbmq;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbmq;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 210
    :cond_0
    return-void
.end method

.class public final Lbqy;
.super Ljava/lang/Object;

# interfaces
.implements Lbqu;
.implements Lbqv;
.implements Lbqw;
.implements Lbtm;


# static fields
.field static a:Lbqy;


# instance fields
.field A:I

.field private B:Lbrk;

.field private C:Lbrk;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:Landroid/os/ConditionVariable;

.field public g:Lbtc;

.field h:Lbrk;

.field i:Lbrk;

.field j:Lbrk;

.field k:Lbrk;

.field l:Lbrk;

.field m:Lbrk;

.field public n:Lbsh;

.field public o:Lbsq;

.field public p:Lbtn;

.field q:Ljava/util/concurrent/ExecutorService;

.field public r:Ljava/util/concurrent/ExecutorService;

.field public s:Lbqt;

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Lbrb;

.field public x:Lbtl;

.field public y:Lbsx;

.field z:Lbtb;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lbqy;->b:Z

    .line 77
    iput-object v2, p0, Lbqy;->c:Landroid/content/Context;

    .line 78
    iput-object v2, p0, Lbqy;->d:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbqy;->e:Landroid/os/ConditionVariable;

    .line 84
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbqy;->f:Landroid/os/ConditionVariable;

    .line 86
    new-instance v0, Lbtc;

    invoke-direct {v0}, Lbtc;-><init>()V

    iput-object v0, p0, Lbqy;->g:Lbtc;

    .line 96
    iput-object v2, p0, Lbqy;->n:Lbsh;

    .line 98
    iput-object v2, p0, Lbqy;->o:Lbsq;

    .line 99
    iput-object v2, p0, Lbqy;->p:Lbtn;

    .line 102
    new-instance v0, Lbtf;

    invoke-direct {v0}, Lbtf;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbqy;->q:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance v0, Lbtf;

    invoke-direct {v0}, Lbtf;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    .line 109
    iput-boolean v1, p0, Lbqy;->t:Z

    .line 110
    iput-boolean v1, p0, Lbqy;->u:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lbqy;->v:Ljava/lang/String;

    .line 114
    new-instance v0, Lbrb;

    invoke-direct {v0}, Lbrb;-><init>()V

    iput-object v0, p0, Lbqy;->w:Lbrb;

    .line 120
    iput-object v2, p0, Lbqy;->z:Lbtb;

    .line 126
    iput v1, p0, Lbqy;->A:I

    .line 130
    new-instance v0, Lbtl;

    iget-object v1, p0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lbqy;->x:Lbtl;

    .line 131
    return-void
.end method

.method public static t()Lbqy;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lbqy;->a:Lbqy;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lbqy;

    invoke-direct {v0}, Lbqy;-><init>()V

    sput-object v0, Lbqy;->a:Lbqy;

    .line 138
    :cond_0
    sget-object v0, Lbqy;->a:Lbqy;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lbqy;->d:Ljava/lang/String;

    .line 516
    if-nez v0, :cond_0

    .line 517
    const-string v0, ""

    .line 520
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 667
    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_0

    .line 671
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    return-object v0
.end method

.method public final a(Lbsb;)V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lbqy$5;

    invoke-direct {v0, p0, p1}, Lbqy$5;-><init>(Lbqy;Lbsb;)V

    .line 503
    iget-object v1, p0, Lbqy;->o:Lbsq;

    invoke-virtual {v1, v0}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final a(Lbto;)V
    .locals 6

    .prologue
    .line 704
    iget-boolean v0, p0, Lbqy;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqy;->w:Lbrb;

    iget-boolean v0, v0, Lba;->f:Z

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-boolean v0, p1, Lbto;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lbto;->c:Z

    if-nez v0, :cond_0

    .line 709
    invoke-static {}, Lbtd;->d()V

    .line 710
    iget-object v0, p0, Lbqy;->p:Lbtn;

    iget v1, p1, Lbto;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v0, Lbtn;->b:J

    .line 711
    iget-object v0, p0, Lbqy;->p:Lbtn;

    iget-object v0, v0, Lbtn;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lbqy;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lbqy;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 10

    .prologue
    .line 263
    new-instance v2, Lbre;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-direct {v2, p1, v0, v1}, Lbre;-><init>(Ljava/lang/Throwable;J)V

    .line 264
    const-string v0, "crashed_session"

    iget-object v1, p0, Lbqy;->l:Lbrk;

    invoke-virtual {v2, v0, v1}, Lbre;->a(Ljava/lang/String;Lbrk;)V

    .line 266
    iget-object v0, p0, Lbqy;->C:Lbrk;

    invoke-virtual {v0}, Lbrk;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    const-string v0, "previous_session"

    iget-object v1, p0, Lbqy;->C:Lbrk;

    invoke-virtual {v2, v0, v1}, Lbre;->a(Ljava/lang/String;Lbrk;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lbqy;->m:Lbrk;

    invoke-virtual {v2, v0}, Lbre;->a(Lbrk;)V

    .line 271
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v2, Lbre;->b:Lorg/json/JSONArray;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iget-wide v8, v2, Lbre;->a:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const-string v5, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stacktrace"

    new-instance v5, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lbre;->b:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lbqy;->k:Lbrk;

    invoke-virtual {v0, v2}, Lbrk;->a(Lbrw;)Z

    .line 274
    new-instance v0, Lbsp;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbsp;-><init>(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lbqy;->h:Lbrk;

    new-instance v2, Lbsk$a;

    invoke-direct {v2}, Lbsk$a;-><init>()V

    iget-object v3, p0, Lbqy;->w:Lbrb;

    iget-object v3, v3, Lbrb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbsp;->a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V

    .line 281
    iget-object v1, p0, Lbqy;->i:Lbrk;

    new-instance v2, Lbsk$a;

    invoke-direct {v2}, Lbsk$a;-><init>()V

    iget-object v3, p0, Lbqy;->w:Lbrb;

    iget-object v3, v3, Lbrb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbsp;->a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V

    .line 287
    iget-object v1, p0, Lbqy;->j:Lbrk;

    new-instance v2, Lbsk$a;

    invoke-direct {v2}, Lbsk$a;-><init>()V

    iget-object v3, p0, Lbqy;->w:Lbrb;

    iget-object v3, v3, Lbrb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbsp;->a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V

    .line 293
    iget-object v1, p0, Lbqy;->k:Lbrk;

    new-instance v2, Lbsk$a;

    invoke-direct {v2}, Lbsk$a;-><init>()V

    iget-object v3, p0, Lbqy;->w:Lbrb;

    iget-object v3, v3, Lbrb;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbsp;->a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V

    .line 300
    :try_start_0
    invoke-virtual {v0}, Lbsp;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    .line 303
    invoke-static {}, Lbtd;->c()V

    goto :goto_1

    .line 305
    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected throwable in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    .line 307
    invoke-static {}, Lbtd;->c()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 725
    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 729
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    new-instance v0, Lbro$c;

    invoke-direct {v0}, Lbro$c;-><init>()V

    iget-object v0, v0, Lbro$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 387
    monitor-enter p0

    if-nez p1, :cond_1

    .line 388
    :try_start_0
    invoke-static {}, Lbtd;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lbqy;->u:Z

    if-eqz v0, :cond_2

    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lbqy$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lbqy$2;-><init>(Lbqy;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lbqy;->o:Lbsq;

    invoke-virtual {v0, v2}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lbqy$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lbqy$3;-><init>(Lbqy;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lbqy;->o:Lbsq;

    invoke-virtual {v0, v2}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    const-string v0, ""

    .line 528
    iget-object v1, p0, Lbqy;->y:Lbsx;

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p0, Lbqy;->y:Lbsx;

    invoke-virtual {v0}, Lbsx;->a()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_0

    .line 749
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 752
    :cond_0
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 551
    const/4 v0, -0x1

    .line 552
    iget-object v1, p0, Lbqy;->g:Lbtc;

    if-eqz v1, :cond_0

    .line 553
    iget-object v0, p0, Lbqy;->g:Lbtc;

    invoke-virtual {v0}, Lbtc;->b()Lbta;

    move-result-object v0

    iget v0, v0, Lbta;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 555
    :cond_0
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lbro$f;

    invoke-direct {v0}, Lbro$f;-><init>()V

    iget-object v0, v0, Lbro$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    const-string v0, "Android"

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lbtc;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lbqy;->g:Lbtc;

    return-object v0
.end method

.method public final j()Lbrk;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lbqy;->h:Lbrk;

    return-object v0
.end method

.method public final k()Lbrk;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lbqy;->i:Lbrk;

    return-object v0
.end method

.method public final l()Lbrk;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lbqy;->B:Lbrk;

    return-object v0
.end method

.method public final m()Lbrk;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lbqy;->j:Lbrk;

    return-object v0
.end method

.method public final n()Lbrk;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lbqy;->k:Lbrk;

    return-object v0
.end method

.method public final o()Lbrk;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lbqy;->l:Lbrk;

    return-object v0
.end method

.method public final p()Lbrk;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lbqy;->m:Lbrk;

    return-object v0
.end method

.method public final q()Lbrk;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lbqy;->C:Lbrk;

    return-object v0
.end method

.method public final r()Lbtb;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lbqy;->z:Lbtb;

    return-object v0
.end method

.method public final s()V
    .locals 3

    .prologue
    .line 562
    iget-boolean v0, p0, Lbqy;->u:Z

    if-eqz v0, :cond_1

    .line 563
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->f:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbrk;->a(Landroid/content/Context;)Lbrk;

    move-result-object v0

    iput-object v0, p0, Lbqy;->l:Lbrk;

    .line 570
    :goto_0
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->h:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->C:Lbrk;

    .line 571
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->g:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->m:Lbrk;

    .line 572
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->a:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->h:Lbrk;

    .line 573
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->b:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->i:Lbrk;

    .line 574
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->c:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->B:Lbrk;

    .line 575
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->d:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->j:Lbrk;

    .line 576
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->e:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->k:Lbrk;

    .line 577
    iget-boolean v0, p0, Lbqy;->u:Z

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lbtb;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    iget-object v2, p0, Lbqy;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbtb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lbqy;->z:Lbtb;

    .line 580
    :cond_0
    return-void

    .line 567
    :cond_1
    new-instance v0, Lbrk;

    iget-object v1, p0, Lbqy;->c:Landroid/content/Context;

    sget-object v2, Lbrj;->f:Lbrj;

    invoke-direct {v0, v1, v2}, Lbrk;-><init>(Landroid/content/Context;Lbrj;)V

    iput-object v0, p0, Lbqy;->l:Lbrk;

    goto :goto_0
.end method

.method public final u()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 199
    iget-object v0, p0, Lbqy;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 205
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v4, :cond_4

    .line 206
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_0
    if-gt v2, v7, :cond_2

    .line 211
    iput-boolean v3, p0, Lbqy;->u:Z

    .line 226
    :cond_1
    :goto_2
    return-void

    .line 215
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 221
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v5, :cond_3

    .line 222
    iput-boolean v7, p0, Lbqy;->u:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

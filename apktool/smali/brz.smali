.class public final Lbrz;
.super Ljava/lang/Object;

# interfaces
.implements Lbrv;
.implements Lbrw;
.implements Lbrx;
.implements Lbun;


# static fields
.field static a:Lbrz;


# instance fields
.field A:I

.field private B:Lbsl;

.field private C:Lbsl;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:Landroid/os/ConditionVariable;

.field public g:Lbud;

.field h:Lbsl;

.field i:Lbsl;

.field j:Lbsl;

.field k:Lbsl;

.field l:Lbsl;

.field m:Lbsl;

.field public n:Lbti;

.field public o:Lbtr;

.field public p:Lbuo;

.field q:Ljava/util/concurrent/ExecutorService;

.field public r:Ljava/util/concurrent/ExecutorService;

.field public s:Lbru;

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Lbsc;

.field public x:Lbum;

.field public y:Lbty;

.field z:Lbuc;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lbrz;->b:Z

    .line 77
    iput-object v2, p0, Lbrz;->c:Landroid/content/Context;

    .line 78
    iput-object v2, p0, Lbrz;->d:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbrz;->e:Landroid/os/ConditionVariable;

    .line 84
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbrz;->f:Landroid/os/ConditionVariable;

    .line 86
    new-instance v0, Lbud;

    invoke-direct {v0}, Lbud;-><init>()V

    iput-object v0, p0, Lbrz;->g:Lbud;

    .line 96
    iput-object v2, p0, Lbrz;->n:Lbti;

    .line 98
    iput-object v2, p0, Lbrz;->o:Lbtr;

    .line 99
    iput-object v2, p0, Lbrz;->p:Lbuo;

    .line 102
    new-instance v0, Lbug;

    invoke-direct {v0}, Lbug;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbrz;->q:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance v0, Lbug;

    invoke-direct {v0}, Lbug;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbrz;->r:Ljava/util/concurrent/ExecutorService;

    .line 109
    iput-boolean v1, p0, Lbrz;->t:Z

    .line 110
    iput-boolean v1, p0, Lbrz;->u:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lbrz;->v:Ljava/lang/String;

    .line 114
    new-instance v0, Lbsc;

    invoke-direct {v0}, Lbsc;-><init>()V

    iput-object v0, p0, Lbrz;->w:Lbsc;

    .line 120
    iput-object v2, p0, Lbrz;->z:Lbuc;

    .line 126
    iput v1, p0, Lbrz;->A:I

    .line 130
    new-instance v0, Lbum;

    iget-object v1, p0, Lbrz;->r:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lbum;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lbrz;->x:Lbum;

    .line 131
    return-void
.end method

.method public static t()Lbrz;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lbrz;->a:Lbrz;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lbrz;

    invoke-direct {v0}, Lbrz;-><init>()V

    sput-object v0, Lbrz;->a:Lbrz;

    .line 138
    :cond_0
    sget-object v0, Lbrz;->a:Lbrz;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lbrz;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

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

.method public final a(Lbtc;)V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lbrz$5;

    invoke-direct {v0, p0, p1}, Lbrz$5;-><init>(Lbrz;Lbtc;)V

    .line 503
    iget-object v1, p0, Lbrz;->o:Lbtr;

    invoke-virtual {v1, v0}, Lbtr;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lbrz;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final a(Lbup;)V
    .locals 6

    .prologue
    .line 704
    iget-boolean v0, p0, Lbrz;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrz;->w:Lbsc;

    iget-boolean v0, v0, Lba;->f:Z

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-boolean v0, p1, Lbup;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lbup;->c:Z

    if-nez v0, :cond_0

    .line 709
    invoke-static {}, Lbue;->d()V

    .line 710
    iget-object v0, p0, Lbrz;->p:Lbuo;

    iget v1, p1, Lbup;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v0, Lbuo;->b:J

    .line 711
    iget-object v0, p0, Lbrz;->p:Lbuo;

    iget-object v0, v0, Lbuo;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lbrz;->c:Landroid/content/Context;

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
    iget-object v0, p0, Lbrz;->c:Landroid/content/Context;

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
    new-instance v2, Lbsf;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-direct {v2, p1, v0, v1}, Lbsf;-><init>(Ljava/lang/Throwable;J)V

    .line 264
    const-string v0, "crashed_session"

    iget-object v1, p0, Lbrz;->l:Lbsl;

    invoke-virtual {v2, v0, v1}, Lbsf;->a(Ljava/lang/String;Lbsl;)V

    .line 266
    iget-object v0, p0, Lbrz;->C:Lbsl;

    invoke-virtual {v0}, Lbsl;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    const-string v0, "previous_session"

    iget-object v1, p0, Lbrz;->C:Lbsl;

    invoke-virtual {v2, v0, v1}, Lbsf;->a(Ljava/lang/String;Lbsl;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lbrz;->m:Lbsl;

    invoke-virtual {v2, v0}, Lbsf;->a(Lbsl;)V

    .line 271
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v2, Lbsf;->b:Lorg/json/JSONArray;

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

    iget-wide v8, v2, Lbsf;->a:J

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

    iget-object v0, v2, Lbsf;->b:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lbrz;->k:Lbsl;

    invoke-virtual {v0, v2}, Lbsl;->a(Lbsx;)Z

    .line 274
    new-instance v0, Lbtq;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbtq;-><init>(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lbrz;->h:Lbsl;

    new-instance v2, Lbtl$a;

    invoke-direct {v2}, Lbtl$a;-><init>()V

    iget-object v3, p0, Lbrz;->w:Lbsc;

    iget-object v3, v3, Lbsc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 281
    iget-object v1, p0, Lbrz;->i:Lbsl;

    new-instance v2, Lbtl$a;

    invoke-direct {v2}, Lbtl$a;-><init>()V

    iget-object v3, p0, Lbrz;->w:Lbsc;

    iget-object v3, v3, Lbsc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 287
    iget-object v1, p0, Lbrz;->j:Lbsl;

    new-instance v2, Lbtl$a;

    invoke-direct {v2}, Lbtl$a;-><init>()V

    iget-object v3, p0, Lbrz;->w:Lbsc;

    iget-object v3, v3, Lbsc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 293
    iget-object v1, p0, Lbrz;->k:Lbsl;

    new-instance v2, Lbtl$a;

    invoke-direct {v2}, Lbtl$a;-><init>()V

    iget-object v3, p0, Lbrz;->w:Lbsc;

    iget-object v3, v3, Lbsc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 300
    :try_start_0
    invoke-virtual {v0}, Lbtq;->a()V
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

    invoke-static {}, Lbue;->b()V

    .line 303
    invoke-static {}, Lbue;->c()V

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

    invoke-static {}, Lbue;->b()V

    .line 307
    invoke-static {}, Lbue;->c()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

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
    new-instance v0, Lbsp$c;

    invoke-direct {v0}, Lbsp$c;-><init>()V

    iget-object v0, v0, Lbsp$c;->a:Ljava/lang/String;

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
    invoke-static {}, Lbue;->g()V
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
    iget-boolean v0, p0, Lbrz;->u:Z

    if-eqz v0, :cond_2

    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lbrz$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lbrz$2;-><init>(Lbrz;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lbrz;->o:Lbtr;

    invoke-virtual {v0, v2}, Lbtr;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrz;->r:Ljava/util/concurrent/ExecutorService;

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

    new-instance v2, Lbrz$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lbrz$3;-><init>(Lbrz;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lbrz;->o:Lbtr;

    invoke-virtual {v0, v2}, Lbtr;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrz;->r:Ljava/util/concurrent/ExecutorService;

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
    iget-object v1, p0, Lbrz;->y:Lbty;

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p0, Lbrz;->y:Lbty;

    invoke-virtual {v0}, Lbty;->a()Ljava/lang/String;

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
    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

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
    iget-object v1, p0, Lbrz;->g:Lbud;

    if-eqz v1, :cond_0

    .line 553
    iget-object v0, p0, Lbrz;->g:Lbud;

    invoke-virtual {v0}, Lbud;->b()Lbub;

    move-result-object v0

    iget v0, v0, Lbub;->a:I

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
    new-instance v0, Lbsp$f;

    invoke-direct {v0}, Lbsp$f;-><init>()V

    iget-object v0, v0, Lbsp$f;->a:Ljava/lang/String;

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

.method public final i()Lbud;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lbrz;->g:Lbud;

    return-object v0
.end method

.method public final j()Lbsl;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lbrz;->h:Lbsl;

    return-object v0
.end method

.method public final k()Lbsl;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lbrz;->i:Lbsl;

    return-object v0
.end method

.method public final l()Lbsl;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lbrz;->B:Lbsl;

    return-object v0
.end method

.method public final m()Lbsl;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lbrz;->j:Lbsl;

    return-object v0
.end method

.method public final n()Lbsl;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lbrz;->k:Lbsl;

    return-object v0
.end method

.method public final o()Lbsl;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lbrz;->l:Lbsl;

    return-object v0
.end method

.method public final p()Lbsl;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lbrz;->m:Lbsl;

    return-object v0
.end method

.method public final q()Lbsl;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lbrz;->C:Lbsl;

    return-object v0
.end method

.method public final r()Lbuc;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lbrz;->z:Lbuc;

    return-object v0
.end method

.method public final s()V
    .locals 3

    .prologue
    .line 562
    iget-boolean v0, p0, Lbrz;->u:Z

    if-eqz v0, :cond_1

    .line 563
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->f:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbsl;->a(Landroid/content/Context;)Lbsl;

    move-result-object v0

    iput-object v0, p0, Lbrz;->l:Lbsl;

    .line 570
    :goto_0
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->h:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->C:Lbsl;

    .line 571
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->g:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->m:Lbsl;

    .line 572
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->a:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->h:Lbsl;

    .line 573
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->b:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->i:Lbsl;

    .line 574
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->c:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->B:Lbsl;

    .line 575
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->d:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->j:Lbsl;

    .line 576
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->e:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->k:Lbsl;

    .line 577
    iget-boolean v0, p0, Lbrz;->u:Z

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lbuc;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    iget-object v2, p0, Lbrz;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbuc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lbrz;->z:Lbuc;

    .line 580
    :cond_0
    return-void

    .line 567
    :cond_1
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbrz;->c:Landroid/content/Context;

    sget-object v2, Lbsk;->f:Lbsk;

    invoke-direct {v0, v1, v2}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    iput-object v0, p0, Lbrz;->l:Lbsl;

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
    iget-object v0, p0, Lbrz;->c:Landroid/content/Context;

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
    iput-boolean v3, p0, Lbrz;->u:Z

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
    iput-boolean v7, p0, Lbrz;->u:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

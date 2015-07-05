.class public final Lbqx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lbqy;


# direct methods
.method public constructor <init>(Lbqy;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbqx;->b:Lbqy;

    .line 14
    iput-object p2, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lbqx;->b:Lbqy;

    iget-object v1, v0, Lbqy;->o:Lbsq;

    if-nez v1, :cond_2

    invoke-static {}, Lbtd;->e()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lbqx;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    :goto_1
    return-void

    .line 24
    :cond_2
    :try_start_1
    iget-object v1, v0, Lbqy;->o:Lbsq;

    iget-object v1, v1, Lbsq;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v1, v0, Lbqy;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbsv;->a(Landroid/content/Context;Z)V

    iget-object v1, v0, Lbqy;->g:Lbtc;

    invoke-virtual {v1}, Lbtc;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lbqy;->u:Z

    if-eqz v1, :cond_4

    new-instance v1, Lbre;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lbre;-><init>(Ljava/lang/Throwable;J)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lbre;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lbsg;

    invoke-direct {v2, v0}, Lbsg;-><init>(Lbqu;)V

    sget-object v3, Lbrj;->e:Lbrj;

    iget-object v3, v3, Lbrj;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lbsg;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lbsg;

    move-result-object v1

    new-instance v2, Lbsu;

    new-instance v3, Lbsm;

    new-instance v4, Lbsl;

    iget-object v0, v0, Lbqy;->w:Lbrb;

    iget-object v0, v0, Lbrb;->i:Ljava/lang/String;

    const-string v5, "/android_v2/handle_crashes"

    invoke-direct {v4, v0, v5}, Lbsl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbsl;->a()Ljava/net/URL;

    move-result-object v0

    invoke-direct {v3, v0}, Lbsm;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    invoke-direct {v2, v1, v3, v0}, Lbsu;-><init>(Lbsg;Lbsm;Lbsi;)V

    invoke-virtual {v2}, Lbsu;->run()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lbqx;

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    throw v0

    .line 24
    :cond_4
    :try_start_3
    invoke-virtual {v0, p2}, Lbqy;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 28
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lbtd;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lbqx;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lbqx;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

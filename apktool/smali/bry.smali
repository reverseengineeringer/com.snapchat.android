.class public final Lbry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lbrz;


# direct methods
.method public constructor <init>(Lbrz;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbry;->b:Lbrz;

    .line 14
    iput-object p2, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lbry;->b:Lbrz;

    iget-object v1, v0, Lbrz;->o:Lbtr;

    if-nez v1, :cond_2

    invoke-static {}, Lbue;->e()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lbry;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

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
    iget-object v1, v0, Lbrz;->o:Lbtr;

    iget-object v1, v1, Lbtr;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v1, v0, Lbrz;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbtw;->a(Landroid/content/Context;Z)V

    iget-object v1, v0, Lbrz;->g:Lbud;

    invoke-virtual {v1}, Lbud;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lbrz;->u:Z

    if-eqz v1, :cond_4

    new-instance v1, Lbsf;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lbsf;-><init>(Ljava/lang/Throwable;J)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lbsf;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lbth;

    invoke-direct {v2, v0}, Lbth;-><init>(Lbrv;)V

    sget-object v3, Lbsk;->e:Lbsk;

    iget-object v3, v3, Lbsk;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lbth;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lbth;

    move-result-object v1

    new-instance v2, Lbtv;

    new-instance v3, Lbtn;

    new-instance v4, Lbtm;

    iget-object v0, v0, Lbrz;->w:Lbsc;

    iget-object v0, v0, Lbsc;->i:Ljava/lang/String;

    const-string v5, "/android_v2/handle_crashes"

    invoke-direct {v4, v0, v5}, Lbtm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbtm;->a()Ljava/net/URL;

    move-result-object v0

    invoke-direct {v3, v0}, Lbtn;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    invoke-direct {v2, v1, v3, v0}, Lbtv;-><init>(Lbth;Lbtn;Lbtj;)V

    invoke-virtual {v2}, Lbtv;->run()V
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

    iget-object v1, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lbry;

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    throw v0

    .line 24
    :cond_4
    :try_start_3
    invoke-virtual {v0, p2}, Lbrz;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 28
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lbue;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lbry;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lbry;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

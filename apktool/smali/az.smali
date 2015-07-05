.class public Laz;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    const-class v1, Laz;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lba;

    invoke-direct {v0}, Lba;-><init>()V

    invoke-static {p0, p1, v0}, Laz;->a(Landroid/content/Context;Ljava/lang/String;Lba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v1

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lba;)V
    .locals 10

    .prologue
    .line 148
    const-class v6, Laz;

    monitor-enter v6

    if-nez p1, :cond_1

    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 148
    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laz;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    const-string v0, "Given an invalid appID. The appID should be 24 characters in length."

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbtd;->h()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 148
    :cond_3
    :try_start_5
    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    iget-boolean v0, v0, Lbqy;->b:Z
    :try_end_5
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_0

    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v3

    invoke-static {}, Lbtd;->d()V

    iput-object p1, v3, Lbqy;->d:Ljava/lang/String;

    new-instance v0, Lbrb;

    invoke-direct {v0, p2}, Lbrb;-><init>(Lba;)V

    iput-object v0, v3, Lbqy;->w:Lbrb;

    iput-object p0, v3, Lbqy;->c:Landroid/content/Context;

    new-instance v0, Lbqt;

    iget-object v1, v3, Lbqy;->c:Landroid/content/Context;

    iget-object v2, v3, Lbqy;->w:Lbrb;

    invoke-direct {v0, v1, v2}, Lbqt;-><init>(Landroid/content/Context;Lba;)V

    iput-object v0, v3, Lbqy;->s:Lbqt;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lbqy;->v:Ljava/lang/String;

    new-instance v0, Lbsx;

    invoke-direct {v0, p0}, Lbsx;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lbqy;->y:Lbsx;

    invoke-virtual {v3}, Lbqy;->u()V

    const-wide v0, 0xdf8475800L

    iget-boolean v2, v3, Lbqy;->u:Z

    if-eqz v2, :cond_4

    const-wide v0, 0x2cb417800L

    :cond_4
    new-instance v2, Lbsh;

    invoke-direct {v2, v0, v1}, Lbsh;-><init>(J)V

    iput-object v2, v3, Lbqy;->n:Lbsh;

    iget-object v0, v3, Lbqy;->s:Lbqt;

    invoke-static {v0}, Lbro;->a(Lbqt;)V

    iget-object v0, v3, Lbqy;->c:Landroid/content/Context;

    invoke-static {v0}, Lbro;->a(Landroid/content/Context;)V

    new-instance v0, Lbrs;

    invoke-direct {v0}, Lbrs;-><init>()V

    invoke-static {v0}, Lbro;->a(Lbrr;)V

    new-instance v0, Lbrd;

    iget-object v1, v3, Lbqy;->c:Landroid/content/Context;

    iget-object v2, v3, Lbqy;->w:Lbrb;

    invoke-direct {v0, v1, v2}, Lbrd;-><init>(Landroid/content/Context;Lba;)V

    invoke-static {v0}, Lbro;->a(Lbrd;)V

    iget-object v0, v3, Lbqy;->c:Landroid/content/Context;

    invoke-static {v0}, Lbto;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v3, Lbqy;->w:Lbrb;

    iget-boolean v0, v0, Lba;->f:Z

    if-nez v0, :cond_8

    :cond_5
    :goto_1
    new-instance v0, Lbsq;

    iget-object v1, v3, Lbqy;->w:Lbrb;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lbsq;-><init>(Lbrb;Landroid/content/Context;Lbqv;Lbqw;Lbqu;)V

    iput-object v0, v3, Lbqy;->o:Lbsq;

    iget-boolean v0, v3, Lbqy;->u:Z

    if-nez v0, :cond_6

    new-instance v0, Lbti;

    iget-object v1, v3, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v3, Lbqy;->o:Lbsq;

    iget-object v4, v3, Lbqy;->g:Lbtc;

    invoke-direct {v0, v3, v1, v2, v4}, Lbti;-><init>(Lbqv;Ljava/util/concurrent/ExecutorService;Lbsq;Lbtc;)V

    invoke-static {v0}, Lbtd;->a(Lbti;)V

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lbqx;

    if-nez v1, :cond_7

    new-instance v1, Lbqx;

    invoke-direct {v1, v3, v0}, Lbqx;-><init>(Lbqy;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    new-instance v0, Lbte;

    iget-object v1, v3, Lbqy;->o:Lbsq;

    invoke-direct {v0, v1}, Lbte;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lbte;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbqy;->b:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crittercism finished initializing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in init > getInstance().initialize(..): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V
    :try_end_7
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_8
    iget-object v0, v3, Lbqy;->x:Lbtl;

    iget-object v1, v3, Lbqy;->w:Lbrb;

    invoke-virtual {v1}, Lbrb;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtl;->a(Ljava/util/List;)V

    iget-object v0, v3, Lbqy;->x:Lbtl;

    iget-object v1, v3, Lbqy;->w:Lbrb;

    new-instance v2, Ljava/util/LinkedList;

    iget-object v1, v1, Lba;->h:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lbtl;->b(Ljava/util/List;)V

    new-instance v0, Lbsw;

    iget-object v1, v3, Lbqy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbsw;-><init>(Landroid/content/Context;)V

    new-instance v1, Lbtp;

    iget-object v2, v3, Lbqy;->x:Lbtl;

    invoke-direct {v1, v2, v0}, Lbtp;-><init>(Lbtl;Lbsw;)V

    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lbqy;->w:Lbrb;

    iget-object v4, v4, Lbrb;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/api/apm/network"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Lbtn;

    invoke-direct {v2, v3, v0}, Lbtn;-><init>(Lbqu;Ljava/net/URL;)V

    iput-object v2, v3, Lbqy;->p:Lbtn;

    iget-object v0, v3, Lbqy;->x:Lbtl;

    iget-object v2, v3, Lbqy;->p:Lbtn;

    invoke-virtual {v0, v2}, Lbtl;->a(Lbtm;)V

    iget-object v0, v3, Lbqy;->x:Lbtl;

    invoke-virtual {v0, v3}, Lbtl;->a(Lbtm;)V

    new-instance v0, Lbte;

    iget-object v2, v3, Lbqy;->p:Lbtn;

    const-string v4, "OPTMZ"

    invoke-direct {v0, v2, v4}, Lbte;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Lbtp;->a()Z

    move-result v0

    iput-boolean v0, v3, Lbqy;->t:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installedApm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v3, Lbqy;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    invoke-static {}, Lbtd;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    iget-boolean v0, v0, Lbqy;->b:Z

    if-nez v0, :cond_1

    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Laz;->c(Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {}, Lbtd;->h()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    throw v0

    .line 442
    :cond_2
    :try_start_1
    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    new-instance v1, Lbru;

    invoke-direct {v1, p0}, Lbru;-><init>(Ljava/lang/String;)V

    new-instance v2, Lbqy$4;

    invoke-direct {v2, v0, v1}, Lbqy$4;-><init>(Lbqy;Lbru;)V

    iget-object v1, v0, Lbqy;->o:Lbsq;

    invoke-virtual {v1, v2}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SENDING "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " TO EXECUTOR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    iget-object v0, v0, Lbqy;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    iget-boolean v0, v0, Lbqy;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logHandledException"

    invoke-static {v0}, Laz;->c(Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    iget-object v0, v0, Lbqy;->g:Lbtc;

    invoke-virtual {v0}, Lbtc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbqy;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    throw v0

    .line 238
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbtd;->h()V

    .line 162
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Laz;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "().  Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {}, Lbtd;->h()V

    .line 496
    return-void
.end method

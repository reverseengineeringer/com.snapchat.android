.class public final Lbtr;
.super Lbtt;


# instance fields
.field a:Landroid/os/ConditionVariable;

.field private b:Lbsc;

.field private c:Landroid/content/Context;

.field private d:Lbrw;

.field private e:Lbrx;

.field private f:Lbrv;

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lbsc;Landroid/content/Context;Lbrw;Lbrx;Lbrv;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lbtt;-><init>()V

    .line 39
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lbtr;->a:Landroid/os/ConditionVariable;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtr;->g:Ljava/util/List;

    .line 46
    iput-boolean v1, p0, Lbtr;->h:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lbtr;->j:Ljava/lang/Exception;

    .line 57
    iput-object p1, p0, Lbtr;->b:Lbsc;

    .line 64
    iput-object p2, p0, Lbtr;->c:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lbtr;->d:Lbrw;

    .line 66
    iput-object p4, p0, Lbtr;->e:Lbrx;

    .line 67
    iput-object p5, p0, Lbtr;->f:Lbrv;

    .line 68
    iput-boolean v1, p0, Lbtr;->i:Z

    .line 69
    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbtr;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Z
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbtr;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbtr;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbtr;->b:Lbsc;

    iget-object v3, v3, Lba;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 99
    aget-object v1, v2, v1

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 103
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private e()V
    .locals 10

    .prologue
    .line 224
    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    iget-boolean v0, v0, Lbrz;->u:Z

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lbtr;->d:Lbrw;

    invoke-interface {v0}, Lbrw;->j()Lbsl;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lbtr;->d:Lbrw;

    invoke-interface {v1}, Lbrw;->k()Lbsl;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lbtr;->d:Lbrw;

    invoke-interface {v2}, Lbrw;->l()Lbsl;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lbtr;->d:Lbrw;

    invoke-interface {v3}, Lbrw;->m()Lbsl;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lbtr;->d:Lbrw;

    invoke-interface {v4}, Lbrw;->n()Lbsl;

    move-result-object v4

    .line 234
    iget-object v5, p0, Lbtr;->d:Lbrw;

    invoke-interface {v5}, Lbrw;->r()Lbuc;

    move-result-object v5

    .line 236
    new-instance v6, Lbsg;

    invoke-direct {v6}, Lbsg;-><init>()V

    invoke-virtual {v0, v6}, Lbsl;->a(Lbsx;)Z

    .line 245
    iget-object v6, p0, Lbtr;->b:Lbsc;

    iget-boolean v6, v6, Lba;->b:Z

    if-nez v6, :cond_2

    .line 246
    new-instance v6, Lbtq;

    iget-object v7, p0, Lbtr;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Lbtq;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance v7, Lbtg$a;

    invoke-direct {v7}, Lbtg$a;-><init>()V

    iget-object v8, p0, Lbtr;->b:Lbsc;

    iget-object v8, v8, Lbsc;->i:Ljava/lang/String;

    iget-object v9, p0, Lbtr;->f:Lbrv;

    invoke-virtual {v6, v0, v7, v8, v9}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 253
    new-instance v0, Lbtl$a;

    invoke-direct {v0}, Lbtl$a;-><init>()V

    iget-object v7, p0, Lbtr;->b:Lbsc;

    iget-object v7, v7, Lbsc;->i:Ljava/lang/String;

    iget-object v8, p0, Lbtr;->f:Lbrv;

    invoke-virtual {v6, v1, v0, v7, v8}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 259
    new-instance v0, Lbtl$a;

    invoke-direct {v0}, Lbtl$a;-><init>()V

    iget-object v1, p0, Lbtr;->b:Lbsc;

    iget-object v1, v1, Lbsc;->i:Ljava/lang/String;

    iget-object v7, p0, Lbtr;->f:Lbrv;

    invoke-virtual {v6, v3, v0, v1, v7}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 265
    new-instance v0, Lbtl$a;

    invoke-direct {v0}, Lbtl$a;-><init>()V

    iget-object v1, p0, Lbtr;->b:Lbsc;

    iget-object v1, v1, Lbsc;->i:Ljava/lang/String;

    iget-object v3, p0, Lbtr;->f:Lbrv;

    invoke-virtual {v6, v4, v0, v1, v3}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 271
    new-instance v0, Lbtl$a;

    invoke-direct {v0}, Lbtl$a;-><init>()V

    iget-object v1, p0, Lbtr;->b:Lbsc;

    iget-object v1, v1, Lbsc;->i:Ljava/lang/String;

    new-instance v3, Lbsa;

    iget-object v4, p0, Lbtr;->f:Lbrv;

    iget-object v7, p0, Lbtr;->b:Lbsc;

    invoke-direct {v3, v4, v7}, Lbsa;-><init>(Lbrv;Lbsc;)V

    invoke-virtual {v6, v2, v0, v1, v3}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 277
    invoke-virtual {v6}, Lbtq;->a()V

    .line 280
    :cond_2
    iget-object v0, v5, Lbuc;->a:Landroid/content/SharedPreferences;

    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    iget-boolean v1, v0, Lbrz;->u:Z

    if-nez v1, :cond_0

    new-instance v1, Lbrz$1;

    invoke-direct {v1, v0, v0}, Lbrz$1;-><init>(Lbrz;Lbrz;)V

    iget-object v2, v0, Lbrz;->o:Lbtr;

    invoke-virtual {v2, v1}, Lbtr;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lbrz;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-static {}, Lbue;->b()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbtr;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/com.crittercism/pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lbue;->b()V

    .line 310
    :goto_0
    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    .line 312
    iget-object v2, v0, Lbrz;->y:Lbty;

    invoke-virtual {v2}, Lbty;->a()Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lbtr;->f:Lbrv;

    invoke-interface {v2}, Lbrv;->i()Lbud;

    move-result-object v2

    .line 316
    iget-object v0, v0, Lbrz;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 318
    iget-object v0, p0, Lbtr;->e:Lbrx;

    invoke-virtual {v2, v0}, Lbud;->a(Lbrx;)V

    .line 320
    iget-object v0, p0, Lbtr;->c:Landroid/content/Context;

    invoke-static {v0}, Lbtw;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lbtw;->a:Z

    .line 321
    iget-object v0, p0, Lbtr;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lbtw;->a(Landroid/content/Context;Z)V

    .line 323
    invoke-virtual {v2}, Lbud;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {v2}, Lbud;->a()Lbua;

    move-result-object v0

    iget-object v3, p0, Lbtr;->e:Lbrx;

    sget-object v4, Lbte;->h:Lbte;

    iget-object v4, v4, Lbte;->n:Ljava/lang/String;

    sget-object v5, Lbte;->h:Lbte;

    iget-object v5, v5, Lbte;->o:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lbua;->a(Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Lbud;->b()Lbub;

    move-result-object v0

    iget-object v3, p0, Lbtr;->e:Lbrx;

    sget-object v4, Lbte;->k:Lbte;

    iget-object v4, v4, Lbte;->n:Ljava/lang/String;

    sget-object v5, Lbte;->k:Lbte;

    iget-object v5, v5, Lbte;->o:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lbub;->a(Lbrx;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {v2}, Lbud;->c()Z

    move-result v0

    iput-boolean v0, p0, Lbtr;->i:Z

    .line 335
    invoke-direct {p0}, Lbtr;->d()Ljava/io/File;

    move-result-object v2

    .line 337
    iget-boolean v0, p0, Lbtr;->i:Z

    if-eqz v0, :cond_4

    .line 338
    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    iget-boolean v0, v0, Lbrz;->u:Z

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    :cond_1
    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->a:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->b:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->c:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->d:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->e:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->f:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->h:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    new-instance v0, Lbsl;

    iget-object v1, p0, Lbtr;->c:Landroid/content/Context;

    sget-object v3, Lbsk;->g:Lbsk;

    invoke-direct {v0, v1, v3}, Lbsl;-><init>(Landroid/content/Context;Lbsk;)V

    invoke-virtual {v0}, Lbsl;->a()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lbtr;->c:Landroid/content/Context;

    invoke-static {v0}, Lbup;->b(Landroid/content/Context;)V

    .line 343
    :goto_1
    invoke-direct {p0}, Lbtr;->b()V

    .line 346
    iget-object v0, p0, Lbtr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in run(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->b()V

    .line 351
    invoke-static {}, Lbue;->c()V

    .line 352
    iput-object v0, p0, Lbtr;->j:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iget-object v0, p0, Lbtr;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 355
    :goto_3
    return-void

    .line 306
    :cond_3
    :try_start_2
    invoke-static {v2}, Lbui;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbtr;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 340
    :cond_4
    :try_start_3
    iget-object v3, p0, Lbtr;->c:Landroid/content/Context;

    new-instance v0, Lbup;

    invoke-direct {v0, v3}, Lbup;-><init>(Landroid/content/Context;)V

    const-string v4, "com.crittercism.optmz.config"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "interval"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "interval"

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lbup;->d:I

    const-string v4, "kill"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "kill"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lbup;->c:Z

    const-string v4, "persist"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "persist"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lbup;->b:Z

    const-string v4, "enabled"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "enabled"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lbup;->a:Z

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrz;->a(Lbup;)V

    :cond_5
    iget-object v0, p0, Lbtr;->d:Lbrw;

    invoke-interface {v0}, Lbrw;->s()V

    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    iget-boolean v1, v0, Lbrz;->u:Z

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    :cond_6
    iget-object v1, p0, Lbtr;->d:Lbrw;

    invoke-interface {v1}, Lbrw;->o()Lbsl;

    move-result-object v1

    iget-object v3, p0, Lbtr;->d:Lbrw;

    invoke-interface {v3}, Lbrw;->p()Lbsl;

    move-result-object v3

    iget-object v4, p0, Lbtr;->d:Lbrw;

    invoke-interface {v4}, Lbrw;->q()Lbsl;

    move-result-object v4

    iget-object v5, p0, Lbtr;->d:Lbrw;

    invoke-interface {v5}, Lbrw;->m()Lbsl;

    move-result-object v5

    if-eqz v2, :cond_d

    const/4 v6, 0x1

    sput-boolean v6, Lbtw;->a:Z

    iget-object v0, v0, Lbrz;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    new-instance v0, Lbsu;

    invoke-direct {v0, v2, v1, v4, v3}, Lbsu;-><init>(Ljava/io/File;Lbsl;Lbsl;Lbsl;)V

    invoke-virtual {v5, v0}, Lbsl;->a(Lbsx;)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_5
    invoke-virtual {v4}, Lbsl;->a()V

    invoke-virtual {v3}, Lbsl;->a()V

    invoke-virtual {v1, v4}, Lbsl;->a(Lbsl;)V

    :cond_7
    iget-object v0, p0, Lbtr;->d:Lbrw;

    invoke-interface {v0}, Lbrw;->o()Lbsl;

    move-result-object v0

    sget-object v1, Lbsv;->a:Lbsv;

    invoke-virtual {v0, v1}, Lbsl;->a(Lbsx;)Z

    invoke-static {}, Lbrz;->t()Lbrz;

    move-result-object v0

    iget-boolean v0, v0, Lbrz;->u:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lbtr;->b:Lbsc;

    iget-boolean v0, v0, Lba;->d:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lbue;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lbtr;->c:Landroid/content/Context;

    iget-object v1, p0, Lbtr;->b:Lbsc;

    iget-object v1, v1, Lba;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_6
    :try_start_5
    invoke-direct {p0}, Lbtr;->e()V

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_4

    :cond_d
    iget-object v0, v0, Lbrz;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 354
    :cond_e
    iget-object v0, p0, Lbtr;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbtr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lbtr;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

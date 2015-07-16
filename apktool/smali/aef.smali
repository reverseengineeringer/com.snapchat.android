.class public final Laef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laef$b;,
        Laef$a;,
        Laef$c;
    }
.end annotation


# static fields
.field private static final f:Laef;


# instance fields
.field public final a:Laej;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laef$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laef$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laef$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lbhk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Laef;

    invoke-direct {v0}, Laef;-><init>()V

    sput-object v0, Laef;->f:Laef;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-static {}, Laej;->a()Laej;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laef;-><init>(Lbhk;Laej;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Lbhk;Laej;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laef;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laef;->c:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laef;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laef;->e:Ljava/util/Map;

    .line 210
    iput-object p1, p0, Laef;->g:Lbhk;

    .line 211
    iput-object p2, p0, Laef;->a:Laej;

    .line 212
    return-void
.end method

.method public static a()Laef;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Laef;->f:Laef;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 309
    if-eqz p1, :cond_0

    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    .line 310
    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Laef$c;->b:I

    :goto_1
    return v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Laef;->b:Ljava/util/Map;

    monitor-enter v1

    .line 259
    :try_start_0
    invoke-direct {p0, p1}, Laef;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    monitor-exit v1

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 264
    :cond_1
    :try_start_1
    new-instance v2, Laef$c$a;

    invoke-direct {v2}, Laef$c$a;-><init>()V

    iput-object p1, v2, Laef$c$a;->a:Ljava/lang/String;

    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    invoke-virtual {v2, v0}, Laef$c$a;->a(Laef$c;)Laef$c$a;

    move-result-object v0

    iput p2, v0, Laef$c$a;->b:I

    invoke-virtual {v0}, Laef$c$a;->a()Laef$c;

    move-result-object v0

    .line 269
    iget-object v2, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Laef;->c:Ljava/util/Map;

    new-instance v1, Laef$a;

    invoke-direct {v1, p1, p2, p3}, Laef$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Laef;->b:Ljava/util/Map;

    monitor-enter v1

    .line 284
    :try_start_0
    invoke-direct {p0, p1}, Laef;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    monitor-exit v1

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 289
    :cond_1
    :try_start_1
    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    .line 290
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 292
    iget-boolean p2, v0, Laef$c;->c:Z

    .line 295
    :cond_2
    new-instance v2, Laef$c$a;

    invoke-direct {v2}, Laef$c$a;-><init>()V

    iput-object p1, v2, Laef$c$a;->a:Ljava/lang/String;

    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    invoke-virtual {v2, v0}, Laef$c$a;->a(Laef$c;)Laef$c$a;

    move-result-object v0

    iput-boolean p2, v0, Laef$c$a;->c:Z

    invoke-virtual {v0}, Laef$c$a;->a()Laef$c;

    move-result-object v0

    .line 300
    iget-object v2, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v1, p0, Laef;->d:Ljava/util/Map;

    monitor-enter v1

    .line 475
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 476
    iget-object v3, p0, Laef;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    monitor-exit v1

    .line 482
    :goto_0
    return v0

    .line 481
    :cond_1
    monitor-exit v1

    .line 482
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 361
    iget-object v0, p0, Laef;->d:Ljava/util/Map;

    new-instance v1, Laef$b;

    invoke-direct {v1, p1, p2, p3}, Laef$b;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 318
    if-eqz p1, :cond_0

    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    .line 319
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Laef$c;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 338
    iget-object v0, p0, Laef;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$a;

    .line 339
    if-eqz v0, :cond_0

    iget-wide v0, v0, Laef$a;->b:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 433
    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    iget v0, v0, Laef$c;->d:I

    .line 442
    :goto_0
    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const/4 v0, -0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 451
    iget-object v0, p0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    .line 452
    if-eqz v0, :cond_0

    .line 453
    iget v0, v0, Laef$c;->e:I

    .line 460
    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, -0x1

    goto :goto_0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lbtc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lbsy;

.field private b:Lbsz;

.field private c:Lbta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lbsz;
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbtc;->b:Lbsz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lbqw;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lbsy$a;->a(Lbqw;)Lbsy;

    move-result-object v0

    iput-object v0, p0, Lbtc;->a:Lbsy;

    .line 66
    iget-object v0, p0, Lbtc;->a:Lbsy;

    invoke-virtual {v0}, Lbsy;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lbsd;->k:Lbsd;

    iget-object v0, v0, Lbsd;->n:Ljava/lang/String;

    sget-object v1, Lbsd;->k:Lbsd;

    iget-object v1, v1, Lbsd;->o:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbqw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbsd;->l:Lbsd;

    iget-object v0, v0, Lbsd;->n:Ljava/lang/String;

    sget-object v1, Lbsd;->l:Lbsd;

    iget-object v1, v1, Lbsd;->o:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lbqw;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v1, Lbta;

    invoke-direct {v1, v0}, Lbta;-><init>(I)V

    iget v0, v1, Lbta;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lbta;->a:I

    iput-object v1, p0, Lbtc;->c:Lbta;

    .line 74
    sget-object v0, Lbsd;->h:Lbsd;

    iget-object v0, v0, Lbsd;->n:Ljava/lang/String;

    sget-object v1, Lbsd;->h:Lbsd;

    iget-object v1, v1, Lbsd;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbsz$a;->a(Lbqw;Ljava/lang/String;Ljava/lang/String;)Lbsz;

    move-result-object v0

    iget v1, v0, Lbsz;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbsz;->c:I

    iput-object v0, p0, Lbtc;->b:Lbsz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lbsz;)V
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbtc;->b:Lbsz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lbta;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbtc;->c:Lbta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    .line 38
    :try_start_0
    iget-object v1, p0, Lbtc;->a:Lbsy;

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lbtc;->a:Lbsy;

    invoke-virtual {v0}, Lbsy;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 42
    :cond_0
    monitor-exit p0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class final Lbqy$3;
.super Lbss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 448
    iput-object p1, p0, Lbqy$3;->c:Lbqy;

    iput-object p2, p0, Lbqy$3;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lbqy$3;->b:J

    invoke-direct {p0}, Lbss;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 450
    iget-object v0, p0, Lbqy$3;->c:Lbqy;

    iget-object v0, v0, Lbqy;->g:Lbtc;

    invoke-virtual {v0}, Lbtc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    new-instance v0, Lbre;

    iget-object v1, p0, Lbqy$3;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lbqy$3;->b:J

    invoke-direct {v0, v1, v2, v3}, Lbre;-><init>(Ljava/lang/Throwable;J)V

    .line 453
    const-string v1, "current_session"

    iget-object v2, p0, Lbqy$3;->c:Lbqy;

    iget-object v2, v2, Lbqy;->l:Lbrk;

    invoke-virtual {v0, v1, v2}, Lbre;->a(Ljava/lang/String;Lbrk;)V

    .line 455
    const-string v1, "he"

    iput-object v1, v0, Lbre;->c:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lbqy$3;->c:Lbqy;

    iget-object v1, v1, Lbqy;->i:Lbrk;

    invoke-virtual {v1, v0}, Lbrk;->a(Lbrw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lbqy$3;->c:Lbqy;

    iget-object v0, v0, Lbqy;->n:Lbsh;

    invoke-virtual {v0}, Lbsh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lbsp;

    iget-object v1, p0, Lbqy$3;->c:Lbqy;

    iget-object v1, v1, Lbqy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbsp;-><init>(Landroid/content/Context;)V

    .line 463
    iget-object v1, p0, Lbqy$3;->c:Lbqy;

    iget-object v1, v1, Lbqy;->i:Lbrk;

    new-instance v2, Lbsk$a;

    invoke-direct {v2}, Lbsk$a;-><init>()V

    iget-object v3, p0, Lbqy$3;->c:Lbqy;

    iget-object v3, v3, Lbqy;->w:Lbrb;

    iget-object v3, v3, Lbrb;->i:Ljava/lang/String;

    sget-object v4, Lbqy;->a:Lbqy;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbsp;->a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V

    .line 469
    iget-object v1, p0, Lbqy$3;->c:Lbqy;

    iget-object v1, v1, Lbqy;->o:Lbsq;

    iget-object v2, p0, Lbqy$3;->c:Lbqy;

    iget-object v2, v2, Lbqy;->q:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v0, Lbsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbss;

    invoke-virtual {v1, v0}, Lbsq;->a(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v0, p0, Lbqy$3;->c:Lbqy;

    iget-object v0, v0, Lbqy;->n:Lbsh;

    invoke-virtual {v0}, Lbsh;->b()V

    goto :goto_0
.end method

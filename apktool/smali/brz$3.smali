.class final Lbrz$3;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lbrz;


# direct methods
.method constructor <init>(Lbrz;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 448
    iput-object p1, p0, Lbrz$3;->c:Lbrz;

    iput-object p2, p0, Lbrz$3;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lbrz$3;->b:J

    invoke-direct {p0}, Lbtt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 450
    iget-object v0, p0, Lbrz$3;->c:Lbrz;

    iget-object v0, v0, Lbrz;->g:Lbud;

    invoke-virtual {v0}, Lbud;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    new-instance v0, Lbsf;

    iget-object v1, p0, Lbrz$3;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lbrz$3;->b:J

    invoke-direct {v0, v1, v2, v3}, Lbsf;-><init>(Ljava/lang/Throwable;J)V

    .line 453
    const-string v1, "current_session"

    iget-object v2, p0, Lbrz$3;->c:Lbrz;

    iget-object v2, v2, Lbrz;->l:Lbsl;

    invoke-virtual {v0, v1, v2}, Lbsf;->a(Ljava/lang/String;Lbsl;)V

    .line 455
    const-string v1, "he"

    iput-object v1, v0, Lbsf;->c:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lbrz$3;->c:Lbrz;

    iget-object v1, v1, Lbrz;->i:Lbsl;

    invoke-virtual {v1, v0}, Lbsl;->a(Lbsx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lbrz$3;->c:Lbrz;

    iget-object v0, v0, Lbrz;->n:Lbti;

    invoke-virtual {v0}, Lbti;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lbtq;

    iget-object v1, p0, Lbrz$3;->c:Lbrz;

    iget-object v1, v1, Lbrz;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbtq;-><init>(Landroid/content/Context;)V

    .line 463
    iget-object v1, p0, Lbrz$3;->c:Lbrz;

    iget-object v1, v1, Lbrz;->i:Lbsl;

    new-instance v2, Lbtl$a;

    invoke-direct {v2}, Lbtl$a;-><init>()V

    iget-object v3, p0, Lbrz$3;->c:Lbrz;

    iget-object v3, v3, Lbrz;->w:Lbsc;

    iget-object v3, v3, Lbsc;->i:Ljava/lang/String;

    sget-object v4, Lbrz;->a:Lbrz;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtq;->a(Lbsl;Lbtk;Ljava/lang/String;Lbrv;)V

    .line 469
    iget-object v1, p0, Lbrz$3;->c:Lbrz;

    iget-object v1, v1, Lbrz;->o:Lbtr;

    iget-object v2, p0, Lbrz$3;->c:Lbrz;

    iget-object v2, v2, Lbrz;->q:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v0, Lbtq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtt;

    invoke-virtual {v1, v0}, Lbtr;->a(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v0, p0, Lbrz$3;->c:Lbrz;

    iget-object v0, v0, Lbrz;->n:Lbti;

    invoke-virtual {v0}, Lbti;->b()V

    goto :goto_0
.end method

.class final Lbnv$c;
.super Lbnv$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Lbnv;

.field private d:J

.field private e:Z

.field private final f:Lbnx;


# direct methods
.method constructor <init>(Lbnv;Lbnx;)V
    .locals 2

    .prologue
    .line 422
    iput-object p1, p0, Lbnv$c;->c:Lbnv;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbnv$a;-><init>(Lbnv;B)V

    .line 418
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbnv$c;->d:J

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnv$c;->e:Z

    .line 423
    iput-object p2, p0, Lbnv$c;->f:Lbnx;

    .line 424
    return-void
.end method


# virtual methods
.method public final a(Lcav;J)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    .line 427
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-boolean v2, p0, Lbnv$c;->a:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    iget-boolean v2, p0, Lbnv$c;->e:Z

    if-nez v2, :cond_3

    .line 442
    :cond_2
    :goto_0
    return-wide v0

    .line 431
    :cond_3
    iget-wide v2, p0, Lbnv$c;->d:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lbnv$c;->d:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 432
    :cond_4
    iget-wide v2, p0, Lbnv$c;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbnv$c;->c:Lbnv;

    iget-object v2, v2, Lbnv;->c:Lcax;

    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    :cond_5
    :try_start_0
    iget-object v2, p0, Lbnv$c;->c:Lbnv;

    iget-object v2, v2, Lbnv;->c:Lcax;

    invoke-interface {v2}, Lcax;->l()J

    move-result-wide v2

    iput-wide v2, p0, Lbnv$c;->d:J

    iget-object v2, p0, Lbnv$c;->c:Lbnv;

    iget-object v2, v2, Lbnv;->c:Lcax;

    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lbnv$c;->d:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lbnv$c;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-wide v2, p0, Lbnv$c;->d:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lbnv$c;->e:Z

    new-instance v2, Lbmv$a;

    invoke-direct {v2}, Lbmv$a;-><init>()V

    iget-object v3, p0, Lbnv$c;->c:Lbnv;

    invoke-virtual {v3, v2}, Lbnv;->a(Lbmv$a;)V

    iget-object v3, p0, Lbnv$c;->f:Lbnx;

    invoke-virtual {v2}, Lbmv$a;->a()Lbmv;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbnx;->a(Lbmv;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lbnv$c;->a(Z)V

    .line 433
    :cond_8
    iget-boolean v2, p0, Lbnv$c;->e:Z

    if-eqz v2, :cond_2

    .line 436
    :cond_9
    iget-object v2, p0, Lbnv$c;->c:Lbnv;

    iget-object v2, v2, Lbnv;->c:Lcax;

    iget-wide v4, p0, Lbnv$c;->d:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcax;->a(Lcav;J)J

    move-result-wide v2

    .line 437
    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    .line 438
    invoke-virtual {p0}, Lbnv$c;->b()V

    .line 439
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_a
    iget-wide v0, p0, Lbnv$c;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lbnv$c;->d:J

    move-wide v0, v2

    .line 442
    goto/16 :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lbnv$c;->a:Z

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-boolean v0, p0, Lbnv$c;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lbnq;->a(Lcbk;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lbnv$c;->b()V

    .line 474
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnv$c;->a:Z

    goto :goto_0
.end method

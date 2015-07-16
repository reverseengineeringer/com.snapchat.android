.class final Lcbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcaw;


# instance fields
.field public final a:Lcav;

.field public final b:Lcbj;

.field private c:Z


# direct methods
.method public constructor <init>(Lcbj;)V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    invoke-direct {p0, p1, v0}, Lcbf;-><init>(Lcbj;Lcav;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcbj;Lcav;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p2, p0, Lcbf;->a:Lcav;

    .line 31
    iput-object p1, p0, Lcbf;->b:Lcbj;

    .line 32
    return-void
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcbf;->b:Lcbj;

    invoke-interface {v0}, Lcbj;->E_()Lcbl;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcbk;)J
    .locals 6

    .prologue
    .line 80
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const-wide/16 v0, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lcbf;->a:Lcav;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lcbk;->a(Lcav;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 83
    add-long/2addr v0, v2

    .line 84
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    goto :goto_0

    .line 86
    :cond_1
    return-wide v0
.end method

.method public final a_(Lcav;J)V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1, p2, p3}, Lcav;->a_(Lcav;J)V

    .line 46
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    .line 47
    return-void
.end method

.method public final b()Lcav;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcbf;->a:Lcav;

    return-object v0
.end method

.method public final b(Lcay;)Lcaw;
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->a(Lcay;)Lcav;

    .line 52
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcaw;
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->a(Ljava/lang/String;)Lcav;

    .line 58
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)Lcaw;
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->a([B)Lcav;

    .line 70
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcaw;
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    .line 163
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcbf;->b:Lcbj;

    iget-object v3, p0, Lcbf;->a:Lcav;

    invoke-interface {v2, v3, v0, v1}, Lcbj;->a_(Lcav;J)V

    .line 164
    :cond_1
    return-object p0
.end method

.method public final c([BII)Lcaw;
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1, p2, p3}, Lcav;->b([BII)Lcav;

    .line 76
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    .prologue
    .line 207
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcbf;->a:Lcav;

    iget-wide v2, v1, Lcav;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcbf;->b:Lcbj;

    iget-object v2, p0, Lcbf;->a:Lcav;

    iget-object v3, p0, Lcbf;->a:Lcav;

    iget-wide v4, v3, Lcav;->b:J

    invoke-interface {v1, v2, v4, v5}, Lcbj;->a_(Lcav;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcbf;->b:Lcbj;

    invoke-interface {v1}, Lcbj;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcbf;->c:Z

    .line 227
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcbm;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final e(I)Lcaw;
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->c(I)Lcav;

    .line 120
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lcaw;
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->b(I)Lcav;

    .line 108
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4

    .prologue
    .line 199
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcbf;->b:Lcbj;

    iget-object v1, p0, Lcbf;->a:Lcav;

    iget-object v2, p0, Lcbf;->a:Lcav;

    iget-wide v2, v2, Lcav;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcbj;->a_(Lcav;J)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcbf;->b:Lcbj;

    invoke-interface {v0}, Lcbj;->flush()V

    .line 204
    return-void
.end method

.method public final g(I)Lcaw;
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1}, Lcav;->a(I)Lcav;

    .line 102
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final i(J)Lcaw;
    .locals 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1, p2}, Lcav;->h(J)Lcav;

    .line 150
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final j(J)Lcaw;
    .locals 3

    .prologue
    .line 142
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcbf;->a:Lcav;

    invoke-virtual {v0, p1, p2}, Lcav;->g(J)Lcav;

    .line 144
    invoke-virtual {p0}, Lcbf;->q()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcaw;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 154
    iget-boolean v0, p0, Lcbf;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v4, p0, Lcbf;->a:Lcav;

    iget-wide v0, v4, Lcav;->b:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    move-wide v0, v2

    .line 156
    :cond_1
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcbf;->b:Lcbj;

    iget-object v3, p0, Lcbf;->a:Lcav;

    invoke-interface {v2, v3, v0, v1}, Lcbj;->a_(Lcav;J)V

    .line 157
    :cond_2
    return-object p0

    .line 155
    :cond_3
    iget-object v4, v4, Lcav;->a:Lcbh;

    iget-object v4, v4, Lcbh;->g:Lcbh;

    iget v5, v4, Lcbh;->c:I

    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lcbh;->e:Z

    if-eqz v5, :cond_1

    iget v5, v4, Lcbh;->c:I

    iget v4, v4, Lcbh;->b:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcbf;->b:Lcbj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

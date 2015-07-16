.class final Lcbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcax;


# instance fields
.field public final a:Lcav;

.field public final b:Lcbk;

.field c:Z


# direct methods
.method public constructor <init>(Lcbk;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    invoke-direct {p0, p1, v0}, Lcbg;-><init>(Lcbk;Lcav;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcbk;Lcav;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p2, p0, Lcbg;->a:Lcav;

    .line 33
    iput-object p1, p0, Lcbg;->b:Lcbk;

    .line 34
    return-void
.end method

.method private b(J)Z
    .locals 5

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcbg;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcbg;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcbg;->b:Lcbk;

    iget-object v1, p0, Lcbg;->a:Lcav;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcbk;->a(Lcav;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcbg;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->E_()Lcbl;

    move-result-object v0

    return-object v0
.end method

.method public final a(B)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    .line 289
    iget-boolean v4, p0, Lcbg;->c:Z

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lcbg;->a:Lcav;

    iget-wide v4, v4, Lcav;->b:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcbg;->b:Lcbk;

    iget-object v5, p0, Lcbg;->a:Lcav;

    invoke-interface {v4, v5, v6, v7}, Lcbk;->a(Lcav;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-object v4, p0, Lcbg;->a:Lcav;

    invoke-virtual {v4, p1, v0, v1}, Lcav;->a(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcbg;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    iget-object v4, p0, Lcbg;->b:Lcbk;

    iget-object v5, p0, Lcbg;->a:Lcav;

    invoke-interface {v4, v5, v6, v7}, Lcbk;->a(Lcav;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public final a(Lcav;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

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

    .line 47
    :cond_1
    iget-boolean v2, p0, Lcbg;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iget-object v2, p0, Lcbg;->a:Lcav;

    iget-wide v2, v2, Lcav;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 50
    iget-object v2, p0, Lcbg;->b:Lcbk;

    iget-object v3, p0, Lcbg;->a:Lcav;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lcbk;->a(Lcav;J)J

    move-result-wide v2

    .line 51
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 55
    :goto_0
    return-wide v0

    .line 54
    :cond_3
    iget-object v0, p0, Lcbg;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lcbg;->a:Lcav;

    invoke-virtual {v2, p1, v0, v1}, Lcav;->a(Lcav;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcbg;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public final b()Lcav;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcbg;->a:Lcav;

    return-object v0
.end method

.method public final c(J)Lcay;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcbg;->a(J)V

    .line 88
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0, p1, p2}, Lcav;->c(J)Lcay;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcbg;->c:Z

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbg;->c:Z

    .line 363
    iget-object v0, p0, Lcbg;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->close()V

    .line 364
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->p()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lcbg;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcbg;->b:Lcbk;

    iget-object v1, p0, Lcbg;->a:Lcav;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcbk;->a(Lcav;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcbg$1;

    invoke-direct {v0, p0}, Lcbg$1;-><init>(Lcbg;)V

    return-object v0
.end method

.method public final e(J)[B
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcbg;->a(J)V

    .line 98
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0, p1, p2}, Lcav;->e(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final f()B
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcbg;->a(J)V

    .line 78
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->f()B

    move-result v0

    return v0
.end method

.method public final f(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 277
    iget-boolean v0, p0, Lcbg;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcbg;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lcbg;->a:Lcav;

    invoke-virtual {v2, v0, v1}, Lcav;->f(J)V

    .line 284
    sub-long/2addr p1, v0

    .line 278
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcbg;->a:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcbg;->b:Lcbk;

    iget-object v1, p0, Lcbg;->a:Lcav;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcbk;->a(Lcav;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 286
    :cond_2
    return-void
.end method

.method public final g()S
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcbg;->a(J)V

    .line 208
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->g()S

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 217
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcbg;->a(J)V

    .line 218
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->h()I

    move-result v0

    return v0
.end method

.method public final i()S
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcbg;->a(J)V

    .line 213
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->g()S

    move-result v0

    invoke-static {v0}, Lcbm;->a(S)S

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 222
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcbg;->a(J)V

    .line 223
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->h()I

    move-result v0

    invoke-static {v0}, Lcbm;->a(I)I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 6

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcbg;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcbg;->a:Lcav;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcav;->b(J)B

    move-result v1

    .line 243
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_0

    .line 248
    :cond_2
    if-nez v0, :cond_3

    .line 249
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcbg;->a:Lcav;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcav;->b(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 6

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcbg;->b(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lcbg;->a:Lcav;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcav;->b(J)B

    move-result v1

    .line 263
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x66

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x46

    if-gt v1, v2, :cond_3

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 267
    goto :goto_0

    .line 268
    :cond_3
    if-nez v0, :cond_4

    .line 269
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcbg;->a:Lcav;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcav;->b(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_4
    iget-object v0, p0, Lcbg;->a:Lcav;

    invoke-virtual {v0}, Lcav;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 8

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcbg;->a(B)J

    move-result-wide v0

    .line 197
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 198
    new-instance v1, Lcav;

    invoke-direct {v1}, Lcav;-><init>()V

    .line 199
    iget-object v0, p0, Lcbg;->a:Lcav;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lcbg;->a:Lcav;

    iget-wide v6, v6, Lcav;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcav;->a(Lcav;JJ)Lcav;

    .line 200
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcbg;->a:Lcav;

    iget-wide v4, v3, Lcav;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcav;->m()Lcay;

    move-result-object v1

    invoke-virtual {v1}, Lcay;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v2, p0, Lcbg;->a:Lcav;

    invoke-virtual {v2, v0, v1}, Lcav;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcbg;->b:Lcbk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

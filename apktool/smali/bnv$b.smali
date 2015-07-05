.class final Lbnv$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lbzv;

.field private final b:Lbzu;

.field private final c:Lbzv;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lbzv;Z)V
    .locals 3

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lbnv$b;->a:Lbzv;

    .line 296
    iput-boolean p2, p0, Lbnv$b;->d:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    sget-object v1, Lbnv;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lbzu;

    invoke-direct {v1}, Lbzu;-><init>()V

    iput-object v1, p0, Lbnv$b;->b:Lbzu;

    .line 301
    new-instance v1, Lbzy;

    iget-object v2, p0, Lbnv$b;->b:Lbzu;

    invoke-direct {v1, v2, v0}, Lbzy;-><init>(Lcai;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lcad;->a(Lcai;)Lbzv;

    move-result-object v0

    iput-object v0, p0, Lbnv$b;->c:Lbzv;

    .line 302
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lbnv$b;->b:Lbzu;

    iget-wide v0, v0, Lbzu;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lbnv$b;->c:Lbzv;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 411
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 412
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v0, v0, Lbnl;->h:Lbzx;

    .line 413
    iget-object v3, p0, Lbnv$b;->c:Lbzv;

    iget-object v4, v0, Lbzx;->c:[B

    array-length v4, v4

    invoke-interface {v3, v4}, Lbzv;->e(I)Lbzv;

    .line 414
    iget-object v3, p0, Lbnv$b;->c:Lbzv;

    invoke-interface {v3, v0}, Lbzv;->b(Lbzx;)Lbzv;

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v0, v0, Lbnl;->i:Lbzx;

    .line 416
    iget-object v3, p0, Lbnv$b;->c:Lbzv;

    iget-object v4, v0, Lbzx;->c:[B

    array-length v4, v4

    invoke-interface {v3, v4}, Lbzv;->e(I)Lbzv;

    .line 417
    iget-object v3, p0, Lbnv$b;->c:Lbzv;

    invoke-interface {v3, v0}, Lbzv;->b(Lbzx;)Lbzv;

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lbnv$b;->c:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V

    .line 420
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 0

    .prologue
    .line 316
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnv$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 474
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_2
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 481
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 482
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0, p1}, Lbzv;->e(I)Lbzv;

    .line 483
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 484
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILbni;)V
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnv$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 374
    :cond_0
    :try_start_1
    iget v0, p2, Lbni;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_1
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 379
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 380
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 381
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    iget v1, p2, Lbni;->t:I

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 382
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILbni;[B)V
    .locals 2

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnv$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_0
    :try_start_1
    iget v0, p2, Lbni;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 464
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 465
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0, p1}, Lbzv;->e(I)Lbzv;

    .line 466
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    iget v1, p2, Lbni;->u:I

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 467
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    monitor-exit p0

    return-void
.end method

.method public final a(Lbnu;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public final declared-synchronized a(ZII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lbnv$b;->e:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lbnv$b;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 444
    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 443
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 445
    :cond_3
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 449
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 450
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0, p2}, Lbzv;->e(I)Lbzv;

    .line 451
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILbzu;I)V
    .locals 6

    .prologue
    .line 391
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 392
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lbnv$b;->e:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_1
    int-to-long v2, p4

    const-wide/32 v4, 0xffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lbnv$b;->a:Lbzv;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-interface {v1, v2}, Lbzv;->e(I)Lbzv;

    iget-object v1, p0, Lbnv$b;->a:Lbzv;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lbzv;->e(I)Lbzv;

    if-lez p4, :cond_3

    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lbzv;->a_(Lbzu;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lbnl;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbnv$b;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lbnv$b;->a(Ljava/util/List;)V

    .line 328
    const-wide/16 v2, 0xa

    iget-object v1, p0, Lbnv$b;->b:Lbzu;

    iget-wide v4, v1, Lbzu;->b:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 329
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/lit8 v0, v0, 0x0

    .line 332
    iget-object v2, p0, Lbnv$b;->a:Lbzv;

    const v3, -0x7ffcffff

    invoke-interface {v2, v3}, Lbzv;->e(I)Lbzv;

    .line 334
    iget-object v2, p0, Lbnv$b;->a:Lbzv;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lbzv;->e(I)Lbzv;

    .line 335
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 336
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbzv;->e(I)Lbzv;

    .line 337
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbzv;->f(I)Lbzv;

    .line 338
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    iget-object v1, p0, Lbnv$b;->b:Lbzu;

    invoke-interface {v0, v1}, Lbzv;->a(Lcaj;)J

    .line 339
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnv$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Lbnu;)V
    .locals 5

    .prologue
    const v4, 0xffffff

    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbnv$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_0
    :try_start_1
    iget v0, p1, Lbnu;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 427
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 428
    iget-object v2, p0, Lbnv$b;->a:Lbzv;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lbzv;->e(I)Lbzv;

    .line 429
    iget-object v2, p0, Lbnv$b;->a:Lbzv;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lbzv;->e(I)Lbzv;

    .line 430
    iget-object v1, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v1, v0}, Lbzv;->e(I)Lbzv;

    .line 431
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 432
    invoke-virtual {p1, v0}, Lbnu;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {p1, v0}, Lbnu;->b(I)I

    move-result v1

    .line 434
    iget-object v2, p0, Lbnv$b;->a:Lbzv;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lbzv;->e(I)Lbzv;

    .line 435
    iget-object v1, p0, Lbnv$b;->a:Lbzv;

    iget-object v2, p1, Lbnu;->d:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Lbzv;->e(I)Lbzv;

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    invoke-interface {v0}, Lbzv;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbnv$b;->e:Z

    .line 489
    iget-object v0, p0, Lbnv$b;->a:Lbzv;

    iget-object v1, p0, Lbnv$b;->c:Lbzv;

    invoke-static {v0, v1}, Lbmp;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class final Lboy$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcbk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lboy;

.field private final c:Lcav;

.field private final d:Lcav;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const-class v0, Lboy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lboy$b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lboy;J)V
    .locals 2

    .prologue
    .line 332
    iput-object p1, p0, Lboy$b;->b:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    iput-object v0, p0, Lboy$b;->c:Lcav;

    .line 318
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    iput-object v0, p0, Lboy$b;->d:Lcav;

    .line 333
    iput-wide p2, p0, Lboy$b;->e:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lboy;JB)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1, p2, p3}, Lboy$b;-><init>(Lboy;J)V

    return-void
.end method

.method static synthetic a(Lboy$b;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lboy$b;->g:Z

    return v0
.end method

.method static synthetic a(Lboy$b;Z)Z
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lboy$b;->g:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->c(Lboy;)Lboy$c;

    move-result-object v0

    invoke-virtual {v0}, Lboy$c;->c()V

    .line 375
    :goto_0
    :try_start_0
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lboy$b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lboy$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->d(Lboy;)Lboj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Lboy;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lboy$b;->b:Lboy;

    invoke-static {v1}, Lboy;->c(Lboy;)Lboy$c;

    move-result-object v1

    invoke-virtual {v1}, Lboy$c;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->c(Lboy;)Lboy$c;

    move-result-object v0

    invoke-virtual {v0}, Lboy$c;->b()V

    .line 380
    return-void
.end method

.method static synthetic b(Lboy$b;)Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lboy$b;->f:Z

    return v0
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->c(Lboy;)Lboy$c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcav;J)J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 338
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

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

    .line 341
    :cond_0
    iget-object v2, p0, Lboy$b;->b:Lboy;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lboy$b;->b()V

    .line 343
    iget-boolean v0, p0, Lboy$b;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    :cond_1
    :try_start_1
    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->d(Lboy;)Lboj;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "stream was reset: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->d(Lboy;)Lboj;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_2
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-wide v0, v0, Lcav;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 368
    :goto_0
    return-wide v0

    .line 347
    :cond_3
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-object v1, p0, Lboy$b;->d:Lcav;

    iget-wide v4, v1, Lcav;->b:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcav;->a(Lcav;J)J

    move-result-wide v0

    .line 350
    iget-object v3, p0, Lboy$b;->b:Lboy;

    iget-wide v4, v3, Lboy;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lboy;->a:J

    .line 351
    iget-object v3, p0, Lboy$b;->b:Lboy;

    iget-wide v4, v3, Lboy;->a:J

    iget-object v3, p0, Lboy$b;->b:Lboy;

    .line 352
    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    iget-object v3, v3, Lbox;->e:Lbov;

    invoke-virtual {v3}, Lbov;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    .line 353
    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    iget-object v4, p0, Lboy$b;->b:Lboy;

    invoke-static {v4}, Lboy;->b(Lboy;)I

    move-result v4

    iget-object v5, p0, Lboy$b;->b:Lboy;

    iget-wide v6, v5, Lboy;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lbox;->a(IJ)V

    .line 354
    iget-object v3, p0, Lboy$b;->b:Lboy;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lboy;->a:J

    .line 356
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    iget-object v2, p0, Lboy$b;->b:Lboy;

    invoke-static {v2}, Lboy;->a(Lboy;)Lbox;

    move-result-object v2

    monitor-enter v2

    .line 360
    :try_start_2
    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    iget-wide v4, v3, Lbox;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lbox;->c:J

    .line 361
    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    iget-wide v4, v3, Lbox;->c:J

    iget-object v3, p0, Lboy$b;->b:Lboy;

    .line 362
    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    iget-object v3, v3, Lbox;->e:Lbov;

    invoke-virtual {v3}, Lbov;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 363
    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lboy$b;->b:Lboy;

    invoke-static {v5}, Lboy;->a(Lboy;)Lbox;

    move-result-object v5

    iget-wide v6, v5, Lbox;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lbox;->a(IJ)V

    .line 364
    iget-object v3, p0, Lboy$b;->b:Lboy;

    invoke-static {v3}, Lboy;->a(Lboy;)Lbox;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lbox;->c:J

    .line 366
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method final a(Lcax;J)V
    .locals 8

    .prologue
    .line 384
    sget-boolean v0, Lboy$b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 410
    :cond_0
    sub-long/2addr p2, v0

    .line 413
    iget-object v1, p0, Lboy$b;->b:Lboy;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-wide v2, v0, Lcav;->b:J

    .line 415
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-object v2, p0, Lboy$b;->c:Lcav;

    invoke-virtual {v0, v2}, Lcav;->a(Lcbk;)J

    .line 416
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 389
    iget-object v1, p0, Lboy$b;->b:Lboy;

    monitor-enter v1

    .line 390
    :try_start_1
    iget-boolean v2, p0, Lboy$b;->g:Z

    .line 391
    iget-object v0, p0, Lboy$b;->d:Lcav;

    iget-wide v4, v0, Lcav;->b:J

    add-long/2addr v4, p2

    iget-wide v6, p0, Lboy$b;->e:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 392
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    if-eqz v0, :cond_4

    .line 396
    invoke-interface {p1, p2, p3}, Lcax;->f(J)V

    .line 397
    iget-object v0, p0, Lboy$b;->b:Lboy;

    sget-object v1, Lboj;->h:Lboj;

    invoke-virtual {v0, v1}, Lboy;->b(Lboj;)V

    .line 420
    :cond_2
    :goto_1
    return-void

    .line 391
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 402
    :cond_4
    if-eqz v2, :cond_5

    .line 403
    invoke-interface {p1, p2, p3}, Lcax;->f(J)V

    goto :goto_1

    .line 408
    :cond_5
    iget-object v0, p0, Lboy$b;->c:Lcav;

    invoke-interface {p1, v0, p2, p3}, Lcax;->a(Lcav;J)J

    move-result-wide v0

    .line 409
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 416
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lboy$b;->b:Lboy;

    monitor-enter v1

    .line 429
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lboy$b;->f:Z

    .line 430
    iget-object v0, p0, Lboy$b;->d:Lcav;

    invoke-virtual {v0}, Lcav;->p()V

    .line 431
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lboy$b;->b:Lboy;

    invoke-static {v0}, Lboy;->e(Lboy;)V

    .line 434
    return-void

    .line 431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

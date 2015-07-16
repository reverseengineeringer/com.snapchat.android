.class final Lbpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lbqj;


# instance fields
.field final a:I

.field final b:Lbqe;

.field final c:Lbps;

.field final d:Lbpn;

.field final e:Lbql;

.field final f:Ljava/lang/String;

.field final g:Lbqh;

.field final h:I

.field i:I

.field final j:Lbqj;

.field k:Lbpk;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpk;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field o:Lbqe$d;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbpm;->t:Ljava/lang/Object;

    .line 52
    new-instance v0, Lbpm$1;

    invoke-direct {v0}, Lbpm$1;-><init>()V

    sput-object v0, Lbpm;->u:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lbpm;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lbpm$2;

    invoke-direct {v0}, Lbpm$2;-><init>()V

    sput-object v0, Lbpm;->w:Lbqj;

    return-void
.end method

.method private constructor <init>(Lbqe;Lbps;Lbpn;Lbql;Lbpk;Lbqj;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lbpm;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lbpm;->a:I

    .line 94
    iput-object p1, p0, Lbpm;->b:Lbqe;

    .line 95
    iput-object p2, p0, Lbpm;->c:Lbps;

    .line 96
    iput-object p3, p0, Lbpm;->d:Lbpn;

    .line 97
    iput-object p4, p0, Lbpm;->e:Lbql;

    .line 98
    iput-object p5, p0, Lbpm;->k:Lbpk;

    .line 99
    iget-object v0, p5, Lbpk;->i:Ljava/lang/String;

    iput-object v0, p0, Lbpm;->f:Ljava/lang/String;

    .line 100
    iget-object v0, p5, Lbpk;->b:Lbqh;

    iput-object v0, p0, Lbpm;->g:Lbqh;

    .line 101
    iget-object v0, p5, Lbpk;->b:Lbqh;

    iget v0, v0, Lbqh;->r:I

    iput v0, p0, Lbpm;->s:I

    .line 102
    iget v0, p5, Lbpk;->e:I

    iput v0, p0, Lbpm;->h:I

    .line 103
    iget v0, p5, Lbpk;->f:I

    iput v0, p0, Lbpm;->i:I

    .line 104
    iput-object p6, p0, Lbpm;->j:Lbqj;

    .line 105
    invoke-virtual {p6}, Lbqj;->a()I

    move-result v0

    iput v0, p0, Lbpm;->r:I

    .line 106
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbqn;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    .line 426
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqn;

    .line 429
    :try_start_0
    invoke-interface {v0}, Lbqn;->a()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 440
    if-nez p1, :cond_1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Transformation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-interface {v0}, Lbqn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null after "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqn;

    .line 448
    invoke-interface {v0}, Lbqn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :catch_0
    move-exception v2

    .line 431
    sget-object v3, Lbqe;->a:Landroid/os/Handler;

    new-instance v4, Lbpm$3;

    invoke-direct {v4, v0, v2}, Lbpm$3;-><init>(Lbqn;Ljava/lang/RuntimeException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 483
    :goto_2
    return-object v0

    .line 450
    :cond_0
    sget-object v0, Lbqe;->a:Landroid/os/Handler;

    new-instance v3, Lbpm$4;

    invoke-direct {v3, v2}, Lbpm$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 455
    goto :goto_2

    .line 458
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object v2, Lbqe;->a:Landroid/os/Handler;

    new-instance v3, Lbpm$5;

    invoke-direct {v3, v0}, Lbpm$5;-><init>(Lbqn;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 466
    goto :goto_2

    .line 470
    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    sget-object v2, Lbqe;->a:Landroid/os/Handler;

    new-instance v3, Lbpm$6;

    invoke-direct {v3, v0}, Lbpm$6;-><init>(Lbqn;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 478
    goto :goto_2

    .line 425
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 483
    goto :goto_2
.end method

.method static a(Lbqe;Lbps;Lbpn;Lbql;Lbpk;)Lbpm;
    .locals 7

    .prologue
    .line 409
    iget-object v1, p4, Lbpk;->b:Lbqh;

    .line 410
    iget-object v2, p0, Lbqe;->e:Ljava/util/List;

    .line 414
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbqj;

    .line 416
    invoke-virtual {v6, v1}, Lbqj;->a(Lbqh;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    new-instance v0, Lbpm;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lbpm;-><init>(Lbqe;Lbps;Lbpn;Lbql;Lbpk;Lbqj;)V

    .line 421
    :goto_1
    return-object v0

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lbpm;

    sget-object v6, Lbpm;->w:Lbqj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lbpm;-><init>(Lbqe;Lbps;Lbpn;Lbql;Lbpk;Lbqj;)V

    goto :goto_1
.end method

.method private static a(ZIIII)Z
    .locals 1

    .prologue
    .line 569
    if-eqz p0, :cond_0

    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 193
    move-object/from16 v0, p0

    iget v3, v0, Lbpm;->h:I

    invoke-static {v3}, Lbqa;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->d:Lbpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Lbpn;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->e:Lbql;

    invoke-virtual {v3}, Lbql;->a()V

    .line 197
    sget-object v3, Lbqe$d;->a:Lbqe$d;

    move-object/from16 v0, p0

    iput-object v3, v0, Lbpm;->o:Lbqe$d;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->b:Lbqe;

    iget-boolean v3, v3, Lbqe;->o:Z

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "Hunter"

    const-string v4, "decoded"

    move-object/from16 v0, p0

    iget-object v5, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v5}, Lbqh;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from cache"

    invoke-static {v3, v4, v5, v6}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-object v2

    .line 205
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lbpm;->g:Lbqh;

    move-object/from16 v0, p0

    iget v3, v0, Lbpm;->r:I

    if-nez v3, :cond_f

    sget-object v3, Lbqb;->c:Lbqb;

    iget v3, v3, Lbqb;->d:I

    :goto_1
    iput v3, v4, Lbqh;->c:I

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->j:Lbqj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v3, v4}, Lbqj;->b(Lbqh;)Lbqj$a;

    move-result-object v3

    .line 207
    if-eqz v3, :cond_4

    .line 208
    iget-object v2, v3, Lbqj$a;->a:Lbqe$d;

    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->o:Lbqe$d;

    .line 209
    iget v2, v3, Lbqj$a;->d:I

    move-object/from16 v0, p0

    iput v2, v0, Lbpm;->q:I

    .line 211
    iget-object v2, v3, Lbqj$a;->b:Landroid/graphics/Bitmap;

    .line 214
    if-nez v2, :cond_4

    .line 215
    iget-object v3, v3, Lbqj$a;->c:Ljava/io/InputStream;

    .line 217
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->g:Lbqh;

    new-instance v4, Lbpy;

    invoke-direct {v4, v3}, Lbpy;-><init>(Ljava/io/InputStream;)V

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lbpy;->a(I)J

    move-result-wide v6

    invoke-static {v2}, Lbqj;->d(Lbqh;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v5}, Lbqj;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v8

    invoke-static {v4}, Lbqp;->c(Ljava/io/InputStream;)Z

    move-result v9

    invoke-virtual {v4, v6, v7}, Lbpy;->a(J)V

    if-eqz v9, :cond_10

    invoke-static {v4}, Lbqp;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v2, Lbqh;->h:I

    iget v7, v2, Lbqh;->i:I

    invoke-static {v6, v7, v5, v2}, Lbqj;->a(IILandroid/graphics/BitmapFactory$Options;Lbqh;)V

    :cond_2
    const/4 v2, 0x0

    array-length v6, v4

    invoke-static {v4, v2, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 219
    :cond_3
    invoke-static {v3}, Lbqp;->a(Ljava/io/InputStream;)V

    .line 224
    :cond_4
    if-eqz v2, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->b:Lbqe;

    iget-boolean v3, v3, Lbqe;->o:Z

    if-eqz v3, :cond_5

    .line 226
    const-string v3, "Hunter"

    const-string v4, "decoded"

    move-object/from16 v0, p0

    iget-object v5, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v5}, Lbqh;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->e:Lbql;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbql;->a(Landroid/graphics/Bitmap;I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v3}, Lbqh;->d()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lbqh;->e()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_6
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lbpm;->q:I

    if-eqz v3, :cond_0

    .line 230
    :cond_7
    sget-object v12, Lbpm;->t:Ljava/lang/Object;

    monitor-enter v12

    .line 231
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v3}, Lbqh;->d()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lbpm;->q:I

    if-eqz v3, :cond_d

    .line 232
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lbpm;->g:Lbqh;

    move-object/from16 v0, p0

    iget v13, v0, Lbpm;->q:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-boolean v14, v8, Lbqh;->l:Z

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Lbqh;->d()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget v15, v8, Lbqh;->h:I

    iget v0, v8, Lbqh;->i:I

    move/from16 v16, v0

    iget v9, v8, Lbqh;->m:F

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_9

    iget-boolean v10, v8, Lbqh;->p:Z

    if-eqz v10, :cond_13

    iget v10, v8, Lbqh;->n:F

    iget v11, v8, Lbqh;->o:F

    invoke-virtual {v7, v9, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_9
    :goto_3
    iget-boolean v9, v8, Lbqh;->j:Z

    if-eqz v9, :cond_15

    int-to-float v8, v15

    int-to-float v9, v4

    div-float v10, v8, v9

    move/from16 v0, v16

    int-to-float v8, v0

    int-to-float v9, v3

    div-float/2addr v8, v9

    cmpl-float v9, v10, v8

    if-lez v9, :cond_14

    int-to-float v5, v3

    div-float/2addr v8, v10

    mul-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sub-int v5, v3, v8

    div-int/lit8 v9, v5, 0x2

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v11, v8

    div-float/2addr v5, v11

    move v11, v10

    move v10, v5

    move v5, v4

    move/from16 v17, v9

    move v9, v6

    move v6, v8

    move/from16 v8, v17

    :goto_4
    move/from16 v0, v16

    invoke-static {v14, v4, v3, v15, v0}, Lbpm;->a(ZIIII)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a
    move v4, v8

    move v3, v9

    :goto_5
    if-eqz v13, :cond_b

    int-to-float v8, v13

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_b
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    .line 233
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->b:Lbqe;

    iget-boolean v3, v3, Lbqe;->o:Z

    if-eqz v3, :cond_d

    .line 234
    const-string v3, "Hunter"

    const-string v4, "transformed"

    move-object/from16 v0, p0

    iget-object v5, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v5}, Lbqh;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v3}, Lbqh;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->g:Lbqh;

    iget-object v3, v3, Lbqh;->g:Ljava/util/List;

    invoke-static {v3, v2}, Lbpm;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->b:Lbqe;

    iget-boolean v3, v3, Lbqe;->o:Z

    if-eqz v3, :cond_e

    .line 240
    const-string v3, "Hunter"

    const-string v4, "transformed"

    move-object/from16 v0, p0

    iget-object v5, v0, Lbpm;->g:Lbqh;

    invoke-virtual {v5}, Lbqh;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_e
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    if-eqz v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lbpm;->e:Lbql;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lbql;->a(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 205
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lbpm;->i:I

    goto/16 :goto_1

    .line 217
    :cond_10
    if-eqz v8, :cond_11

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v8, v2, Lbqh;->h:I

    iget v9, v2, Lbqh;->i:I

    invoke-static {v8, v9, v5, v2}, Lbqj;->a(IILandroid/graphics/BitmapFactory$Options;Lbqh;)V

    invoke-virtual {v4, v6, v7}, Lbpy;->a(J)V

    :cond_11
    const/4 v2, 0x0

    invoke-static {v4, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Failed to decode stream."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :catchall_0
    move-exception v2

    invoke-static {v3}, Lbqp;->a(Ljava/io/InputStream;)V

    throw v2

    .line 229
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 232
    :cond_13
    :try_start_3
    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    goto/16 :goto_3

    .line 243
    :catchall_1
    move-exception v2

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 232
    :cond_14
    int-to-float v6, v4

    div-float v9, v10, v8

    mul-float/2addr v6, v9

    float-to-double v10, v6

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    sub-int v9, v4, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v10, v15

    int-to-float v11, v6

    div-float/2addr v10, v11

    move v11, v10

    move v10, v8

    move v8, v5

    move v5, v6

    move v6, v3

    goto/16 :goto_4

    :cond_15
    iget-boolean v8, v8, Lbqh;->k:Z

    if-eqz v8, :cond_18

    int-to-float v8, v15

    int-to-float v9, v4

    div-float/2addr v8, v9

    move/from16 v0, v16

    int-to-float v9, v0

    int-to-float v10, v3

    div-float/2addr v9, v10

    cmpg-float v10, v8, v9

    if-gez v10, :cond_17

    :goto_6
    move/from16 v0, v16

    invoke-static {v14, v4, v3, v15, v0}, Lbpm;->a(ZIIII)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_16
    move/from16 v17, v3

    move v3, v6

    move/from16 v6, v17

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto/16 :goto_5

    :cond_17
    move v8, v9

    goto :goto_6

    :cond_18
    if-nez v15, :cond_19

    if-eqz v16, :cond_1b

    :cond_19
    if-ne v15, v4, :cond_1a

    move/from16 v0, v16

    if-eq v0, v3, :cond_1b

    :cond_1a
    if-eqz v15, :cond_1c

    int-to-float v8, v15

    int-to-float v9, v4

    div-float/2addr v8, v9

    move v9, v8

    :goto_7
    if-eqz v16, :cond_1d

    move/from16 v0, v16

    int-to-float v8, v0

    int-to-float v10, v3

    div-float/2addr v8, v10

    :goto_8
    move/from16 v0, v16

    invoke-static {v14, v4, v3, v15, v0}, Lbpm;->a(ZIIII)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->preScale(FF)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1b
    move/from16 v17, v3

    move v3, v6

    move/from16 v6, v17

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto/16 :goto_5

    :cond_1c
    move/from16 v0, v16

    int-to-float v8, v0

    int-to-float v9, v3

    div-float/2addr v8, v9

    move v9, v8

    goto :goto_7

    :cond_1d
    int-to-float v8, v15

    int-to-float v10, v4

    div-float/2addr v8, v10

    goto :goto_8
.end method


# virtual methods
.method final a(Lbpk;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    .line 287
    iget-object v0, p0, Lbpm;->k:Lbpk;

    if-ne v0, p1, :cond_1

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lbpm;->k:Lbpk;

    move v0, v1

    .line 296
    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p1, Lbpk;->b:Lbqh;

    iget v0, v0, Lbqh;->r:I

    iget v3, p0, Lbpm;->s:I

    if-ne v0, v3, :cond_6

    .line 297
    sget v3, Lbqe$e;->a:I

    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v4, p0, Lbpm;->k:Lbpk;

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lbpm;->k:Lbpk;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lbpm;->k:Lbpk;

    iget-object v1, v1, Lbpk;->b:Lbqh;

    iget v1, v1, Lbqh;->r:I

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_5

    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    iget-object v0, v0, Lbpk;->b:Lbqh;

    iget v0, v0, Lbqh;->r:I

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    if-le v4, v5, :cond_8

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    .line 290
    :cond_1
    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 291
    iget-object v0, p0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 297
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    iput v1, p0, Lbpm;->s:I

    .line 300
    :cond_6
    iget-object v0, p0, Lbpm;->b:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_7

    .line 301
    const-string v0, "Hunter"

    const-string v1, "removed"

    iget-object v2, p1, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from "

    invoke-static {p0, v3}, Lbqp;->a(Lbpm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lbpm;->k:Lbpk;

    if-nez v1, :cond_1

    iget-object v1, p0, Lbpm;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbpm;->l:Ljava/util/List;

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lbpm;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbpm;->n:Ljava/util/concurrent/Future;

    .line 337
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lbpm;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpm;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 28

    .prologue
    .line 153
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->g:Lbqh;

    iget-object v3, v2, Lbqh;->d:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lbqh;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    sget-object v2, Lbpm;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const/16 v4, 0x8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->b:Lbqe;

    iget-boolean v2, v2, Lbqe;->o:Z

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "Hunter"

    const-string v3, "executing"

    invoke-static/range {p0 .. p0}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-direct/range {p0 .. p0}, Lbpm;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->m:Landroid/graphics/Bitmap;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->m:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->b(Lbpm;)V
    :try_end_0
    .catch Lbpt$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbqc$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 187
    :goto_2
    return-void

    .line 153
    :cond_1
    :try_start_1
    iget v2, v2, Lbqh;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    iget-object v3, v2, Lbps;->i:Landroid/os/Handler;

    iget-object v2, v2, Lbps;->i:Landroid/os/Handler;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lbpt$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbqc$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    :try_start_2
    iget-boolean v3, v2, Lbpt$b;->a:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lbpt$b;->b:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_4

    .line 168
    :cond_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->p:Ljava/lang/Exception;

    .line 170
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->b(Lbpm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :catch_1
    move-exception v2

    .line 172
    :try_start_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->p:Ljava/lang/Exception;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->a(Lbpm;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :catch_2
    move-exception v2

    .line 175
    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->p:Ljava/lang/Exception;

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->a(Lbpm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :catch_3
    move-exception v2

    .line 178
    :try_start_5
    new-instance v27, Ljava/io/StringWriter;

    invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lbpm;->e:Lbql;

    move-object/from16 v24, v0

    new-instance v3, Lbqm;

    move-object/from16 v0, v24

    iget-object v4, v0, Lbql;->b:Lbpn;

    invoke-interface {v4}, Lbpn;->b()I

    move-result v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lbql;->b:Lbpn;

    invoke-interface {v5}, Lbpn;->a()I

    move-result v5

    move-object/from16 v0, v24

    iget-wide v6, v0, Lbql;->d:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Lbql;->e:J

    move-object/from16 v0, v24

    iget-wide v10, v0, Lbql;->f:J

    move-object/from16 v0, v24

    iget-wide v12, v0, Lbql;->g:J

    move-object/from16 v0, v24

    iget-wide v14, v0, Lbql;->h:J

    move-object/from16 v0, v24

    iget-wide v0, v0, Lbql;->i:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lbql;->j:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lbql;->k:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lbql;->l:I

    move/from16 v22, v0

    move-object/from16 v0, v24

    iget v0, v0, Lbql;->m:I

    move/from16 v23, v0

    move-object/from16 v0, v24

    iget v0, v0, Lbql;->n:I

    move/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-direct/range {v3 .. v26}, Lbqm;-><init>(IIJJJJJJJJIIIJ)V

    new-instance v4, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "===============BEGIN PICASSO STATS ==============="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Memory Cache Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Max Cache Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->a:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->b:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache % Full: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->b:I

    int-to-float v5, v5

    iget v6, v3, Lbqm;->a:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Cache Hits: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Cache Misses: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "Network Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Download Count: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->k:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Download Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Download Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "Bitmap Stats"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Total Bitmaps Decoded: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->l:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Total Transformed Bitmaps: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lbqm;->m:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(I)V

    const-string v5, "  Total Transformed Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v5, "  Average Transformed Bitmap Size: "

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v3, Lbqm;->j:J

    invoke-virtual {v4, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    const-string v3, "===============END PICASSO STATS ==============="

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 180
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lbpm;->p:Ljava/lang/Exception;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->b(Lbpm;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    :catch_4
    move-exception v2

    .line 183
    :try_start_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lbpm;->p:Ljava/lang/Exception;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lbpm;->c:Lbps;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lbps;->b(Lbpm;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Picasso-Idle"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Picasso-Idle"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method

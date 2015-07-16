.class public final Lbxu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B:F

.field private static C:F

.field private static u:F

.field private static v:F

.field private static w:F

.field private static x:F

.field private static final y:[F


# instance fields
.field private final A:F

.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/view/animation/Interpolator;

.field private s:Z

.field private t:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    sput v0, Lbxu;->u:F

    .line 65
    const/high16 v0, 0x44480000    # 800.0f

    sput v0, Lbxu;->v:F

    .line 66
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lbxu;->w:F

    .line 67
    sget v0, Lbxu;->w:F

    sub-float v0, v1, v0

    sput v0, Lbxu;->x:F

    .line 69
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lbxu;->y:[F

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-gt v4, v12, :cond_2

    .line 77
    int-to-float v0, v4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v5, v0, v3

    move v0, v1

    move v3, v2

    .line 81
    :goto_1
    sub-float v2, v0, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    .line 82
    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float v7, v1, v2

    mul-float/2addr v6, v7

    .line 83
    sub-float v7, v1, v2

    sget v8, Lbxu;->w:F

    mul-float/2addr v7, v8

    sget v8, Lbxu;->x:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 84
    sub-float v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 85
    cmpl-float v6, v7, v5

    if-lez v6, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v3, v2

    .line 86
    goto :goto_1

    .line 88
    :cond_1
    mul-float v0, v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    .line 89
    sget-object v2, Lbxu;->y:[F

    aput v0, v2, v4

    .line 76
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    .line 91
    :cond_2
    sget-object v0, Lbxu;->y:[F

    aput v1, v0, v12

    .line 94
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lbxu;->B:F

    .line 96
    sput v1, Lbxu;->C:F

    .line 97
    invoke-static {v1}, Lbxu;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lbxu;->C:F

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbxu;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;B)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v3, p0, Lbxu;->d:Z

    .line 126
    iput-object p2, p0, Lbxu;->r:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lbxu;->A:F

    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const v1, 0x43c10b3d

    iget v2, p0, Lbxu;->A:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lbxu;->z:F

    .line 129
    iput-boolean v3, p0, Lbxu;->s:Z

    .line 130
    return-void
.end method

.method private static a(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 423
    sget v0, Lbxu;->B:F

    mul-float/2addr v0, p0

    .line 424
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 425
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 431
    :goto_0
    sget v1, Lbxu;->C:F

    mul-float/2addr v0, v1

    .line 432
    return v0

    .line 427
    :cond_0
    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v4, v0

    .line 429
    const v1, 0x3ebc5ab2

    const v2, 0x3f21d2a7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 333
    iput v2, p0, Lbxu;->e:I

    .line 334
    iput-boolean v2, p0, Lbxu;->d:Z

    .line 335
    iput p2, p0, Lbxu;->n:I

    .line 336
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbxu;->m:J

    .line 337
    iput v2, p0, Lbxu;->f:I

    .line 338
    iput v2, p0, Lbxu;->a:I

    .line 339
    iput v2, p0, Lbxu;->g:I

    .line 340
    add-int/lit8 v0, p1, 0x0

    iput v0, p0, Lbxu;->b:I

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lbxu;->p:F

    .line 342
    int-to-float v0, p1

    iput v0, p0, Lbxu;->q:F

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lbxu;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lbxu;->o:F

    .line 344
    return-void
.end method

.method public final a(III)V
    .locals 12

    .prologue
    .line 368
    iget-boolean v0, p0, Lbxu;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbxu;->d:Z

    if-nez v0, :cond_0

    .line 369
    iget v0, p0, Lbxu;->t:F

    iget v1, p0, Lbxu;->z:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lbxu;->m:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 371
    iget v1, p0, Lbxu;->g:I

    iget v2, p0, Lbxu;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 372
    iget v2, p0, Lbxu;->b:I

    iget v3, p0, Lbxu;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 373
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    .line 375
    div-float/2addr v1, v3

    .line 376
    div-float/2addr v2, v3

    .line 378
    mul-float/2addr v1, v0

    .line 379
    mul-float/2addr v0, v2

    .line 380
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 382
    const/4 v2, 0x0

    add-float/2addr v1, v2

    float-to-int p2, v1

    .line 383
    int-to-float v1, p3

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 387
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lbxu;->e:I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxu;->d:Z

    .line 390
    mul-int v0, p2, p2

    mul-int v1, p3, p3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 392
    iput v2, p0, Lbxu;->t:F

    .line 393
    sget v0, Lbxu;->w:F

    mul-float/2addr v0, v2

    sget v1, Lbxu;->v:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 394
    const-wide v0, 0x408f400000000000L    # 1000.0

    sget v3, Lbxu;->u:F

    float-to-double v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lbxu;->n:I

    .line 395
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbxu;->m:J

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lbxu;->f:I

    .line 397
    iput p1, p0, Lbxu;->a:I

    .line 399
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    .line 400
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 402
    :goto_1
    sget v2, Lbxu;->v:F

    float-to-double v2, v2

    sget v6, Lbxu;->u:F

    float-to-double v6, v6

    sget v8, Lbxu;->u:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 405
    const/4 v3, 0x0

    iput v3, p0, Lbxu;->h:I

    .line 406
    const/4 v3, 0x0

    iput v3, p0, Lbxu;->i:I

    .line 407
    const/4 v3, 0x0

    iput v3, p0, Lbxu;->j:I

    .line 408
    const v3, 0x7fffffff

    iput v3, p0, Lbxu;->k:I

    .line 410
    int-to-float v3, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lbxu;->g:I

    .line 412
    iget v1, p0, Lbxu;->g:I

    iget v3, p0, Lbxu;->i:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbxu;->g:I

    .line 413
    iget v1, p0, Lbxu;->g:I

    iget v3, p0, Lbxu;->h:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lbxu;->g:I

    .line 415
    int-to-float v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lbxu;->b:I

    .line 417
    iget v0, p0, Lbxu;->b:I

    iget v1, p0, Lbxu;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lbxu;->b:I

    .line 418
    iget v0, p0, Lbxu;->b:I

    iget v1, p0, Lbxu;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbxu;->b:I

    .line 419
    return-void

    .line 399
    :cond_1
    int-to-float v0, p2

    div-float/2addr v0, v2

    move v1, v0

    goto :goto_0

    .line 400
    :cond_2
    int-to-float v0, p3

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method public final a()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    .line 248
    iget-boolean v0, p0, Lbxu;->d:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lbxu;->m:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 254
    iget v2, p0, Lbxu;->n:I

    if-ge v0, v2, :cond_3

    .line 255
    iget v2, p0, Lbxu;->e:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 257
    :pswitch_0
    int-to-float v0, v0

    iget v2, p0, Lbxu;->o:F

    mul-float/2addr v0, v2

    .line 259
    iget-object v2, p0, Lbxu;->r:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_2

    .line 260
    invoke-static {v0}, Lbxu;->a(F)F

    move-result v0

    .line 264
    :goto_2
    iget v2, p0, Lbxu;->f:I

    iget v3, p0, Lbxu;->p:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lbxu;->l:I

    .line 265
    iget v2, p0, Lbxu;->a:I

    iget v3, p0, Lbxu;->q:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lbxu;->c:I

    goto :goto_1

    .line 262
    :cond_2
    iget-object v2, p0, Lbxu;->r:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 268
    :pswitch_1
    int-to-float v0, v0

    iget v2, p0, Lbxu;->n:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 269
    mul-float v2, v6, v0

    float-to-int v2, v2

    .line 270
    int-to-float v3, v2

    div-float/2addr v3, v6

    .line 271
    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 272
    sget-object v5, Lbxu;->y:[F

    aget v5, v5, v2

    .line 273
    sget-object v6, Lbxu;->y:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    .line 274
    sub-float/2addr v0, v3

    sub-float v3, v4, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    .line 276
    iget v2, p0, Lbxu;->f:I

    iget v3, p0, Lbxu;->g:I

    iget v4, p0, Lbxu;->f:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lbxu;->l:I

    .line 278
    iget v2, p0, Lbxu;->l:I

    iget v3, p0, Lbxu;->i:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lbxu;->l:I

    .line 279
    iget v2, p0, Lbxu;->l:I

    iget v3, p0, Lbxu;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lbxu;->l:I

    .line 281
    iget v2, p0, Lbxu;->a:I

    iget v3, p0, Lbxu;->b:I

    iget v4, p0, Lbxu;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lbxu;->c:I

    .line 283
    iget v0, p0, Lbxu;->c:I

    iget v2, p0, Lbxu;->k:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lbxu;->c:I

    .line 284
    iget v0, p0, Lbxu;->c:I

    iget v2, p0, Lbxu;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbxu;->c:I

    .line 286
    iget v0, p0, Lbxu;->l:I

    iget v2, p0, Lbxu;->g:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lbxu;->c:I

    iget v2, p0, Lbxu;->b:I

    if-ne v0, v2, :cond_1

    .line 287
    iput-boolean v1, p0, Lbxu;->d:Z

    goto/16 :goto_1

    .line 294
    :cond_3
    iget v0, p0, Lbxu;->g:I

    iput v0, p0, Lbxu;->l:I

    .line 295
    iget v0, p0, Lbxu;->b:I

    iput v0, p0, Lbxu;->c:I

    .line 296
    iput-boolean v1, p0, Lbxu;->d:Z

    goto/16 :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

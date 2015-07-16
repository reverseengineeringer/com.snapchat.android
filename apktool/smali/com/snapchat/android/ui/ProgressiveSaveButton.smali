.class public Lcom/snapchat/android/ui/ProgressiveSaveButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ProgressiveSaveButton$1;,
        Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 77
    iput v3, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    .line 88
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    .line 97
    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors contain unexpected alpha"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setVisibility(I)V

    .line 103
    return-void
.end method

.method private static a(II)I
    .locals 3

    .prologue
    .line 457
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 458
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 459
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 461
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(FI)Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 300
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 301
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p0, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 303
    return-object v0
.end method

.method private static a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 6
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v3, 0x3d4ccccd    # 0.05f

    .line 328
    new-instance v1, Landroid/graphics/RectF;

    mul-float v0, v3, p1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v2, p2

    mul-float/2addr v3, p1

    sub-float v3, p1, v3

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, p2

    sub-float v4, p2, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 334
    const/high16 v2, -0x3d770000    # -68.5f

    const v0, 0x439e8000    # 317.0f

    mul-float v3, v0, p4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 336
    return-void
.end method

.method private static b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 6
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 352
    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p1

    .line 353
    const v1, 0x3f451eb8    # 0.77f

    mul-float v3, v1, p1

    .line 354
    sub-float v0, v3, v0

    .line 355
    mul-float/2addr v0, p4

    sub-float v1, v3, v0

    .line 357
    const v0, 0x3f333333    # 0.7f

    mul-float v2, v0, p2

    move-object v0, p0

    move v4, v2

    move-object v5, p3

    .line 359
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method private static c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 7
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 377
    mul-float v1, v3, p1

    .line 378
    const v0, 0x3e051eb8    # 0.13f

    add-float/2addr v0, p4

    mul-float v2, v0, p2

    .line 380
    mul-float/2addr v3, p1

    .line 381
    const v0, 0x3f147ae1    # 0.58f

    add-float/2addr v0, p4

    mul-float v6, v0, p2

    .line 383
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v4, v6, v0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    const v0, 0x3e8f5c29    # 0.28f

    mul-float/2addr v0, p2

    .line 388
    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v1, p4

    mul-float/2addr v1, p2

    .line 390
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, p2

    .line 391
    const v4, 0x3ec7ae14    # 0.39f

    add-float/2addr v4, p4

    mul-float/2addr v4, p2

    .line 393
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 395
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 396
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    invoke-virtual {p0, v5, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    return-void
.end method


# virtual methods
.method public getAnimationState()Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v2, 0x44bb8000    # 1500.0f

    const v12, 0x3f19999a    # 0.6f

    const/high16 v7, 0x43e10000    # 450.0f

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 176
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$1;->a:[I

    iget-object v3, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal animation state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d9eb852    # 0.0775f

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-static {v3, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-static {v3, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {p1, v0, v2, v3, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    iget v5, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    int-to-float v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    invoke-static {p1, v0, v2, v4, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    invoke-static {p1, v0, v2, v3, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    invoke-static {p1, v0, v2, v3, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 187
    :goto_0
    :pswitch_1
    return-void

    .line 186
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    sub-long/2addr v8, v10

    long-to-float v0, v8

    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    move v0, v2

    :goto_1
    cmpg-float v5, v0, v7

    if-gtz v5, :cond_2

    div-float/2addr v0, v7

    move v2, v0

    move v5, v1

    move v0, v1

    :goto_2
    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    sub-float v0, v6, v0

    mul-float v7, v0, v0

    mul-float/2addr v0, v7

    sub-float v7, v6, v0

    mul-float v0, v2, v12

    sub-float v2, v6, v7

    mul-float/2addr v2, v12

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    rsub-int v5, v5, 0xff

    const v8, 0x3d9eb852    # 0.0775f

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-static {v9, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(II)I

    move-result v9

    iget v10, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-static {v10, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(II)I

    move-result v5

    invoke-static {v8, v9}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v9

    invoke-static {v8, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {p1, v3, v4, v8, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    const v0, 0x3e8a3d71    # 0.27f

    mul-float/2addr v0, v3

    const v5, 0x3ed70a3d    # 0.42f

    add-float/2addr v5, v2

    mul-float/2addr v5, v4

    const v10, 0x3ee147ae    # 0.44f

    mul-float/2addr v10, v3

    add-float v11, v12, v2

    mul-float/2addr v11, v4

    const v12, 0x3f3f5c29    # 0.7475f

    mul-float/2addr v12, v3

    const v13, 0x3e75c28f    # 0.24f

    add-float/2addr v2, v13

    mul-float/2addr v2, v4

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v13, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v13, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v13, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v13, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v0, 0x3f333333    # 0.7f

    mul-float v2, v0, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    cmpg-float v0, v7, v6

    if-gez v0, :cond_0

    invoke-static {p1, v3, v4, v8, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    :cond_0
    invoke-static {p1, v3, v4, v9, v7}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    invoke-static {p1, v3, v4, v9, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    goto/16 :goto_1

    :cond_2
    const/high16 v5, 0x44610000    # 900.0f

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_3

    sub-float/2addr v0, v7

    div-float/2addr v0, v7

    move v2, v6

    move v5, v1

    goto/16 :goto_2

    :cond_3
    sub-float v0, v2, v0

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v0, v2

    sub-float v0, v6, v0

    move v2, v6

    move v5, v0

    move v0, v6

    goto/16 :goto_2

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "animationState is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    if-ne v0, p1, :cond_1

    .line 144
    :goto_0
    return-void

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 120
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    if-eq p1, v0, :cond_2

    .line 121
    iput v2, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    .line 124
    :cond_2
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal animation state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    const v0, 0x7f02022c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundResource(I)V

    .line 143
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundColor(I)V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundColor(I)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaveProgress(I)V
    .locals 3

    .prologue
    .line 151
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save progress out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    if-eq v0, p1, :cond_2

    .line 156
    iput p1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    .line 160
    :cond_2
    return-void
.end method

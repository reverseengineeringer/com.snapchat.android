.class public Lin/srain/cube/views/ptr/header/StoreHouseHeader;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lbvt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbvy;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/animation/Transformation;

.field private s:Z

.field private t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 21
    invoke-static {v2}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 23
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 24
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 25
    sget v0, Lbvz;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 29
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 33
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 34
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 35
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 37
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 38
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 39
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 41
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 42
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 43
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 21
    invoke-static {v2}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 23
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 24
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 25
    sget v0, Lbvz;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 29
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 33
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 34
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 35
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 37
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 38
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 39
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 41
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 42
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 43
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 21
    invoke-static {v2}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 23
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lbvz;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 24
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 25
    sget v0, Lbvz;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 29
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 33
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 34
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 35
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 37
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 38
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 39
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 41
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 42
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 43
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 58
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 184
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    .line 185
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    return v0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    return v0
.end method

.method static synthetic d(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    return v0
.end method

.method static synthetic e(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    return v0
.end method

.method private getBottomOffset()I
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingBottom()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lbvz;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTopOffset()I
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lbvz;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setProgress(F)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvy;

    iget v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v0, v2}, Lbvy;->a(I)V

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 1

    .prologue
    .line 270
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 271
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->setProgress(F)V

    .line 272
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 273
    return-void
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 261
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    .line 266
    return-void
.end method

.method public getLoadingAniDuration()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 189
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    iget v8, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 192
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 194
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_5

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvy;

    .line 198
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    int-to-float v1, v1

    iget-object v2, v0, Lbvy;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    .line 199
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    int-to-float v1, v1

    iget-object v3, v0, Lbvy;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    .line 201
    iget-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getDrawingTime()J

    move-result-wide v4

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v4, v5, v1}, Lbvy;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 203
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    :goto_1
    iget-object v1, v0, Lbvy;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lbvy;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lbvy;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lbvy;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lbvy;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 206
    :cond_0
    cmpl-float v1, v8, v6

    if-nez v1, :cond_1

    .line 207
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v0, v1}, Lbvy;->a(I)V

    goto :goto_2

    .line 211
    :cond_1
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    sub-float v1, v11, v1

    int-to-float v4, v7

    mul-float/2addr v1, v4

    int-to-float v4, v10

    div-float/2addr v1, v4

    .line 212
    iget v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    sub-float v4, v11, v4

    sub-float/2addr v4, v1

    .line 215
    cmpl-float v5, v8, v11

    if-eqz v5, :cond_2

    sub-float v4, v11, v4

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_3

    .line 216
    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    invoke-virtual {v0, v1}, Lbvy;->a(F)V

    goto :goto_1

    .line 220
    :cond_3
    cmpg-float v4, v8, v1

    if-gtz v4, :cond_4

    move v1, v6

    .line 225
    :goto_3
    iget v4, v0, Lbvy;->b:F

    sub-float v5, v11, v1

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 226
    iget v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    neg-int v4, v4

    int-to-float v4, v4

    sub-float v5, v11, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 227
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 228
    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 229
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 230
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    iget v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lbvy;->a(F)V

    .line 232
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 223
    :cond_4
    sub-float v1, v8, v1

    iget v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    div-float/2addr v1, v4

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_3

    .line 238
    :cond_5
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v0, :cond_6

    .line 239
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 241
    :cond_6
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 242
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getBottomOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 102
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 104
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 105
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 106
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 107
    return-void
.end method

.method public setLoadingAniDuration(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 74
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 75
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 146
    return-void
.end method

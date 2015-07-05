.class public final Lbuw;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbuw$b;,
        Lbuw$d;,
        Lbuw$a;,
        Lbuw$c;
    }
.end annotation


# static fields
.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;

.field private static final e:Landroid/view/animation/Interpolator;

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Lbuw$c;

.field public b:I

.field private final g:[I

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/drawable/Drawable$Callback;

.field private j:F

.field private k:Landroid/content/res/Resources;

.field private l:Landroid/view/View;

.field private m:Landroid/view/animation/Animation;

.field private n:F

.field private o:D

.field private p:D

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lbuw;->c:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lbuw$a;

    invoke-direct {v0, v1}, Lbuw$a;-><init>(B)V

    sput-object v0, Lbuw;->d:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lbuw$d;

    invoke-direct {v0, v1}, Lbuw$d;-><init>(B)V

    sput-object v0, Lbuw;->e:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lbuw;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lbuw;->g:[I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbuw;->h:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lbuw$1;

    invoke-direct {v0, p0}, Lbuw$1;-><init>(Lbuw;)V

    iput-object v0, p0, Lbuw;->i:Landroid/graphics/drawable/Drawable$Callback;

    .line 130
    iput-object p2, p0, Lbuw;->l:Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lbuw;->k:Landroid/content/res/Resources;

    .line 132
    new-instance v0, Lbuw$c;

    iget-object v1, p0, Lbuw;->i:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lbuw$c;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lbuw;->a:Lbuw$c;

    .line 133
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iget-object v1, p0, Lbuw;->g:[I

    invoke-virtual {v0, v1}, Lbuw$c;->a([I)V

    .line 134
    iget-object v1, p0, Lbuw;->a:Lbuw$c;

    iget-object v0, p0, Lbuw;->k:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lbuw;->o:D

    float-to-double v2, v0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lbuw;->p:D

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v0

    iput v2, v1, Lbuw$c;->h:F

    iget-object v3, v1, Lbuw$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Lbuw$c;->d()V

    const-wide v2, 0x4021800000000000L    # 8.75

    float-to-double v4, v0

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lbuw$c;->r:D

    const/4 v2, 0x0

    iput v2, v1, Lbuw$c;->k:I

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    float-to-int v2, v2

    iput v2, v1, Lbuw$c;->s:I

    float-to-int v0, v0

    iput v0, v1, Lbuw$c;->t:I

    iget-wide v2, p0, Lbuw;->o:D

    double-to-int v0, v2

    iget-wide v2, p0, Lbuw;->p:D

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v2, v1, Lbuw$c;->r:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    cmpg-float v2, v0, v6

    if-gez v2, :cond_2

    :cond_0
    iget v0, v1, Lbuw$c;->h:F

    div-float/2addr v0, v7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_0
    iput v0, v1, Lbuw$c;->i:F

    iget-wide v0, p0, Lbuw;->o:D

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-static {v2}, Lbuy;->a(F)I

    move-result v2

    invoke-static {v6}, Lbuy;->a(F)I

    move-result v3

    const/high16 v4, 0x40600000    # 3.5f

    invoke-static {v4}, Lbuy;->a(F)I

    move-result v4

    new-instance v5, Lbuw$b;

    double-to-int v0, v0

    invoke-direct {v5, p0, v4, v0}, Lbuw$b;-><init>(Lbuw;II)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbuw;->l:Landroid/view/View;

    iget-object v1, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    int-to-float v1, v4

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x1e000000

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 135
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    new-instance v1, Lbuw$2;

    invoke-direct {v1, p0, v0}, Lbuw$2;-><init>(Lbuw;Lbuw$c;)V

    sget-object v2, Lbuw;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x29a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lbuw$3;

    invoke-direct {v2, p0, v0}, Lbuw$3;-><init>(Lbuw;Lbuw$c;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lbuw$4;

    invoke-direct {v2, p0, v0}, Lbuw$4;-><init>(Lbuw;Lbuw$c;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v3, Lbuw;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x535

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lbuw$5;

    invoke-direct {v3, p0, v0}, Lbuw$5;-><init>(Lbuw;Lbuw$c;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Lbuw;->q:Landroid/view/animation/Animation;

    iput-object v2, p0, Lbuw;->m:Landroid/view/animation/Animation;

    .line 136
    return-void

    .line 134
    :cond_2
    div-float/2addr v0, v7

    float-to-double v2, v0

    iget-wide v4, v1, Lbuw$c;->r:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    goto/16 :goto_0

    .line 85
    :array_0
    .array-data 4
        -0x36cbc9
        -0xc8a40f
        -0x82dc2
        -0xcb5cb0
    .end array-data
.end method

.method static synthetic a(Lbuw;F)F
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lbuw;->n:F

    return p1
.end method

.method static synthetic a(Lbuw;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbuw;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lbuw;->e:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic b(Lbuw;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbuw;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lbuw;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lbuw;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lbuw;->n:F

    return v0
.end method


# virtual methods
.method final a(F)V
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lbuw;->j:F

    .line 282
    invoke-virtual {p0}, Lbuw;->invalidateSelf()V

    .line 283
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 248
    iget-object v0, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lbuw;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lbuw;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lbuw;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 255
    iget v0, p0, Lbuw;->j:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 256
    iget-object v8, p0, Lbuw;->a:Lbuw$c;

    iget-object v0, v8, Lbuw$c;->d:Landroid/graphics/Paint;

    iget v1, v8, Lbuw$c;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lbuw$c;->d:Landroid/graphics/Paint;

    iget v1, v8, Lbuw$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, v8, Lbuw$c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v8, Lbuw$c;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, v8, Lbuw$c;->i:F

    iget v2, v8, Lbuw$c;->i:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, v8, Lbuw$c;->e:F

    iget v2, v8, Lbuw$c;->g:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    iget v0, v8, Lbuw$c;->f:F

    iget v3, v8, Lbuw$c;->g:F

    add-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    sub-float v3, v0, v2

    iget-object v0, v8, Lbuw$c;->b:Landroid/graphics/Paint;

    iget-object v4, v8, Lbuw$c;->j:[I

    iget v5, v8, Lbuw$c;->k:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lbuw$c;->b:Landroid/graphics/Paint;

    iget v4, v8, Lbuw$c;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    iget-object v5, v8, Lbuw$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, v8, Lbuw$c;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    iget-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, v8, Lbuw$c;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v8, Lbuw$c;->q:F

    mul-float/2addr v0, v1

    iget-wide v4, v8, Lbuw$c;->r:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v10, v1

    add-double/2addr v4, v10

    double-to-float v1, v4

    iget-wide v4, v8, Lbuw$c;->r:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-double v10, v9

    add-double/2addr v4, v10

    double-to-float v4, v4

    iget-object v5, v8, Lbuw$c;->p:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v8, Lbuw$c;->p:Landroid/graphics/Path;

    iget v9, v8, Lbuw$c;->s:I

    int-to-float v9, v9

    iget v10, v8, Lbuw$c;->q:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v8, Lbuw$c;->p:Landroid/graphics/Path;

    iget v9, v8, Lbuw$c;->s:I

    int-to-float v9, v9

    iget v10, v8, Lbuw$c;->q:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v8, Lbuw$c;->t:I

    int-to-float v10, v10

    iget v11, v8, Lbuw$c;->q:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v8, Lbuw$c;->p:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v8, Lbuw$c;->c:Landroid/graphics/Paint;

    iget-object v1, v8, Lbuw$c;->j:[I

    iget v4, v8, Lbuw$c;->k:I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v8, Lbuw$c;->c:Landroid/graphics/Paint;

    iget v1, v8, Lbuw$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v0, v2, v3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    iget-object v1, v8, Lbuw$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 258
    return-void

    .line 256
    :cond_2
    iget-object v0, v8, Lbuw$c;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iget v0, v0, Lbuw$c;->u:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lbuw;->p:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lbuw;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v3, p0, Lbuw;->h:Ljava/util/ArrayList;

    .line 293
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 294
    :goto_0
    if-ge v2, v4, :cond_1

    .line 295
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 296
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_1
    return v0

    .line 294
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iput p1, v0, Lbuw$c;->u:I

    .line 267
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iget-object v1, v0, Lbuw$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Lbuw$c;->d()V

    .line 272
    return-void
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lbuw;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 306
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->b()V

    .line 308
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iget v0, v0, Lbuw$c;->f:F

    iget-object v1, p0, Lbuw;->a:Lbuw$c;

    iget v1, v1, Lbuw$c;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lbuw;->l:Landroid/view/View;

    iget-object v1, p0, Lbuw;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    const/4 v1, 0x0

    iput v1, v0, Lbuw$c;->k:I

    .line 312
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->c()V

    .line 313
    iget-object v0, p0, Lbuw;->l:Landroid/view/View;

    iget-object v1, p0, Lbuw;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lbuw;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbuw;->a(F)V

    .line 321
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    invoke-virtual {v0, v1}, Lbuw$c;->a(Z)V

    .line 322
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    iput v1, v0, Lbuw$c;->k:I

    .line 323
    iget-object v0, p0, Lbuw;->a:Lbuw$c;

    invoke-virtual {v0}, Lbuw$c;->c()V

    .line 324
    return-void
.end method

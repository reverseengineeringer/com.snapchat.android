.class public Lcom/snapchat/android/ui/LegacyCanvasView;
.super Lcom/snapchat/android/ui/CanvasViewBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/LegacyCanvasView$b;,
        Lcom/snapchat/android/ui/LegacyCanvasView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Point;

.field private h:Landroid/graphics/Paint;

.field private i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

.field private j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    .line 41
    iput-boolean v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    .line 42
    iput-boolean v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lavh;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 56
    invoke-static {p1}, Lavh;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    invoke-virtual {p0, p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    new-instance v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/LegacyCanvasView$b;-><init>(Lcom/snapchat/android/ui/LegacyCanvasView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    .line 65
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    .line 69
    const-string v0, "LegacyCanvasView"

    const-string v1, "Canvas view instantiated"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void

    .line 58
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 59
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/LegacyCanvasView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    return v0
.end method

.method private static a(FFF)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 178
    div-float v0, p2, v1

    .line 179
    div-float v1, p1, v1

    .line 180
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    sub-float v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 183
    neg-float v4, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 185
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 186
    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 187
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    return-object v2
.end method

.method private a(FF)V
    .locals 6

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 312
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 313
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 314
    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    iget v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 316
    iput p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    .line 317
    iput p2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    .line 319
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/LegacyCanvasView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    return v0
.end method

.method private static b(FFF)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 200
    div-float v0, p2, v1

    .line 201
    div-float v1, p1, v1

    .line 203
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    invoke-virtual {v2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 206
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 209
    neg-float v1, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    .line 345
    return-void
.end method

.method public final a(I)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    iget v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 117
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 118
    if-ne p1, v6, :cond_0

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eq v6, v5, :cond_1

    if-ne v6, v11, :cond_4

    :cond_1
    move v3, v5

    .line 122
    :goto_1
    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 123
    if-eqz v3, :cond_6

    move v0, v2

    :goto_3
    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a()V

    .line 126
    int-to-float v0, v1

    int-to-float v1, v2

    if-eq v6, p1, :cond_3

    const-string v2, "LegacyCanvasView"

    const-string v3, "Rotate drawing from %d to %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v2, v3, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v6, v5, :cond_7

    invoke-static {v10, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    const-string v1, "LegacyCanvasView"

    const-string v2, "went to rotation 90"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    :cond_2
    const-string v0, "LegacyCanvasView"

    const-string v1, "Drawing is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;

    .line 129
    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v2, v2, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_4
    move v3, v4

    .line 121
    goto :goto_1

    :cond_5
    move v0, v2

    .line 122
    goto :goto_2

    :cond_6
    move v0, v1

    .line 123
    goto :goto_3

    .line 126
    :cond_7
    if-ne v6, v11, :cond_8

    invoke-static {v9, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    const-string v1, "LegacyCanvasView"

    const-string v2, "went to rotation 270"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_4

    :cond_8
    if-ne p1, v5, :cond_9

    invoke-static {v9, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    const-string v1, "LegacyCanvasView"

    const-string v2, "went from rotation 90 (probz back to portrait)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_4

    :cond_9
    invoke-static {v10, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    const-string v1, "LegacyCanvasView"

    const-string v2, "else... back to portrait from 270?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->postInvalidate()V

    goto :goto_5

    .line 132
    :cond_c
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v6, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    iget v2, v2, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    int-to-float v3, v2

    iget-object v2, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    iget v2, v2, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->f:Z

    iget-object v0, v6, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    .line 157
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    return v0
.end method

.method public getDrawingEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    return v0
.end method

.method public getLastColor()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v1, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v2, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 267
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v0

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    goto :goto_1
.end method

.method public getNumberOfStrokes()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSavedDrawing()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/LegacyCanvasView$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    if-eqz v0, :cond_3

    .line 326
    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-boolean v0, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-boolean v3, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->f:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->f:Z

    :cond_2
    iget-object v0, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->c:Landroid/graphics/Matrix;

    iget-object v1, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(Landroid/graphics/Canvas;)V

    .line 333
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    iget-boolean v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    if-eqz v2, :cond_6

    .line 148
    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    new-instance v1, Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    iget v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    invoke-direct {v1, p0, v2, v3}, Lcom/snapchat/android/ui/LegacyCanvasView$a;-><init>(Lcom/snapchat/android/ui/LegacyCanvasView;IF)V

    iput-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v1, v1, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(FF)V

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/DrawingEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/DrawingEvent;-><init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    .line 151
    :cond_1
    :goto_1
    return v0

    .line 148
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(FF)V

    :cond_5
    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$b;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iget-object v3, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a(Landroid/graphics/Canvas;)V

    iget-object v1, v1, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v5, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$a;

    iput-object v5, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/DrawingEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/DrawingEvent;-><init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 151
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 253
    iput p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    .line 138
    return-void
.end method

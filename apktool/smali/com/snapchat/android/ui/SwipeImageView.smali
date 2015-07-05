.class public Lcom/snapchat/android/ui/SwipeImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SwipeImageView$a;
    }
.end annotation


# instance fields
.field public a:Larv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Larv",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/snapchat/android/ui/SwipeViewState;

.field c:Landroid/graphics/Bitmap;

.field d:Z

.field public e:Landroid/widget/FrameLayout;

.field public f:Z

.field private final g:Larq;

.field private final h:Larr;

.field private final i:Latk;

.field private j:I

.field private k:I

.field private l:Lcom/snapchat/android/ui/SwipeImageView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 75
    invoke-static {}, Lasu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/snapchat/android/ui/layertype/LayerType;->SOFTWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    :goto_0
    new-instance v4, Larq;

    invoke-direct {v4}, Larq;-><init>()V

    new-instance v5, Larr;

    invoke-direct {v5}, Larr;-><init>()V

    new-instance v6, Lbey;

    invoke-direct {v6}, Lbey;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/SwipeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/ui/layertype/LayerType;Larq;Larr;Latk;)V

    .line 77
    return-void

    .line 75
    :cond_0
    sget-object v3, Lcom/snapchat/android/ui/layertype/LayerType;->HARDWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/ui/layertype/LayerType;Larq;Larr;Latk;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    .line 63
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Z

    .line 65
    iput v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->j:I

    .line 66
    iput v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->k:I

    .line 83
    iput-object p4, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Larq;

    .line 84
    iput-object p5, p0, Lcom/snapchat/android/ui/SwipeImageView;->h:Larr;

    .line 85
    iput-object p6, p0, Lcom/snapchat/android/ui/SwipeImageView;->i:Latk;

    .line 88
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SwipeImageView;->setWillNotDraw(Z)V

    .line 89
    invoke-virtual {p3}, Lcom/snapchat/android/ui/layertype/LayerType;->getFrameworkLayerValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SwipeImageView;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SwipeImageView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 206
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 207
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Laur;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 209
    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lbgp;->a()V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v0}, Larv;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v0, p1}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lbgp;->a()V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "SwipeImageView"

    const-string v2, "setBaseImage() has not been called; aborting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/SwipeImageView;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object v2

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v0}, Larv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    .line 173
    invoke-virtual {v0, v2}, Larn;->a(Landroid/graphics/Paint;)V

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Larn;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v3}, Larn;->a(ZLandroid/graphics/Bitmap;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v2}, Larv;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    new-instance v2, Lcom/snapchat/android/ui/SwipeImageView$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/SwipeImageView$1;-><init>(Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V

    sget-object v0, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SwipeImageView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 179
    goto :goto_2
.end method

.method public final a(Larn;)V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p1}, Larn;->d()Landroid/view/View;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 371
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    .line 149
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Larq;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/snapchat/android/ui/SwipeImageView;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, v1, Larq;->a:Landroid/graphics/Paint;

    .line 150
    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 364
    return-void
.end method

.method public getCurrentPage()Larn;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v0}, Larv;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-interface {v0, v1}, Larv;->a(I)Larn;

    move-result-object v0

    goto :goto_0
.end method

.method public getLeftSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v1

    invoke-interface {v0, v1}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    return v0
.end method

.method public getRightSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v1

    invoke-interface {v0, v1}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public getScrollOffset()F
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 131
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/16 v13, 0xff

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 301
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Larq;

    iget-object v10, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getLayerType()I

    move-result v3

    invoke-static {v3}, Laqh;->a(I)Lcom/snapchat/android/ui/layertype/LayerType;

    move-result-object v11

    invoke-interface {v2}, Larv;->b()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, v0, Larq;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 306
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-interface {v0}, Larv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larn;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-interface {v2, v3}, Larv;->a(I)Larn;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    invoke-interface {v2, v3}, Larv;->a(I)Larn;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    invoke-interface {v2, v3}, Larv;->a(I)Larn;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    invoke-interface {v2, v3}, Larv;->a(I)Larn;

    move-result-object v2

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Larn;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v10, v8}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v3

    invoke-virtual {v10, v9}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v4

    invoke-static {v2, v3, v4}, Larq;->a(Larv;II)I

    move-result v3

    invoke-virtual {v10, v8}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v4

    invoke-virtual {v10, v9}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v5

    invoke-static {v2, v4, v5}, Larq;->a(Larv;II)I

    move-result v4

    invoke-interface {v2, v3}, Larv;->a(I)Larn;

    move-result-object v3

    invoke-virtual {v0, v3}, Larq;->a(Larn;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-interface {v2, v4}, Larv;->a(I)Larn;

    move-result-object v2

    invoke-virtual {v0, v2}, Larq;->a(Larn;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v10}, Lcom/snapchat/android/ui/SwipeViewState;->f()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Larq;->a:Landroid/graphics/Paint;

    if-ne v12, v3, :cond_3

    iget-object v3, v0, Larq;->a:Landroid/graphics/Paint;

    if-ne v7, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, v0, Larq;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {v10}, Lcom/snapchat/android/ui/SwipeViewState;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->HARDWARE:Lcom/snapchat/android/ui/layertype/LayerType;

    if-ne v11, v0, :cond_0

    invoke-virtual {v10}, Lcom/snapchat/android/ui/SwipeViewState;->f()I

    move-result v0

    int-to-float v11, v0

    iget v0, v10, Lcom/snapchat/android/ui/SwipeViewState;->f:I

    iget v2, v10, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v10, v0

    float-to-int v0, v11

    :goto_3
    int-to-float v2, v0

    cmpg-float v2, v2, v10

    if-gez v2, :cond_4

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v0

    sub-float/2addr v4, v11

    sub-float v5, v10, v11

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, p1

    move v4, v1

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v3, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 308
    :cond_5
    iget-object v6, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Larv;->b()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v2}, Lavh;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v2}, Lavh;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v6}, Lcom/snapchat/android/ui/SwipeViewState;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    iget v4, v6, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    if-eq v3, v4, :cond_8

    move v3, v8

    :goto_4
    if-eqz v3, :cond_6

    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    int-to-float v3, v3

    invoke-virtual {v6, v8}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v4

    invoke-virtual {v6, v8}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v5

    invoke-static/range {v0 .. v5}, Larr;->a(Larv;IIFII)V

    :cond_6
    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    iget v4, v6, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    if-eq v3, v4, :cond_9

    move v3, v8

    :goto_5
    if-eqz v3, :cond_7

    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->e:I

    int-to-float v3, v3

    invoke-virtual {v6, v9}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)I

    move-result v4

    invoke-virtual {v6, v9}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)I

    move-result v5

    invoke-static/range {v0 .. v5}, Larr;->a(Larv;IIFII)V

    .line 310
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->i:Latk;

    invoke-interface {v0}, Latk;->a()V

    .line 311
    return-void

    :cond_8
    move v3, v9

    .line 308
    goto :goto_4

    :cond_9
    move v3, v9

    goto :goto_5

    :cond_a
    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-static {v0, v1, v2, v3}, Larr;->a(Larv;III)V

    iget-boolean v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    if-eqz v3, :cond_7

    iget v3, v6, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    invoke-static {v0, v1, v2, v3}, Larr;->a(Larv;III)V

    goto :goto_6
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 261
    if-le p1, p2, :cond_2

    move v0, v1

    .line 262
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 263
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    move v3, v1

    .line 267
    :goto_1
    if-eq v0, v3, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    .line 269
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->j:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->k:I

    if-eq v0, p2, :cond_5

    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->j:I

    iput p2, p0, Lcom/snapchat/android/ui/SwipeImageView;->k:I

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 270
    const-string v0, "SwipeImageView"

    const-string v3, "The orientation of the current bitmap does not match the one of the canvas. (%d, %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->l:Lcom/snapchat/android/ui/SwipeImageView$a;

    if-eqz v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->l:Lcom/snapchat/android/ui/SwipeImageView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/SwipeImageView$a;->i()V

    .line 282
    :cond_1
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/SwipeImageView;->setMeasuredDimension(II)V

    .line 283
    return-void

    :cond_2
    move v0, v2

    .line 261
    goto :goto_0

    :cond_3
    move v3, v2

    .line 263
    goto :goto_1

    :cond_4
    move v0, v2

    .line 267
    goto :goto_2

    :cond_5
    move v0, v2

    .line 269
    goto :goto_3

    .line 276
    :cond_6
    const-string v0, "SwipeImageView"

    const-string v1, "Cannot handle the orientation change because mSnapPreviewRotationListener is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 280
    :cond_7
    iput-boolean v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Z

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Larn;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    .line 355
    :cond_0
    invoke-virtual {v0}, Larn;->d()Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFilterPageProvider(Larv;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Larv;

    .line 120
    return-void
.end method

.method public setSnapPreviewRotationListener(Lcom/snapchat/android/ui/SwipeImageView$a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->l:Lcom/snapchat/android/ui/SwipeImageView$a;

    .line 112
    return-void
.end method

.method public setSwipeState(Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/SwipeViewState;

    .line 116
    return-void
.end method

.method public setVisibilityOfPreviewOnlyContent(I)V
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Larn;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Larn;->a(I)V

    .line 390
    :cond_0
    return-void
.end method

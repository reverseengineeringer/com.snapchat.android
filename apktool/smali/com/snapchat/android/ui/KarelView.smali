.class public Lcom/snapchat/android/ui/KarelView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Random;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->b:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->c:Ljava/util/Random;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/snapchat/android/ui/KarelView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/KarelView$1;-><init>(Lcom/snapchat/android/ui/KarelView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->k:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->b:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->c:Ljava/util/Random;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/snapchat/android/ui/KarelView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/KarelView$1;-><init>(Lcom/snapchat/android/ui/KarelView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->k:Ljava/lang/Runnable;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->b:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->c:Ljava/util/Random;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/snapchat/android/ui/KarelView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/KarelView$1;-><init>(Lcom/snapchat/android/ui/KarelView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->k:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/snapchat/android/ui/KarelView;->b(II)I

    move-result v0

    return v0
.end method

.method private static a(IIIII)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 176
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 177
    int-to-float v2, p3

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 180
    const/4 v1, 0x4

    invoke-static {p4, v1}, Lcom/snapchat/android/ui/KarelView;->b(II)I

    move-result v1

    .line 181
    packed-switch v1, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Something is rotten in the state of Denmark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    const/high16 v1, 0x42b40000    # 90.0f

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 197
    :goto_0
    :pswitch_1
    return-object v0

    .line 188
    :pswitch_2
    const/high16 v1, 0x43340000    # 180.0f

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 191
    :pswitch_3
    const/high16 v1, 0x43870000    # 270.0f

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/ui/KarelView;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->c:Ljava/util/Random;

    return-object v0
.end method

.method private static b(II)I
    .locals 1

    .prologue
    .line 95
    rem-int v0, p0, p1

    .line 96
    if-gez v0, :cond_0

    add-int/2addr v0, p1

    .line 97
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/KarelView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/KarelView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/KarelView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/KarelView;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/KarelView;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/ui/KarelView;->h:I

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/KarelView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->h:I

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/KarelView;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/KarelView;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/ui/KarelView;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/ui/KarelView;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    return v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ui/KarelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020161

    invoke-static {v0, v1, v2}, Laur;->a(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/ui/KarelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020086

    invoke-static {v0, v1, v2}, Laur;->a(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 76
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    iput-object v1, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    .line 86
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 104
    div-int/lit8 v0, v2, 0x8

    div-int v0, v1, v0

    iput v0, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 109
    iget-object v4, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    div-int v6, v1, v6

    div-int/lit8 v7, v2, 0x8

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/snapchat/android/ui/KarelView;->a(IIIII)Landroid/graphics/Matrix;

    move-result-object v4

    .line 111
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    div-int v6, v1, v6

    mul-int/2addr v5, v6

    .line 112
    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v6, v2, 0x8

    mul-int/2addr v0, v6

    .line 113
    int-to-float v5, v5

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->i:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    div-int v4, v1, v4

    div-int/lit8 v5, v2, 0x8

    iget v6, p0, Lcom/snapchat/android/ui/KarelView;->h:I

    invoke-static {v0, v3, v4, v5, v6}, Lcom/snapchat/android/ui/KarelView;->a(IIIII)Landroid/graphics/Matrix;

    move-result-object v0

    .line 122
    iget v3, p0, Lcom/snapchat/android/ui/KarelView;->f:I

    iget v4, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    invoke-static {v3, v4}, Lcom/snapchat/android/ui/KarelView;->b(II)I

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/KarelView;->a:I

    div-int/2addr v1, v4

    mul-int/2addr v1, v3

    .line 123
    iget v3, p0, Lcom/snapchat/android/ui/KarelView;->g:I

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/snapchat/android/ui/KarelView;->b(II)I

    move-result v3

    div-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v3

    .line 124
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/snapchat/android/ui/KarelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/KarelView;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method

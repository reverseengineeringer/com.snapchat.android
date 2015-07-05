.class public Lnet/hockeyapp/android/views/PaintView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    .line 154
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 158
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 161
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 162
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    new-instance v0, Lnet/hockeyapp/android/views/PaintView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/PaintView$1;-><init>(Lnet/hockeyapp/android/views/PaintView;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    .line 193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/PaintView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 65
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 70
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 74
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 95
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 96
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 97
    const/4 v0, 0x1

    .line 99
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 101
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 102
    div-int/lit8 v2, v2, 0x2

    .line 106
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    .line 107
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 111
    :cond_1
    return v0
.end method

.method static synthetic a(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 218
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 223
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 267
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 255
    :pswitch_0
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iput v0, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    iput v1, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    .line 256
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 259
    :pswitch_1
    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v4

    if-gez v2, :cond_0

    cmpl-float v2, v3, v4

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    iget v3, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    iget v4, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    iget v5, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    add-float/2addr v5, v0

    div-float/2addr v5, v7

    iget v6, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    add-float/2addr v6, v1

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput v0, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    iput v1, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    .line 260
    :cond_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->d:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->b:Landroid/graphics/Path;

    .line 264
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

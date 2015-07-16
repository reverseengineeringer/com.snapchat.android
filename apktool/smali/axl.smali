.class public final Laxl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, p2}, Laxl;->b(Landroid/util/DisplayMetrics;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return-object v1
.end method

.method private static b(Landroid/util/DisplayMetrics;II)I
    .locals 6

    .prologue
    const/16 v2, 0xd33

    .line 81
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 82
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 83
    const/4 v0, 0x1

    .line 88
    if-le p1, v1, :cond_1

    if-le p2, v2, :cond_1

    .line 89
    div-int/lit8 v3, p2, 0x2

    .line 90
    div-int/lit8 v4, p1, 0x2

    .line 94
    :goto_0
    div-int v5, v3, v0

    if-le v5, v2, :cond_0

    div-int v5, v4, v0

    if-le v5, v1, :cond_0

    .line 96
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 100
    :cond_0
    div-int/2addr v3, v0

    if-ne v3, v2, :cond_1

    div-int v2, v4, v0

    if-ne v2, v1, :cond_1

    .line 102
    mul-int/lit8 v0, v0, 0x2

    .line 105
    :cond_1
    return v0
.end method

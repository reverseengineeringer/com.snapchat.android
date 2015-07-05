.class public final Laur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation


# static fields
.field private static final IGNORED_COMPRESSION_VALUE:I = 0x5a

.field private static final IPHONE_5S_HEIGHT:I = 0x470

.field private static final IPHONE_5S_WIDTH:I = 0x280

.field private static final RAW_THUMBNAIL_ENCODING_QUALITY:I = 0x3c

.field private static final RAW_THUMBNAIL_SIZE:I = 0x100

.field private static final STORY_THUMBNAIL_SIZE:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SnapMediaUtils"

.field private static final sMemoryAnalytics:Lnh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lnh;

    invoke-direct {v0}, Lnh;-><init>()V

    sput-object v0, Laur;->sMemoryAnalytics:Lnh;

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    const-string v2, "safeCreateBitmap(int, int, Bitmap.Config)"

    invoke-static {v2, v1}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lavl;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Laur;->a(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lavl;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    if-nez v1, :cond_2

    .line 262
    :cond_1
    :goto_0
    return-object v0

    .line 251
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 252
    iput-boolean p2, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 254
    :try_start_0
    invoke-static {v1, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string v2, "safeDecodeResource(Context, int, boolean)"

    invoke-static {v2, v1}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    :catch_1
    move-exception v1

    .line 258
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not get drawable! Bad resource perchance?"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1}, Laur;->b(Landroid/content/Context;[B)Lavo;

    move-result-object v0

    iget-object v0, v0, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 626
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 627
    invoke-static {p1}, Lavh;->a(I)I

    move-result v1

    .line 628
    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 629
    invoke-static {p0, v0}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 634
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmapToPortrait failed. degrees = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". input = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object p0, v0

    .line 640
    :cond_1
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 164
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string v2, "safeCreateBitmap(Bitmap, int, int, int, int)"

    invoke-static {v2, v1}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 459
    invoke-static {p0, p1}, Laur;->f(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 460
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 461
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 463
    invoke-static {p1}, Lavh;->h(Landroid/content/Context;)I

    move-result v1

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 465
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    if-lez v2, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 467
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v2, v6, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 472
    :cond_0
    :goto_0
    return-object p0

    .line 468
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 470
    invoke-static {p0, v6, v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 220
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 226
    :goto_0
    return-object p0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "safeTransformBitmap(Bitmap, Matrix)"

    invoke-static {v1, v0}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/net/Uri;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 649
    if-nez p0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 664
    :goto_1
    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 670
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 671
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 672
    invoke-static {v1, v0}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 673
    if-eq v0, v1, :cond_2

    .line 674
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_2
    invoke-static {v0, p1}, Laur;->e(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    const-string v2, "SnapMediaUtils"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 663
    goto :goto_1

    .line 655
    :catch_1
    move-exception v1

    .line 656
    const-string v2, "SnapMediaUtils"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 663
    goto :goto_1

    .line 657
    :catch_2
    move-exception v1

    .line 660
    const-string v2, "SnapMediaUtils"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 663
    goto :goto_1

    .line 661
    :catch_3
    move-exception v1

    .line 662
    const-string v2, "scaledPortraitBitmapFromUri(Uri, Context)"

    invoke-static {v2, v1}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

    .line 678
    :cond_3
    invoke-static {v1, p1}, Laur;->e(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Laur;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 379
    invoke-static {p0, p1, p2}, Laur;->b(Landroid/util/DisplayMetrics;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 381
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 382
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 384
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {p0}, Laur;->g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-static {p1}, Laur;->g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_0
    invoke-static {v0}, Laur;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    return-object v1
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 391
    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    :try_start_0
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    const-string v2, "SnapMediaUtils"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/util/DisplayMetrics;II)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0xd33

    .line 336
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 337
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 338
    const/4 v0, 0x1

    .line 343
    if-le p1, v1, :cond_1

    if-le p2, v2, :cond_1

    .line 344
    div-int/lit8 v3, p2, 0x2

    .line 345
    div-int/lit8 v4, p1, 0x2

    .line 349
    :goto_0
    div-int v5, v3, v0

    if-le v5, v2, :cond_0

    div-int v5, v4, v0

    if-le v5, v1, :cond_0

    .line 351
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 355
    :cond_0
    div-int/2addr v3, v0

    if-ne v3, v2, :cond_1

    div-int v2, v4, v0

    if-ne v2, v1, :cond_1

    .line 357
    mul-int/lit8 v0, v0, 0x2

    .line 360
    :cond_1
    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 535
    invoke-static {p0, p1}, Laur;->f(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 536
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v2, v0, -0x1

    .line 537
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 538
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 539
    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 540
    return-object v1
.end method

.method public static b(Landroid/content/Context;[B)Lavo;
    .locals 12
    .annotation build Lavl;
    .end annotation

    .annotation build Lcgb;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    array-length v1, p1

    invoke-static {p1, v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 290
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 291
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 292
    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    .line 293
    :cond_0
    new-instance v0, Lavo;

    invoke-direct {v0}, Lavo;-><init>()V

    .line 316
    :goto_0
    return-object v0

    .line 296
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, v4, v5}, Laur;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 299
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lavq;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 302
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 303
    new-instance v0, Lavo;

    iget-object v1, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {v0, v7, v1}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "safeDecodeByteArray(Context, byte[], Bitmap.Config)"

    invoke-static {v1, v0}, Lnh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    :cond_2
    new-instance v0, Lavo;

    invoke-direct {v0}, Lavo;-><init>()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 303
    goto :goto_1

    .line 306
    :catch_1
    move-exception v0

    iget-object v1, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const-string v7, "SnapMediaUtils"

    invoke-static {v7, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "SnapMediaUtils"

    const-string v7, "input width: %d height: %d exactDimensions: %b"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0, v7, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "SnapMediaUtils"

    const-string v8, "options width: %d height: %d config: %s"

    new-array v9, v11, [Ljava/lang/Object;

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v3

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    iget-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_2
    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    const-string v6, "SnapMediaUtils"

    const-string v7, "reused bitmap width: %d height: %d mutable: %b, recycled: %b config: %s"

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v11

    const/4 v2, 0x4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "null"

    :goto_3
    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, v4, v5}, Laur;->a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 310
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 311
    array-length v1, p1

    invoke-static {p1, v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_2

    .line 313
    new-instance v0, Lavo;

    invoke-direct {v0, v1, v3}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 306
    :cond_5
    iget-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x3c

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 569
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_CAPTURE_ROTATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 571
    invoke-static {v0}, Lavh;->a(I)I

    move-result v0

    .line 572
    invoke-static {p1}, Lavh;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lavh;->a(I)I

    move-result v1

    .line 573
    sub-int v1, v0, v1

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 577
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 579
    invoke-static {p1}, Lavh;->h(Landroid/content/Context;)I

    move-result v4

    .line 580
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 581
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 583
    div-float v4, v3, v2

    div-float v6, v0, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 584
    div-float v0, v5, v2

    .line 589
    :goto_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 590
    if-eqz v1, :cond_0

    .line 591
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 593
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 594
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 596
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    :goto_1
    return-object p0

    .line 586
    :cond_2
    div-float/2addr v0, v3

    goto :goto_0

    .line 599
    :cond_3
    invoke-static {p0, v2}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static c(Landroid/graphics/Bitmap;)[B
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 606
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 607
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_CAPTURE_ROTATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 608
    invoke-static {v0}, Lavh;->a(I)I

    move-result v0

    .line 609
    invoke-static {p1}, Lavh;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lavh;->a(I)I

    move-result v1

    .line 610
    if-ne v0, v1, :cond_0

    .line 616
    :goto_0
    return-object p0

    .line 614
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 615
    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 616
    invoke-static {p0, v2}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit16 v2, v1, 0x100

    div-int/lit16 v3, v0, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    int-to-double v4, v1

    div-double v2, v4, v2

    double-to-int v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f1039b1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 428
    const/high16 v0, 0x448e0000    # 1136.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 433
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 437
    :goto_1
    return-object p0

    .line 430
    :cond_0
    const/high16 v0, 0x44200000    # 640.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 435
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 436
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 437
    invoke-static {p0, v1}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method private static e(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v3, v2

    div-float v5, v0, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    div-float v0, v1, v2

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 455
    :goto_1
    invoke-static {p0, p1}, Laur;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    div-float/2addr v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {p0, v1}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_2

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v1

    invoke-virtual {v1, p0}, Lavq;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    move-object p0, v0

    goto :goto_1
.end method

.method public static f(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 686
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 692
    :goto_0
    return v0

    .line 688
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 689
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private static f(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v3

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Lavh;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v3, :cond_0

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Lavh;->h(Landroid/content/Context;)I

    move-result v1

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    const/high16 v1, 0x42cc0000    # 102.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 114
    const/16 v1, 0x66

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 118
    if-ltz v0, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    return-object v0

    .line 124
    :cond_0
    neg-int v0, v0

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

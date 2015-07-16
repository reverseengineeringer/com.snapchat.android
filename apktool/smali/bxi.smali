.class public final Lbxi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lbxi;->a(Ljava/io/InputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return v0

    .line 86
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 186
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 187
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 188
    const/4 v0, 0x1

    .line 190
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 191
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 192
    div-int/lit8 v2, v2, 0x2

    .line 196
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    .line 197
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 201
    :cond_1
    return v0
.end method

.method public static a(Ljava/io/File;)I
    .locals 3

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-static {v1}, Lbxi;->a(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 65
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 65
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 99
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v1

    .line 109
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 109
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.class Lcom/snapchat/videotranscoder/cts/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final FLOAT_SIZE_BYTES:I = 0x4

.field protected static final QUAD_VERTICES_DATA:[F

.field protected static final QUAD_VERTICES_DATA_POS_OFFSET:I = 0x0

.field protected static final QUAD_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field protected static final QUAD_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextureRenderer"


# instance fields
.field protected mCurrentShader:I

.field protected mExternalTextureID:I

.field protected mIsInitialized:Z

.field protected mMVPMatrix:[F

.field protected mMissEtikateLookupTextureID:I

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field protected mOverlayTextureID:I

.field protected mProgram:I

.field protected mQuadVertices:Ljava/nio/FloatBuffer;

.field protected final mSTMatrix:[F

.field protected final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

.field protected maPositionHandle:I

.field protected maTextureHandle:I

.field protected muMVPMatrixHandle:I

.field protected muSTMatrixHandle:I

.field protected shaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->QUAD_VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V
    .locals 4
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/16 v1, -0x3039

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMVPMatrix:[F

    .line 54
    iput v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    .line 55
    iput v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayTextureID:I

    .line 56
    iput v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMissEtikateLookupTextureID:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 62
    iput-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->shaderMap:Ljava/util/Map;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    .line 68
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    array-length v0, p2

    if-eq v0, v3, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transformationMatrix must be a a 4x4 matrix of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 75
    iput-object p2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mSTMatrix:[F

    .line 77
    sget-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->QUAD_VERTICES_DATA:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    .line 79
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->QUAD_VERTICES_DATA:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    return-void
.end method

.method private loadFragmentShaders()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    const v11, 0x8b30

    .line 300
    invoke-static {}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->values()[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 301
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v6}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    invoke-virtual {v0, v5}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 305
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v6}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    invoke-virtual {v0, v12}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableOverlay(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->values()[Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 312
    new-instance v9, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v10, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v9, v10}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    invoke-virtual {v9, v12}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableSplit(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setLeftFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setRightFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v8

    .line 317
    invoke-virtual {v8}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v11, v8}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCreateShader type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 283
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 284
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 285
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 286
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 287
    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not compile shader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/utils/Utils;->printShaderSource(I)V

    .line 291
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->shaderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return v0
.end method

.method public static saveFrame(Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 382
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 383
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 384
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 385
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 386
    mul-int v1, p1, p2

    .line 387
    new-array v3, v1, [I

    .line 388
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 389
    :goto_0
    if-ge v0, v1, :cond_0

    .line 390
    aget v2, v3, v0

    .line 391
    const v4, -0xff0100

    and-int/2addr v4, v2

    const/high16 v5, 0xff0000

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aput v2, v3, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    const/4 v2, 0x0

    .line 395
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saved "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to close file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 400
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to write file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    :catchall_0
    move-exception v0

    .line 403
    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 405
    :cond_1
    throw v0

    .line 404
    :catch_2
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to close file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 402
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 399
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected attachExtraUniforms()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v1, "sOverlayTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 153
    const-string v1, "glGetUniformLocation"

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 154
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 155
    const/16 v1, 0xde1

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayTextureID:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 156
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 158
    :cond_0
    return-void
.end method

.method public changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V
    .locals 3
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    if-nez v1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Program doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->shaderMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shader does not exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->shaderMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    if-eq v1, v0, :cond_3

    .line 270
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 271
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 273
    :cond_2
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    .line 274
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 275
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 276
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 278
    :cond_3
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 354
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    return-void
.end method

.method protected createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 325
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 326
    if-nez v0, :cond_0

    .line 349
    :goto_0
    return v1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->loadFragmentShaders()V

    .line 330
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 331
    const-string v3, "glCreateProgram"

    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 332
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 336
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->shaderMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    .line 338
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mCurrentShader:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 339
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 340
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 341
    new-array v0, v4, [I

    .line 342
    const v3, 0x8b82

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 343
    aget v0, v0, v1

    if-eq v0, v4, :cond_1

    .line 344
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 346
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 349
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public drawFrame()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 99
    const-string v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 103
    invoke-static {v1, v2, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 104
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 106
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 107
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v1, "sExternalTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 110
    const-string v1, "glGetUniformLocation"

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 111
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 112
    const v1, 0x8d65

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 113
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 115
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v1, "sMissEtikateLookupTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 116
    const-string v1, "glGetUniformLocation"

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 117
    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    const/16 v1, 0xde1

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMissEtikateLookupTextureID:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 121
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->attachExtraUniforms()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 126
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 129
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maTextureHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mQuadVertices:Ljava/nio/FloatBuffer;

    move v1, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 135
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 141
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 142
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 144
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 145
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 148
    return-void
.end method

.method public getExternalTextureId()I
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 93
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    return v0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const v6, 0x8d65

    const v5, 0x46180400    # 9729.0f

    const v4, 0x812f

    const/4 v1, 0x0

    const/16 v3, 0xde1

    .line 164
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->initializeFragmentShader()V

    .line 168
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maPositionHandle:I

    .line 169
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maPositionHandle:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 164
    goto :goto_0

    .line 173
    :cond_1
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maTextureHandle:I

    .line 174
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->maTextureHandle:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muMVPMatrixHandle:I

    .line 179
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muMVPMatrixHandle:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_3
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muSTMatrixHandle:I

    .line 184
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->muSTMatrixHandle:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 190
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 191
    aget v2, v0, v1

    iput v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    .line 192
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayTextureID:I

    .line 193
    const/4 v2, 0x2

    aget v0, v0, v2

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMissEtikateLookupTextureID:I

    .line 197
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 198
    const-string v0, "glBindTexture mExternalTextureID"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v6, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 200
    const/16 v0, 0x2800

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 201
    const/16 v0, 0x2802

    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 202
    const/16 v0, 0x2803

    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 203
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMissEtikateLookupTextureID:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 206
    const-string v0, "glBindTexture mMissEtikateLookupTextureID"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 207
    const/16 v0, 0x2801

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 208
    const/16 v0, 0x2800

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 209
    const/16 v0, 0x2802

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 210
    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 211
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadMissEtikateLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    invoke-static {v3, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 215
    const-string v2, "texImage2D"

    invoke-virtual {p0, v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 219
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayTextureID:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 220
    const-string v0, "glBindTexture mOverlayTextureID"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 221
    const/16 v0, 0x2801

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 222
    const/16 v0, 0x2800

    invoke-static {v3, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 223
    const/16 v0, 0x2802

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 224
    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 225
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 228
    const-string v0, "texImage2D"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 231
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    .line 232
    return-void
.end method

.method protected initializeFragmentShader()V
    .locals 3

    .prologue
    .line 235
    new-instance v1, Lcom/snapchat/videotranscoder/video/VertexShader;

    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/video/VertexShader;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    .line 236
    new-instance v2, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v2, v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableOverlay(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v0

    .line 243
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VertexShader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    .line 244
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mProgram:I

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 253
    new-array v0, v4, [I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mExternalTextureID:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayTextureID:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mMissEtikateLookupTextureID:I

    aput v2, v0, v1

    .line 254
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 255
    return-void
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mIsInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 88
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 89
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

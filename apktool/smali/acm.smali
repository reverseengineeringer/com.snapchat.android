.class public final Lacm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lafv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lafv;

    invoke-direct {v0}, Lafv;-><init>()V

    iput-object v0, p0, Lacm;->b:Lafv;

    .line 54
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lacm;)V

    .line 55
    return-void
.end method

.method private static a(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 204
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 205
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 208
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[,~.]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;[BLaza;)Laji;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 74
    const/4 v4, 0x0

    .line 75
    sget-object v1, Laxo;->DISCOVER_SHARE:Laxn;

    check-cast v1, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v2, 0x0

    .line 79
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    invoke-static {v9}, Lacm;->a(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;

    move-result-object v11

    .line 86
    const-string v2, "metadata"

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fileNameToDataMap doesn\'t contain the metadata file as a key."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Laxq; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    :catch_0
    move-exception v2

    move-object v2, v9

    move-object v3, v7

    move-object v4, v10

    :goto_0
    const/4 v5, 0x0

    .line 109
    invoke-static {v4}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    move-object v7, v3

    move v2, v5

    .line 113
    :goto_1
    if-eqz v2, :cond_13

    .line 114
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    if-nez p2, :cond_c

    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_2
    return-object v1

    .line 91
    :cond_1
    :try_start_3
    const-string v2, "metadata"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 92
    iget-object v3, p0, Lacm;->a:Laum;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const-class v5, Laco;

    invoke-virtual {v3, v4, v5}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Laco;

    move-object v7, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Laxq; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    if-nez v7, :cond_2

    .line 94
    const/4 v2, 0x0

    .line 109
    :goto_3
    invoke-static {v10}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v9}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 96
    :cond_2
    :try_start_4
    sget-object v3, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2, v3}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    .line 99
    iget v2, v7, Laco;->a:I

    if-nez v2, :cond_5

    .line 100
    iget-object v2, v7, Laco;->h:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-static {p1, v2}, Lavp;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V

    const/4 v2, 0x1

    goto :goto_3

    .line 102
    :cond_5
    iget-object v2, v7, Laco;->j:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    iget-object v2, v7, Laco;->h:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [B

    move-object v8, v0

    if-nez v8, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    iget-object v2, v7, Laco;->j:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p1, v2}, Lavp;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V

    iget-object v2, v7, Laco;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v7, Laco;->i:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_8

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    invoke-static {p1, v2}, Lavp;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V

    :cond_a
    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v8, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Laxq; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 109
    :catchall_0
    move-exception v1

    move-object v9, v2

    move-object v10, v4

    :goto_4
    invoke-static {v10}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v9}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v1

    .line 114
    :cond_c
    iget v2, v7, Laco;->a:I

    if-nez v2, :cond_d

    new-instance v1, Lakf$a;

    invoke-direct {v1}, Lakf$a;-><init>()V

    :goto_5
    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v1, Laji$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v1, Laji$a;

    new-instance v2, Laeb;

    invoke-direct {v2}, Laeb;-><init>()V

    iget-object v3, v7, Laco;->b:Ljava/lang/String;

    iput-object v3, v2, Laeb;->a:Ljava/lang/String;

    iget-object v3, v7, Laco;->c:Ljava/lang/String;

    iput-object v3, v2, Laeb;->b:Ljava/lang/String;

    iget-object v3, v7, Laco;->d:Ljava/lang/String;

    iput-object v3, v2, Laeb;->c:Ljava/lang/String;

    iget-object v3, v7, Laco;->e:Ljava/lang/String;

    iput-object v3, v2, Laeb;->d:Ljava/lang/String;

    iget-object v3, v7, Laco;->f:Ljava/lang/String;

    iput-object v3, v2, Laeb;->e:Ljava/lang/String;

    iget-object v3, v7, Laco;->g:Ljava/lang/String;

    iput-object v3, v2, Laeb;->x:Ljava/lang/String;

    iget v3, v7, Laco;->m:F

    iput v3, v2, Laeb;->h:F

    iget v3, v7, Laco;->n:F

    iput v3, v2, Laeb;->i:F

    iget v3, v7, Laco;->k:F

    iput v3, v2, Laeb;->f:F

    iget v3, v7, Laco;->l:F

    iput v3, v2, Laeb;->g:F

    iget v3, v7, Laco;->o:F

    iput v3, v2, Laeb;->j:F

    iget v3, v7, Laco;->p:F

    iput v3, v2, Laeb;->k:F

    iget v3, v7, Laco;->r:I

    iput v3, v2, Laeb;->q:I

    iget v3, v7, Laco;->s:I

    iput v3, v2, Laeb;->r:I

    iget-object v3, v7, Laco;->t:Ljava/lang/String;

    iput-object v3, v2, Laeb;->s:Ljava/lang/String;

    iget-object v3, v7, Laco;->u:Ljava/lang/String;

    iput-object v3, v2, Laeb;->t:Ljava/lang/String;

    iget-boolean v3, v7, Laco;->q:Z

    iput-boolean v3, v2, Laeb;->n:Z

    iput-object v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    check-cast v1, Laji$a;

    invoke-virtual {v1}, Laji$a;->b()Laji;

    move-result-object v1

    goto/16 :goto_2

    :cond_d
    iget v2, v7, Laco;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    iget v2, v7, Laco;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    :cond_e
    new-instance v3, Laku$a;

    invoke-direct {v3}, Laku$a;-><init>()V

    iget-object v2, v7, Laco;->i:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayPath:Ljava/lang/String;

    :cond_f
    iget v2, v7, Laco;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v3, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v3, v1}, Laji$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    :cond_10
    move-object v1, v3

    goto/16 :goto_5

    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid media type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 109
    :catchall_1
    move-exception v1

    move-object v9, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v1

    goto/16 :goto_4

    .line 106
    :catch_1
    move-exception v3

    move-object v3, v7

    goto/16 :goto_0

    :catch_2
    move-exception v3

    move-object v3, v7

    move-object v4, v10

    goto/16 :goto_0

    :catch_3
    move-exception v2

    move-object v2, v9

    move-object v3, v7

    move-object v4, v10

    goto/16 :goto_0

    :catch_4
    move-exception v3

    move-object v3, v7

    goto/16 :goto_0

    :catch_5
    move-exception v3

    move-object v3, v7

    move-object v4, v10

    goto/16 :goto_0

    :catch_6
    move-exception v2

    move-object v2, v9

    move-object v3, v7

    move-object v4, v10

    goto/16 :goto_0

    :catch_7
    move-exception v2

    move-object v2, v9

    move-object v3, v7

    move-object v4, v10

    goto/16 :goto_0
.end method

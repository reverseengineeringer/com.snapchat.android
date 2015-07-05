.class public final Labm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Laev;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Laev;

    invoke-direct {v0}, Laev;-><init>()V

    iput-object v0, p0, Labm;->b:Laev;

    .line 54
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Labm;)V

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
.method public final a(Landroid/content/Context;Ljava/lang/String;[BLayc;)Laim;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 72
    const-string v1, "DSnapMediaExtractor"

    const-string v2, "CHAT-LOG: Extracting Discover media from bundle with Id [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v4, 0x0

    .line 75
    sget-object v1, Lawq;->DISCOVER_SHARE:Lawp;

    check-cast v1, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v3, 0x0

    .line 79
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    invoke-static {v9}, Labm;->a(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;

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
    .catch Laws; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    :catch_0
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_0
    move-object v9, v3

    move-object v10, v4

    .line 106
    :goto_1
    :try_start_3
    const-string v3, "DSnapMediaExtractor"

    invoke-static {v3, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 107
    const/4 v2, 0x0

    .line 109
    invoke-static {v10}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v9}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 113
    :goto_2
    if-eqz v2, :cond_13

    .line 114
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    if-nez p2, :cond_c

    :cond_0
    const/4 v1, 0x0

    .line 117
    :goto_3
    return-object v1

    .line 91
    :cond_1
    :try_start_4
    const-string v2, "metadata"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 92
    iget-object v3, p0, Labm;->a:Lato;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const-class v5, Labo;

    invoke-virtual {v3, v4, v5}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Labo;

    move-object v7, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Laws; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 93
    if-nez v7, :cond_2

    .line 94
    const/4 v2, 0x0

    .line 109
    :goto_4
    invoke-static {v10}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v9}, Lbfo;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 96
    :cond_2
    :try_start_5
    sget-object v3, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2, v3}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    .line 99
    iget v2, v7, Labo;->a:I

    if-nez v2, :cond_5

    .line 100
    iget-object v2, v7, Labo;->h:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    invoke-static {p1, v2}, Laur;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Layc;)V

    const/4 v2, 0x1

    goto :goto_4

    .line 102
    :cond_5
    iget-object v2, v7, Labo;->j:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    iget-object v2, v7, Labo;->h:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [B

    move-object v8, v0

    if-nez v8, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    iget-object v2, v7, Labo;->j:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p1, v2}, Laur;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Layc;)V

    iget-object v2, v7, Labo;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v7, Labo;->i:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_8

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-static {p1, v2}, Laur;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Layc;)V

    :cond_a
    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v8, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Laws; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 109
    :catchall_0
    move-exception v1

    move-object v9, v3

    move-object v10, v4

    :goto_5
    invoke-static {v10}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v9}, Lbfo;->a(Ljava/io/Closeable;)V

    throw v1

    .line 114
    :cond_c
    iget v2, v7, Labo;->a:I

    if-nez v2, :cond_d

    new-instance v1, Lajj$a;

    invoke-direct {v1}, Lajj$a;-><init>()V

    :goto_6
    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v1, Laim$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v1, Laim$a;

    new-instance v2, Ladb;

    invoke-direct {v2}, Ladb;-><init>()V

    iget-object v3, v7, Labo;->b:Ljava/lang/String;

    iput-object v3, v2, Ladb;->a:Ljava/lang/String;

    iget-object v3, v7, Labo;->c:Ljava/lang/String;

    iput-object v3, v2, Ladb;->b:Ljava/lang/String;

    iget-object v3, v7, Labo;->d:Ljava/lang/String;

    iput-object v3, v2, Ladb;->c:Ljava/lang/String;

    iget-object v3, v7, Labo;->e:Ljava/lang/String;

    iput-object v3, v2, Ladb;->d:Ljava/lang/String;

    iget-object v3, v7, Labo;->f:Ljava/lang/String;

    iput-object v3, v2, Ladb;->e:Ljava/lang/String;

    iget-object v3, v7, Labo;->g:Ljava/lang/String;

    iput-object v3, v2, Ladb;->x:Ljava/lang/String;

    iget v3, v7, Labo;->m:F

    iput v3, v2, Ladb;->h:F

    iget v3, v7, Labo;->n:F

    iput v3, v2, Ladb;->i:F

    iget v3, v7, Labo;->k:F

    iput v3, v2, Ladb;->f:F

    iget v3, v7, Labo;->l:F

    iput v3, v2, Ladb;->g:F

    iget v3, v7, Labo;->o:F

    iput v3, v2, Ladb;->j:F

    iget v3, v7, Labo;->p:F

    iput v3, v2, Ladb;->k:F

    iget v3, v7, Labo;->r:I

    iput v3, v2, Ladb;->q:I

    iget v3, v7, Labo;->s:I

    iput v3, v2, Ladb;->r:I

    iget-object v3, v7, Labo;->t:Ljava/lang/String;

    iput-object v3, v2, Ladb;->s:Ljava/lang/String;

    iget-object v3, v7, Labo;->u:Ljava/lang/String;

    iput-object v3, v2, Ladb;->t:Ljava/lang/String;

    iget-boolean v3, v7, Labo;->q:Z

    iput-boolean v3, v2, Ladb;->n:Z

    iput-object v2, v1, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Laiz;

    check-cast v1, Laim$a;

    invoke-virtual {v1}, Laim$a;->b()Laim;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    iget v2, v7, Labo;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    iget v2, v7, Labo;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    :cond_e
    new-instance v3, Lajm$a;

    invoke-direct {v3}, Lajm$a;-><init>()V

    iget-object v2, v7, Labo;->i:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayPath:Ljava/lang/String;

    :cond_f
    iget v2, v7, Labo;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, v3, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, p2, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v3, v1}, Laim$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    :cond_10
    move-object v1, v3

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid media type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_13
    const-string v1, "DSnapMediaExtractor"

    const-string v2, "Unable to extract shared DSnap."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 109
    :catchall_1
    move-exception v1

    move-object v9, v3

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    goto/16 :goto_5

    .line 105
    :catch_1
    move-exception v2

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v9, v3

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_1

    :catch_4
    move-exception v2

    goto/16 :goto_0

    :catch_5
    move-exception v2

    move-object v4, v10

    goto/16 :goto_0
.end method

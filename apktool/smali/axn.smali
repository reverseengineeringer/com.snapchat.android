.class public Laxn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxn$b;,
        Laxn$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cache"


# instance fields
.field public final mCacheType:Lcom/snapchat/android/util/cache/CacheType;

.field protected final mClock:Lbhk;

.field protected final mExpirationInMinutes:J

.field protected final mFileUtils:Laxr;

.field public mKeyToItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxn$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;J)V
    .locals 6
    .param p1    # Lcom/snapchat/android/util/cache/CacheType;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    new-instance v2, Laxr;

    invoke-direct {v2}, Laxr;-><init>()V

    new-instance v3, Lbhk;

    invoke-direct {v3}, Lbhk;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;Laxr;Lbhk;J)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/cache/CacheType;Laxr;Lbhk;J)V
    .locals 2
    .param p1    # Lcom/snapchat/android/util/cache/CacheType;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laxr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    .line 108
    iput-wide p4, p0, Laxn;->mExpirationInMinutes:J

    .line 109
    iput-object p1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    .line 110
    iput-object p2, p0, Laxn;->mFileUtils:Laxr;

    .line 111
    iput-object p3, p0, Laxn;->mClock:Lbhk;

    .line 112
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove: Trying to remove null key in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 410
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 411
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    .line 412
    if-nez v0, :cond_2

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    if-eqz p2, :cond_3

    .line 417
    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    new-instance v1, Laxn$1;

    invoke-direct {v1, p0, v0}, Laxn$1;-><init>(Laxn;Ljava/lang/String;)V

    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Laxn$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 419
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-static {v1}, Laxr;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private a(Laxn$a;)Z
    .locals 4
    .param p1    # Laxn$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Laxn$a;->mLastAccessMilliseconds:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 380
    iget-wide v2, p0, Laxn;->mExpirationInMinutes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Laxn$a;)[B
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laxn$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 323
    invoke-static {}, Lbhp;->b()V

    .line 325
    const/4 v1, 0x0

    .line 326
    sget-object v0, Laxn$b;->UNKNOWN:Laxn$b;

    .line 327
    iget-object v2, p2, Laxn$a;->mUri:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    invoke-direct {p0, p2}, Laxn;->a(Laxn$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    sget-object v0, Laxn$b;->EXPIRED:Laxn$b;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 347
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_6

    .line 348
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p2, v2, v9

    iget-object v3, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v1, v2, v11

    .line 351
    invoke-virtual {p0, p1}, Laxn;->c(Ljava/lang/String;)V

    .line 367
    :cond_1
    :goto_1
    return-object v0

    .line 334
    :cond_2
    :try_start_0
    invoke-static {}, Lbhp;->b()V

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    sget-object v1, Laxn$b;->DECODING_ERROR:Laxn$b;

    goto :goto_0

    .line 334
    :cond_3
    long-to-int v3, v2

    :try_start_1
    new-array v2, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    if-nez v3, :cond_4

    .line 336
    :try_start_2
    sget-object v0, Laxn$b;->EMPTY_FILE:Laxn$b;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v1, v0

    move-object v0, v2

    .line 341
    goto :goto_0

    .line 344
    :cond_5
    sget-object v0, Laxn$b;->FILE_NOT_EXIST:Laxn$b;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_0

    .line 353
    :cond_6
    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v8

    aput-object p2, v1, v9

    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 355
    iget-object v1, p2, Laxn$a;->mUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/util/cache/CacheType;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 358
    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v1

    const-string v2, "no dataId provided"

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 359
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 360
    :catch_1
    move-exception v1

    .line 362
    new-array v2, v10, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v9

    .line 363
    invoke-virtual {p0, p1}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private a([B)[B
    .locals 4
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v2

    .line 134
    :try_start_0
    iget-object v0, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v0

    const-string v1, "no dataId provided"

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 138
    :goto_0
    return-object p1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Laxn$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 302
    if-nez p1, :cond_2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getItem: Trying to check null key in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    move-object v0, v1

    .line 315
    :cond_1
    :goto_0
    return-object v0

    .line 309
    :cond_2
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    .line 310
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Laxn;->a(Laxn$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-direct {p0, p1, v3}, Laxn;->a(Ljava/lang/String;Z)V

    .line 312
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    move-object v0, v1

    .line 313
    goto :goto_0
.end method

.method private f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    :try_start_0
    iget-object v0, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 636
    :goto_0
    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 639
    :goto_1
    return-object v0

    .line 634
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 639
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Laza;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, p3, v0}, Laxn;->a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Laza;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, p2}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 253
    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    if-eqz p3, :cond_2

    .line 259
    invoke-interface {p3, v1, p2}, Laza;->b([BLjava/lang/String;)[B

    move-result-object v1

    .line 260
    :cond_2
    if-eqz v1, :cond_0

    .line 267
    invoke-static {p1, v1}, Lavp;->b(Landroid/content/Context;[B)Lawm;

    move-result-object v0

    .line 269
    iget-object v0, v0, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Laxz;
    .locals 5
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 676
    :try_start_0
    invoke-static {p1, p2}, Laxr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 677
    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create directory "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :goto_0
    return-object v0

    .line 677
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laxn$a;->a(Ljava/lang/String;)Laxn$a;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Laxz;

    invoke-direct {v1, p0, v2, v3}, Laxz;-><init>(Laxn;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 679
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    if-nez p1, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "put: Trying to put null key in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 191
    :cond_1
    :goto_0
    return-object v0

    .line 175
    :cond_2
    iget-object v0, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->needToEncrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-direct {p0, p2}, Laxn;->a([B)[B

    move-result-object p2

    .line 177
    array-length p3, p2

    .line 178
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 181
    :cond_3
    invoke-virtual {p0, p2, p3}, Laxn;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 186
    iget-object v1, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 187
    invoke-virtual {p0, p1}, Laxn;->c(Ljava/lang/String;)V

    .line 189
    :cond_4
    iget-object v1, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-static {v0}, Laxn$a;->a(Ljava/lang/String;)Laxn$a;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a([BI)Ljava/lang/String;
    .locals 1
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->generateFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Laxn;->a([BILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([BILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {}, Lbhp;->b()V

    .line 206
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create directory "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :goto_0
    return-object v0

    .line 214
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-static {v1}, Laxr;->a(Ljava/io/File;)V

    .line 218
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 219
    array-length v2, p1

    if-le p2, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is bigger than data length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :catch_0
    move-exception v1

    goto :goto_0

    .line 219
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, p1, v4, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lbhp;->b()V

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    const/16 v1, 0x5a

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 154
    invoke-virtual {p0, p1, v0}, Laxn;->a(Ljava/lang/String;[B)V

    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 160
    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxn$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v1, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 646
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 647
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4
    .annotation build Lcbr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Lbhp;->b()V

    .line 475
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 478
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Laxn;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 488
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 13
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 568
    invoke-static {}, Lbhp;->b()V

    .line 570
    iget-object v4, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v7, Ljava/io/File;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laxn$a;

    iget-object v3, v3, Laxn$a;->mUri:Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    const/4 v7, 0x1

    iget-object v8, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v8}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    iget-object v4, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    monitor-enter v4

    .line 574
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 575
    iget-object v2, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 576
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxn$a;

    iget-object v2, v2, Laxn$a;->mUri:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 578
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    invoke-direct {p0}, Laxn;->f()Ljava/util/List;

    move-result-object v2

    .line 581
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 582
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 585
    if-eqz p1, :cond_6

    if-nez v3, :cond_6

    .line 587
    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    iget-object v6, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v6}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    .line 603
    :cond_5
    :goto_4
    invoke-static {v2}, Laxr;->a(Ljava/io/File;)V

    goto :goto_3

    .line 591
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 592
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 593
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    .line 595
    iget-wide v8, p0, Laxn;->mExpirationInMinutes:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 596
    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v7}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 600
    if-eqz v3, :cond_5

    .line 601
    iget-object v6, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 607
    :cond_7
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get: Trying to get null key in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Laxn;->f(Ljava/lang/String;)Laxn$a;

    move-result-object v1

    .line 292
    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p1, v1}, Laxn;->a(Ljava/lang/String;Laxn$a;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0, p1}, Laxn;->f(Ljava/lang/String;)Laxn$a;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 497
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 499
    new-instance v0, Laxn$2;

    invoke-direct {v0, p0}, Laxn$2;-><init>(Laxn;)V

    sget-object v1, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Laxn$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Laxn;->a(Ljava/lang/String;Z)V

    .line 426
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Laxn$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v1, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 546
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 548
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 503
    if-nez p1, :cond_1

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "contains: Trying to check null key in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 516
    :goto_0
    return v0

    .line 510
    :cond_1
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    .line 511
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Laxn;->a(Laxn$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    invoke-direct {p0, p1, v3}, Laxn;->a(Ljava/lang/String;Z)V

    .line 513
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    move v0, v1

    .line 514
    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Laxn;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laxn;->a(Z)V

    .line 559
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Lbhp;->b()V

    .line 527
    invoke-direct {p0, p1}, Laxn;->f(Ljava/lang/String;)Laxn$a;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

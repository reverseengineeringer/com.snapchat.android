.class public Lawp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawp$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cache"


# instance fields
.field public mCacheType:Lcom/snapchat/android/util/cache/CacheType;

.field protected mExpirationInMinutes:J

.field private mFileUtils:Lawt;

.field public mKeyToUri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;J)V
    .locals 2
    .param p1    # Lcom/snapchat/android/util/cache/CacheType;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
    new-instance v0, Lawt;

    invoke-direct {v0}, Lawt;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;Lawt;J)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/cache/CacheType;Lawt;J)V
    .locals 1
    .param p1    # Lcom/snapchat/android/util/cache/CacheType;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lawt;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    .line 75
    iput-wide p3, p0, Lawp;->mExpirationInMinutes:J

    .line 76
    iput-object p1, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    .line 78
    iput-object p2, p0, Lawp;->mFileUtils:Lawt;

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 367
    if-nez p1, :cond_0

    .line 368
    const-string v0, "Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: Trying to remove null key in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 373
    :cond_0
    const-string v0, "Cache"

    const-string v1, "!!! [%s] deleting [Key: %s; Uri: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    if-nez v0, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 379
    :cond_2
    if-eqz p2, :cond_3

    .line 380
    new-instance v1, Lawp$1;

    invoke-direct {v1, p0, v0}, Lawp$1;-><init>(Lawp;Ljava/lang/String;)V

    sget-object v0, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lawp$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 382
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-static {v1}, Lawt;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private a([B)[B
    .locals 6
    .param p1    # [B
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    const-string v0, "Cache"

    const-string v1, "[%s] encrypt bytes before saving into cache file."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v0

    const-string v1, "no dataId provided"

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 108
    :goto_0
    return-object p1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "Cache"

    const-string v2, "Failed to encrypt: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 651
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 654
    :cond_0
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lbgp;->b()V

    .line 287
    const/4 v1, 0x0

    .line 288
    sget-object v0, Lawp$a;->UNKNOWN:Lawp$a;

    .line 289
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    iget-wide v6, p0, Lawp;->mExpirationInMinutes:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    .line 293
    sget-object v0, Lawp$a;->EXPIRED:Lawp$a;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 309
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_7

    .line 310
    :cond_0
    const-string v2, "Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DISK cache MISS for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v4}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0, p1}, Lawp;->c(Ljava/lang/String;)V

    .line 329
    :cond_1
    :goto_2
    return-object v0

    .line 292
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 296
    :cond_3
    :try_start_0
    invoke-static {}, Lbgp;->b()V

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :goto_3
    sget-object v2, Lawp$a;->DECODING_ERROR:Lawp$a;

    .line 302
    const-string v3, "Cache"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v1, v2

    .line 303
    goto :goto_1

    .line 296
    :cond_4
    long-to-int v3, v2

    :try_start_1
    new-array v2, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    if-nez v3, :cond_5

    .line 298
    :try_start_2
    sget-object v0, Lawp$a;->EMPTY_FILE:Lawp$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move-object v1, v0

    move-object v0, v2

    .line 303
    goto :goto_1

    .line 306
    :cond_6
    sget-object v0, Lawp$a;->FILE_NOT_EXIST:Lawp$a;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1

    .line 315
    :cond_7
    const-string v1, "Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DISK cache HIT for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-static {p2}, Lcom/snapchat/android/util/cache/CacheType;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :try_start_3
    const-string v1, "Cache"

    const-string v2, "[%s] Need to decrypt before viewing: %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType;->getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v1

    const-string v2, "no dataId provided"

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 321
    const-string v1, "Cache"

    const-string v2, "Decryption is done: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 322
    :catch_1
    move-exception v1

    .line 324
    const-string v2, "Cache"

    const-string v3, "Cannot decrypt the url, so deleting: %s | Error: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0, p1}, Lawp;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 300
    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
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
    .line 589
    :try_start_0
    iget-object v0, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 593
    :goto_0
    if-nez v0, :cond_0

    .line 594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 596
    :goto_1
    return-object v0

    .line 591
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Layc;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, p3, v0}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 221
    new-instance v2, Lmh;

    const-string v1, "Cache"

    const-string v3, "getBitmap"

    invoke-direct {v2, v1, v3}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p2}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 223
    const-string v3, "get"

    invoke-virtual {v2, v3}, Lmh;->a(Ljava/lang/String;)V

    .line 224
    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    if-eqz p3, :cond_2

    .line 229
    invoke-interface {p3, v1, p2}, Layc;->b([BLjava/lang/String;)[B

    move-result-object v1

    .line 230
    const-string v3, "decrypt"

    invoke-virtual {v2, v3}, Lmh;->a(Ljava/lang/String;)V

    .line 233
    :cond_2
    if-eqz v1, :cond_0

    .line 237
    invoke-static {p1, v1}, Laur;->b(Landroid/content/Context;[B)Lavo;

    move-result-object v1

    .line 239
    iget-boolean v0, v1, Lavo;->mIsFromPool:Z

    if-eqz v0, :cond_3

    const-string v0, "decodePooled"

    :goto_1
    invoke-virtual {v2, v0}, Lmh;->a(Ljava/lang/String;)V

    .line 240
    invoke-static {v2}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    .line 241
    iget-object v0, v1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 239
    :cond_3
    const-string v0, "decodeNotPooled"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Laxb;
    .locals 6
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 633
    :try_start_0
    invoke-static {p1, p2}, Lawt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    iget-object v2, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :goto_0
    return-object v0

    .line 634
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Laxb;

    invoke-direct {v1, p0, v2, v3}, Laxb;-><init>(Lawp;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 636
    :catch_0
    move-exception v1

    const-string v1, "Cache"

    const-string v2, "External storage unavailable."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    if-nez p1, :cond_2

    .line 138
    const-string v0, "Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "put: Trying to put null key in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 161
    :cond_1
    :goto_0
    return-object v0

    .line 145
    :cond_2
    iget-object v0, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->needToEncrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0, p2}, Lawp;->a([B)[B

    move-result-object p2

    .line 147
    array-length p3, p2

    .line 148
    const-string v0, "Cache"

    const-string v1, "Encryption is done: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_3
    invoke-virtual {p0, p2, p3}, Lawp;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    const-string v1, "Cache"

    const-string v2, "Put %d bytes in cache for key %s at %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {p0, p1}, Lawp;->c(Ljava/lang/String;)V

    .line 159
    :cond_4
    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a([BI)Ljava/lang/String;
    .locals 1
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->generateFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lawp;->a([BILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([BILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 174
    invoke-static {}, Lbgp;->b()V

    .line 176
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

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

    .line 178
    :try_start_0
    iget-object v2, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    const-string v1, "Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-static {v1}, Lawt;->a(Ljava/io/File;)V

    .line 188
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 189
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
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :catch_0
    move-exception v1

    .line 191
    const-string v2, "Cache"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, p1, v4, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 193
    :catch_1
    move-exception v1

    .line 194
    const-string v2, "Cache"

    const-string v3, "Failed to write file..."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string v2, "Cache"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lbgp;->b()V

    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    const/16 v1, 0x5a

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 124
    invoke-virtual {p0, p1, v0}, Lawp;->a(Ljava/lang/String;[B)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 130
    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lawp;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 131
    return-void

    .line 130
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    monitor-enter v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 603
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 604
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
    .annotation build Lcaq;
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
    .line 436
    invoke-static {}, Lbgp;->b()V

    .line 438
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 441
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

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

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
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

    .line 449
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lawp;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 451
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 12
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 533
    invoke-static {}, Lbgp;->b()V

    .line 536
    iget-object v2, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    monitor-enter v2

    .line 539
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 540
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    new-instance v5, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string v1, "Cache"

    const-string v6, "sanitize: Mapped file no longer exists: %s from %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x1

    iget-object v8, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v8}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    iget-object v3, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-static {v0}, Lawp;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 554
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    invoke-direct {p0}, Lawp;->f()Ljava/util/List;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    .line 559
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 563
    const-string v0, "Cache"

    const-string v4, "sanitize: Deleting not tracked file %s from %s"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v6}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_4
    :goto_3
    invoke-static {v1}, Lawt;->a(Ljava/io/File;)V

    goto :goto_2

    .line 568
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 569
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 570
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 572
    iget-wide v6, p0, Lawp;->mExpirationInMinutes:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 573
    const-string v4, "Cache"

    const-string v5, "sanitize: DISK cache expiration for file %s from %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v7}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    if-eqz v0, :cond_4

    .line 578
    iget-object v4, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 584
    :cond_6
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CacheType;->getDirectory()Ljava/io/File;
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    if-nez p1, :cond_0

    .line 256
    const-string v1, "Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get: Trying to get null key in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p1, v1}, Lawp;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 267
    if-nez p1, :cond_2

    .line 268
    const-string v0, "Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUri: Trying to get null key in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 277
    :cond_1
    :goto_0
    return-object v0

    .line 272
    :cond_2
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    if-nez v0, :cond_1

    .line 275
    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    const-string v0, "Cache"

    const-string v1, "Clearing cache %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 462
    new-instance v0, Lawp$2;

    invoke-direct {v0, p0}, Lawp$2;-><init>(Lawp;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lawp$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    return-void
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 496
    const-string v0, "Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! Cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lawp;->a(Ljava/lang/String;Z)V

    .line 389
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
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v1, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 509
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 513
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
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 466
    if-nez p1, :cond_0

    .line 467
    const-string v1, "Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contains: Trying to check null key in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 473
    :cond_0
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public e()V
    .locals 1
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lawp;->a(Z)V

    .line 524
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 482
    if-nez p1, :cond_1

    .line 483
    const-string v0, "Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "containsAndExists: Trying to check null key in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 492
    :goto_0
    return v0

    .line 487
    :cond_1
    iget-object v0, p0, Lawp;->mKeyToUri:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    if-nez v0, :cond_2

    move v0, v1

    .line 489
    goto :goto_0

    .line 491
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

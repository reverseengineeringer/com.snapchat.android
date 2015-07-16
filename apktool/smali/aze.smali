.class public final Laze;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final BACKING_FILE:Ljava/lang/String; = "/fdg78df67g5s6f2"

.field private static final BACKING_FILENAME:Ljava/lang/String; = "fdg78df67g5s6f"

.field private static final HARDCODED_PASSWORD:Ljava/lang/String; = "7f6as9d7f6dasf7"

.field private static final TAG:Ljava/lang/String; = "SlightlySecurePreferences"

.field private static final VERSION:I = 0x2


# instance fields
.field public mBackingFileIsEmpty:Z

.field public mBackingFileIsUpToDate:Z

.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mMap:Ljava/util/HashMap;
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lazf;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mShouldRunTasksInBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 89
    sget-object v0, Lavf;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Laze;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 90
    iput-boolean v1, p0, Laze;->mShouldRunTasksInBackground:Z

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 214
    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 216
    const-string v0, "7f6as9d7f6dasf7"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v0, v2, v1

    .line 222
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 229
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static b(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 409
    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 411
    const-string v0, "seems legit..."

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 412
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v0, v2, v1

    .line 417
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 424
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lazf;)Ljava/lang/String;
    .locals 2
    .param p1    # Lazf;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 1
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Laze;->mInitializationCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lazf;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lazf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 252
    iget-object v1, p0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 253
    if-nez p2, :cond_0

    .line 254
    :try_start_0
    iget-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    .line 260
    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/io/File;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    new-instance v0, Lazc;

    const-string v1, "bananas"

    invoke-direct {v0, v1, v6}, Lazc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v8, v4

    move v3, v4

    :goto_1
    if-ge v8, v10, :cond_4

    aget-object v11, v9, v8

    .line 343
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v0}, Laze;->b(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v7, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "UTF-8"

    invoke-static {v5, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v12, Ljava/util/HashMap;

    invoke-virtual {v1, v0, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    iget-object v1, v1, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v12, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    sget-object v1, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    iget-object v1, v1, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v12, v1}, Laze;->a(Lazf;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lazh;->SQ_AUTH_TOKEN:Lazf;

    iget-object v1, v1, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lazh;->SQ_AUTH_TOKEN:Lazf;

    sget-object v12, Lazh;->SQ_AUTH_TOKEN:Lazf;

    iget-object v12, v12, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Laze;->a(Lazf;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    invoke-static {v5}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 344
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 342
    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v3, v0

    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    :goto_4
    invoke-static {v0}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v6

    move-object v7, v6

    :goto_5
    invoke-static {v5}, Lbgo;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    .line 347
    :cond_4
    new-instance v0, Lazc;

    const-string v1, "fdg78df67g5s6f"

    invoke-direct {v0, v1, p2}, Lazc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v5, v1

    move v0, v3

    :goto_6
    if-ge v4, v5, :cond_6

    aget-object v3, v1, v4

    .line 348
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 347
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 353
    :cond_6
    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v1

    invoke-virtual {v1}, Lakk;->c()V

    .line 355
    invoke-static {}, Laxo;->b()V

    goto/16 :goto_0

    .line 343
    :catchall_1
    move-exception v0

    move-object v5, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v5

    move-object v1, v7

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    iget-boolean v2, p0, Laze;->mShouldRunTasksInBackground:Z

    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Lbhp;->b()V

    .line 284
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    .line 287
    iget-boolean v2, p0, Laze;->mBackingFileIsUpToDate:Z

    if-eqz v2, :cond_1

    .line 330
    :goto_0
    return v0

    .line 288
    :cond_1
    iput-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    .line 292
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 293
    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 294
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/fdg78df67g5s6f2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 297
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not open file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v1

    .line 301
    goto :goto_0

    .line 307
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 309
    :try_start_2
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 310
    const/4 v6, 0x1

    invoke-static {v4}, Laze;->a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 311
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v2, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    :try_start_3
    iget-object v3, p0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 315
    :try_start_4
    new-instance v5, Laze$2;

    invoke-direct {v5, p0}, Laze$2;-><init>(Laze;)V

    invoke-virtual {v5}, Laze$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 316
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v6

    iget-object v7, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 317
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 319
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 320
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 321
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 326
    invoke-static {v4}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 327
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 329
    iput-boolean v1, p0, Laze;->mBackingFileIsEmpty:Z

    goto/16 :goto_0

    .line 317
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 322
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 323
    :goto_1
    :try_start_8
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Could not encrypt file"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 326
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v3}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 327
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    .line 324
    :cond_5
    invoke-static {v3}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 327
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto/16 :goto_0

    .line 326
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_2

    .line 322
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v2, p0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazf;

    iget-object v0, v0, Lazf;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    sget-object v4, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 434
    goto :goto_1

    .line 439
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    iget-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    if-nez v0, :cond_3

    .line 443
    iget-object v0, p0, Laze;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laze$3;

    invoke-direct {v1, p0}, Laze$3;-><init>(Laze;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 465
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-boolean v0, p0, Laze;->mBackingFileIsEmpty:Z

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v2, p0, Laze;->mMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 478
    :try_start_0
    iget-object v0, p0, Laze;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 479
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 480
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazf;

    iget-object v0, v0, Lazf;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    sget-object v4, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    goto :goto_1

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 480
    goto :goto_2

    .line 485
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    iget-boolean v0, p0, Laze;->mBackingFileIsUpToDate:Z

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Laze;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laze$4;

    invoke-direct {v1, p0}, Laze$4;-><init>(Laze;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 501
    iget-boolean v0, p0, Laze;->mShouldRunTasksInBackground:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-static {}, Lbhp;->b()V

    .line 506
    :cond_0
    iget-boolean v0, p0, Laze;->mBackingFileIsEmpty:Z

    if-eqz v0, :cond_2

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_1

    .line 513
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Laze;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Laze;->mBackingFileIsEmpty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

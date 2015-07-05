.class public final Laya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIELD_SEPARATOR_FOR_SIGNATURE:Ljava/lang/String; = "|"

.field private static final FILENAME:Ljava/lang/String; = "device_token_1"

.field private static final SECURE_HASH_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String; = "DeviceTokenManager"

.field private static final TRUNCATED_SIZE_IN_BYTES:I = 0xa

.field private static sInstance:Laya;


# instance fields
.field private final mApiTaskFactory:Lpk;

.field private final mDeveloperSettings:Lazn;

.field protected mDeviceToken:Laxz;

.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mGsonWrapper:Lato;

.field protected mIsFetchingDeviceTokenFromServer:Z

.field private final mMutex:Ljava/lang/Object;

.field private final mSlightlySecurePreferences:Layg;


# direct methods
.method protected constructor <init>(Layg;Lato;Lpk;Lazn;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laya;->mMutex:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Laya;->mIsFetchingDeviceTokenFromServer:Z

    .line 69
    sget-object v0, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Laya;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p1, p0, Laya;->mSlightlySecurePreferences:Layg;

    .line 77
    iput-object p2, p0, Laya;->mGsonWrapper:Lato;

    .line 78
    iput-object p3, p0, Laya;->mApiTaskFactory:Lpk;

    .line 79
    iput-object p4, p0, Laya;->mDeveloperSettings:Lazn;

    .line 80
    return-void
.end method

.method public static declared-synchronized a()Laya;
    .locals 2

    .prologue
    .line 83
    const-class v1, Laya;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laya;->sInstance:Laya;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0}, Laza;->a()Laya;

    move-result-object v0

    sput-object v0, Laya;->sInstance:Laya;

    .line 86
    :cond_0
    sget-object v0, Laya;->sInstance:Laya;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Laxz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Laxz;->mValue:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 269
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 271
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :goto_1
    const-string v1, "DeviceTokenManager"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Laya;->mDeveloperSettings:Lazn;

    invoke-virtual {v0}, Lazn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laya;->mDeviceToken:Laxz;

    iget-object v1, v1, Laxz;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 211
    :cond_1
    const-string v0, "DeviceTokenManager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private c()Laxz;
    .locals 8
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {}, Laya;->d()Ljava/io/File;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Laya;->mSlightlySecurePreferences:Layg;

    sget-object v3, Layj;->DEVICE_TOKEN_1_KEY_AND_IV:Layh;

    invoke-virtual {v0, v3}, Layg;->a(Layh;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 99
    :goto_1
    if-nez v0, :cond_3

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Laya;->mGsonWrapper:Lato;

    const-class v4, Laxu;

    invoke-virtual {v3, v0, v4}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxu;

    goto :goto_1

    .line 104
    :cond_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    long-to-int v4, v4

    new-array v5, v4, [B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 106
    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v4, v0, Laxu;->mKey:Ljava/lang/String;

    iget-object v0, v0, Laxu;->mIv:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "no dataId provided"

    invoke-virtual {v3, v5, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    .line 110
    :try_start_0
    iget-object v3, p0, Laya;->mGsonWrapper:Lato;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Laxz;

    invoke-virtual {v3, v4, v0}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v3, "DeviceTokenManager"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method private static d()Ljava/io/File;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laxa;->sInternalCacheDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Snapchat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v2, "device_token_1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 128
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laya;->b(Z)V

    .line 301
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    iget-object v0, v0, Laxz;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    iget-object v0, v0, Laxz;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    invoke-static {v0, p1, p1, p2, p3}, Laya;->a(Laxz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Laya;->mDeviceToken:Laxz;

    iget-object v1, v1, Laxz;->mId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)Laxz;
    .locals 1
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Laya;->b(Z)V

    .line 157
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    return-object v0
.end method

.method public final a(Laxz;)V
    .locals 6
    .param p1    # Laxz;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Laya;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iput-object p1, p0, Laya;->mDeviceToken:Laxz;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Laya;->mIsFetchingDeviceTokenFromServer:Z

    .line 231
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    if-nez v0, :cond_1

    .line 232
    monitor-exit v1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const-string v0, "DeviceTokenManager"

    const-string v1, "A new device token was acquired from the server."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Laya;->mGsonWrapper:Lato;

    iget-object v1, p0, Laya;->mDeviceToken:Laxz;

    invoke-virtual {v0, v1}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 240
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 241
    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laxu;

    invoke-direct {v4, v2, v3}, Laxu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Laya;->mSlightlySecurePreferences:Layg;

    sget-object v3, Layj;->DEVICE_TOKEN_1_KEY_AND_IV:Layh;

    iget-object v5, p0, Laya;->mGsonWrapper:Lato;

    invoke-virtual {v5, v4}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Layg;->a(Layh;Ljava/lang/String;)V

    .line 242
    const-string v2, "no dataId provided"

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Laya;->d()Ljava/io/File;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_0

    .line 253
    const/4 v2, 0x0

    .line 255
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 257
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    invoke-static {v1}, Lbfo;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 259
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 260
    :goto_1
    :try_start_4
    const-string v2, "DeviceTokenManager"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    invoke-static {v1}, Lbfo;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lbfo;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 259
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 166
    new-instance v0, Laya$1;

    invoke-direct {v0, p0}, Laya$1;-><init>(Laya;)V

    .line 173
    iget-object v1, p0, Laya;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method protected final b(Z)V
    .locals 3
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Laya;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v0}, Layg;->a()V

    .line 180
    iget-object v1, p0, Laya;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "Device token successfully fetched in memory."

    invoke-direct {p0, v0}, Laya;->a(Ljava/lang/String;)V

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-direct {p0}, Laya;->c()Laxz;

    move-result-object v0

    iput-object v0, p0, Laya;->mDeviceToken:Laxz;

    .line 188
    iget-object v0, p0, Laya;->mDeviceToken:Laxz;

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "Device token successfully fetched from disk."

    invoke-direct {p0, v0}, Laya;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_3
    const-string v2, "DeviceTokenManager"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Laya;->mIsFetchingDeviceTokenFromServer:Z

    if-nez v0, :cond_2

    .line 197
    const-string v0, "Requesting a new device token from the server."

    invoke-direct {p0, v0}, Laya;->a(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Laya;->mIsFetchingDeviceTokenFromServer:Z

    .line 199
    new-instance v0, Lps;

    invoke-direct {v0}, Lps;-><init>()V

    invoke-virtual {v0}, Lps;->i()Luc;

    .line 201
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final c(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Laya;->a(Z)Laxz;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Laxz;->mId:Ljava/lang/String;

    invoke-static {v0}, Layf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

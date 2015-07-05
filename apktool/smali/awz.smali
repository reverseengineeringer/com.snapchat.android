.class public final Lawz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawz$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapVideoDecryptor"


# instance fields
.field private final mBitmapLoader:Lavp;

.field private final mMemoryAnalytics:Lnh;

.field private final mRandom:Ljava/util/Random;

.field private final mUnencryptedVideoCache:Lawp;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Lavp;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lavp;-><init>(Landroid/content/Context;)V

    sget-object v2, Lawq;->UNENCRYPTED_VIDEO_CACHE:Lawp;

    new-instance v3, Lnh;

    invoke-direct {v3}, Lnh;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lawz;-><init>(Ljava/util/Random;Lavp;Lawp;Lnh;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/util/Random;Lavp;Lawp;Lnh;)V
    .locals 0
    .param p1    # Ljava/util/Random;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lavp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lnh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lawz;->mRandom:Ljava/util/Random;

    .line 50
    iput-object p2, p0, Lawz;->mBitmapLoader:Lavp;

    .line 51
    iput-object p3, p0, Lawz;->mUnencryptedVideoCache:Lawp;

    .line 52
    iput-object p4, p0, Lawz;->mMemoryAnalytics:Lnh;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)Lawz$a;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 139
    new-instance v1, Lmh;

    const-string v0, "SnapVideoDecryptor"

    const-string v2, "readVideoFromZippedArchiveStream"

    invoke-direct {v1, v0, v2}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v2, Lawz$a;

    invoke-direct {v2, p0, v8}, Lawz$a;-><init>(Lawz;B)V

    .line 142
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 151
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 152
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :try_start_3
    const-string v3, "SnapVideoDecryptor"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 181
    :goto_2
    invoke-static {v1}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    .line 183
    return-object v2

    .line 154
    :cond_0
    :try_start_5
    const-string v5, "unzip count"

    invoke-virtual {v1, v5}, Lmh;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 157
    const-string v5, "overlay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    new-instance v5, Lavx$a;

    invoke-direct {v5}, Lavx$a;-><init>()V

    iput-object v4, v5, Lavx$a;->mBytes:[B

    iput-object p1, v5, Lavx$a;->mRequestId:Ljava/lang/String;

    const/4 v4, 0x0

    iput-boolean v4, v5, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v5}, Lavx$a;->a()Lavx;

    move-result-object v4

    .line 162
    iget-object v5, p0, Lawz;->mBitmapLoader:Lavp;

    invoke-virtual {v5, v4}, Lavp;->a(Lavx;)Lavo;

    move-result-object v4

    .line 163
    iget-object v4, v4, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v4, v2, Lawz$a;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 167
    :cond_1
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unzip "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    const-string v5, "media"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    iput-object v4, v2, Lawz$a;->videoData:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 170
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    const-string v0, "SnapVideoDecryptor"

    const-string v3, "Unable to close archive stream"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v0, "SnapVideoDecryptor"

    const-string v3, "Unable to close archive stream"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 179
    :goto_4
    throw v0

    .line 178
    :catch_3
    move-exception v1

    const-string v1, "SnapVideoDecryptor"

    const-string v2, "Unable to close archive stream"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public final a(Lawy;ZZ)Laip;
    .locals 8
    .param p1    # Lawy;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v3, Lmh;

    const-string v0, "SnapVideoDecryptor"

    const-string v1, "decrypt"

    invoke-direct {v3, v0, v1}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "videoSnapCacheInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p1, Lawy;->mCache:Lawp;

    .line 72
    iget-object v4, p1, Lawy;->mKey:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v4}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-object v2

    .line 78
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "get "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmh;->a(Ljava/lang/String;)V

    .line 80
    iget-object v1, p1, Lawy;->mAlgorithm:Layc;

    .line 81
    if-eqz v1, :cond_3

    .line 83
    :try_start_0
    invoke-interface {v1, v0}, Layc;->b([B)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 92
    :cond_3
    const-string v1, "decrypt"

    invoke-virtual {v3, v1}, Lmh;->a(Ljava/lang/String;)V

    .line 95
    if-eqz p2, :cond_7

    .line 96
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v4, v1}, Lawz;->a(Ljava/lang/String;Ljava/io/InputStream;)Lawz$a;

    move-result-object v1

    .line 97
    iget-object v0, v1, Lawz$a;->videoData:[B

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, v1, Lawz$a;->videoData:[B

    .line 102
    :goto_1
    const-string v5, "unzip"

    invoke-virtual {v3, v5}, Lmh;->a(Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lawz;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    :try_start_1
    iget-object v5, p0, Lawz;->mUnencryptedVideoCache:Lawp;

    invoke-virtual {v5, v4, v0}, Lawp;->a(Ljava/lang/String;[B)V

    .line 107
    const-string v0, "put"

    invoke-virtual {v3, v0}, Lmh;->a(Ljava/lang/String;)V

    .line 109
    new-instance v5, Laip$a;

    iget-object v0, p0, Lawz;->mUnencryptedVideoCache:Lawp;

    invoke-direct {v5, v0, v4}, Laip$a;-><init>(Lawp;Ljava/lang/String;)V

    .line 110
    if-eqz v1, :cond_4

    .line 111
    iget-object v0, v1, Lawz$a;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 112
    if-eqz p3, :cond_5

    .line 113
    iget-object v0, v1, Lawz$a;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Laip$a;->a(Landroid/graphics/Bitmap;)Laip$a;

    .line 122
    :cond_4
    :goto_2
    new-instance v0, Laip;

    iget-object v1, v5, Laip$a;->mCache:Lawp;

    iget-object v4, v5, Laip$a;->mKey:Ljava/lang/String;

    iget-object v5, v5, Laip$a;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v4, v5, v6}, Laip;-><init>(Lawp;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
    :try_end_1
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-static {v3}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    move-object v2, v0

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v0

    invoke-static {v0}, Lnh;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 116
    :cond_5
    :try_start_2
    iget-object v0, v1, Lawz$a;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Laip$a;->a(Landroid/graphics/Bitmap;)Laip$a;
    :try_end_2
    .catch Laws; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "SnapVideoDecryptor"

    const-string v1, "External storage not available to save unencrypted video"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    invoke-static {v3}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    goto/16 :goto_0

    .line 119
    :cond_6
    :try_start_4
    const-string v0, "SnapVideoDecryptor"

    const-string v1, "Overlay bitmap is null while decrypting snap video!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Laws; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    throw v0

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method

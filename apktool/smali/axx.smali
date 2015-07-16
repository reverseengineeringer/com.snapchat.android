.class public final Laxx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxx$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapVideoDecryptor"


# instance fields
.field private final mBitmapLoader:Lawn;

.field private final mMemoryAnalytics:Lny;

.field private final mRandom:Ljava/util/Random;

.field private final mUnencryptedVideoCache:Laxn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Lawn;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lawn;-><init>(Landroid/content/Context;)V

    sget-object v2, Laxo;->UNENCRYPTED_VIDEO_CACHE:Laxn;

    new-instance v3, Lny;

    invoke-direct {v3}, Lny;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Laxx;-><init>(Ljava/util/Random;Lawn;Laxn;Lny;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/util/Random;Lawn;Laxn;Lny;)V
    .locals 0
    .param p1    # Ljava/util/Random;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lawn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lny;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Laxx;->mRandom:Ljava/util/Random;

    .line 50
    iput-object p2, p0, Laxx;->mBitmapLoader:Lawn;

    .line 51
    iput-object p3, p0, Laxx;->mUnencryptedVideoCache:Laxn;

    .line 52
    iput-object p4, p0, Laxx;->mMemoryAnalytics:Lny;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)Laxx$a;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 139
    new-instance v1, Laxx$a;

    invoke-direct {v1, p0, v0}, Laxx$a;-><init>(Laxx;B)V

    .line 142
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 151
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 152
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    .line 173
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 181
    :goto_2
    return-object v1

    .line 154
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 157
    const-string v4, "overlay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    new-instance v0, Lawv$a;

    invoke-direct {v0}, Lawv$a;-><init>()V

    iput-object v3, v0, Lawv$a;->mBytes:[B

    iput-object p1, v0, Lawv$a;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v0

    .line 162
    iget-object v3, p0, Laxx;->mBitmapLoader:Lawn;

    invoke-virtual {v3, v0}, Lawn;->a(Lawv;)Lawm;

    move-result-object v0

    .line 163
    iget-object v0, v0, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v1, Laxx$a;->overlayBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 164
    :cond_2
    const-string v4, "media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iput-object v3, v1, Laxx$a;->videoData:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 170
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    goto :goto_2

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 178
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Laxw;ZZ)Lajl;
    .locals 6
    .param p1    # Laxw;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "videoSnapCacheInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p1, Laxw;->mCache:Laxn;

    .line 72
    iget-object v3, p1, Laxw;->mKey:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    if-nez v0, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-object v2

    .line 78
    :cond_2
    iget-object v1, p1, Laxw;->mAlgorithm:Laza;

    .line 81
    if-eqz v1, :cond_3

    .line 83
    :try_start_0
    invoke-interface {v1, v0}, Laza;->b([B)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 95
    :cond_3
    if-eqz p2, :cond_6

    .line 96
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3, v1}, Laxx;->a(Ljava/lang/String;Ljava/io/InputStream;)Laxx$a;

    move-result-object v1

    .line 97
    iget-object v0, v1, Laxx$a;->videoData:[B

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, v1, Laxx$a;->videoData:[B

    .line 102
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laxx;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    :try_start_1
    iget-object v4, p0, Laxx;->mUnencryptedVideoCache:Laxn;

    invoke-virtual {v4, v3, v0}, Laxn;->a(Ljava/lang/String;[B)V

    .line 107
    new-instance v4, Lajl$a;

    iget-object v0, p0, Laxx;->mUnencryptedVideoCache:Laxn;

    invoke-direct {v4, v0, v3}, Lajl$a;-><init>(Laxn;Ljava/lang/String;)V

    .line 110
    if-eqz v1, :cond_4

    .line 111
    iget-object v0, v1, Laxx$a;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 112
    if-eqz p3, :cond_5

    .line 113
    iget-object v0, v1, Laxx$a;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lajl$a;->a(Landroid/graphics/Bitmap;)Lajl$a;

    .line 119
    :cond_4
    :goto_2
    new-instance v0, Lajl;

    iget-object v1, v4, Lajl$a;->mCache:Laxn;

    iget-object v3, v4, Lajl$a;->mKey:Ljava/lang/String;

    iget-object v4, v4, Lajl$a;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v3, v4, v5}, Lajl;-><init>(Laxn;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 127
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    invoke-static {v0}, Lny;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    :cond_5
    :try_start_2
    iget-object v0, v1, Laxx$a;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lajl$a;->a(Landroid/graphics/Bitmap;)Lajl$a;
    :try_end_2
    .catch Laxq; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

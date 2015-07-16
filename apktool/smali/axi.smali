.class public final Laxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxf;


# static fields
.field private static final TAG:Ljava/lang/String; = "EncryptedFileBitmapSource"


# instance fields
.field private final mEncryptionAlgorithm:Laza;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Laza;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laza;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Laxi;->mPath:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Laxi;->mEncryptionAlgorithm:Laza;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 46
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Laxi;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 49
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    long-to-int v3, v2

    .line 55
    new-array v4, v3, [B

    .line 57
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 65
    :goto_1
    iget-object v1, p0, Laxi;->mEncryptionAlgorithm:Laza;

    invoke-interface {v1, v4}, Laza;->b([B)[B

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 70
    array-length v0, v1

    invoke-static {v1, v6, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 59
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

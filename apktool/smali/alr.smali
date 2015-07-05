.class public abstract Lalr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb$a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laje;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lawp;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lawp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laje;",
            ">;",
            "Lawp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lalr;->a:Ljava/util/Map;

    .line 39
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawp;

    iput-object v0, p0, Lalr;->b:Lawp;

    .line 40
    return-void
.end method

.method private a(Lbfl;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lbfl;->mBuffer:[B

    iget v2, p1, Lbfl;->mSize:I

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    const/4 v1, 0x0

    move-object v3, v1

    .line 99
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {v4}, Leb;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 101
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lalr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lajr;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    iget-object v1, v1, Lajr;->mMediaId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laje;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2}, Lalr;->a([BLaje;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    :try_start_2
    const-string v2, "SnapMediaDownloadHandler"

    const-string v3, "Failed download for %s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    .line 113
    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v4}, Lbfo;->a(Ljava/io/Closeable;)V

    .line 121
    if-eqz v3, :cond_3

    .line 122
    throw v3

    .line 118
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lbfo;->a(Ljava/io/Closeable;)V

    throw v0

    .line 124
    :cond_3
    return-void
.end method

.method private a([BLaje;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    instance-of v0, p2, Lajr;

    .line 131
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p2}, Laje;->K()Layc;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1}, Layc;->a([B)[B

    move-result-object p1

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Decrypted null data for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lalr;->b:Lawp;

    invoke-virtual {v0, p3, p1}, Lawp;->a(Ljava/lang/String;[B)V

    .line 140
    return-void
.end method


# virtual methods
.method public final a(Lalc;)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCanceled has not been implemented for snap media."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 44
    .line 45
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p2, Lbfl;->mBuffer:[B

    if-eqz v0, :cond_0

    iget v0, p2, Lbfl;->mSize:I

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Result buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    const-string v0, "SnapMediaDownloadHandler"

    invoke-static {v0, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lalr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p3, v2, v0}, Lalr;->a(Luc;Ljava/lang/Exception;I)V

    .line 59
    return-void

    .line 47
    :cond_2
    :try_start_1
    const-string v0, "Content-Type"

    invoke-virtual {p3, v0}, Luc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "application/zip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lalr;->a(Lbfl;)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lalr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    iget-object v0, p0, Lalr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p2, :cond_7

    iget v1, p2, Lbfl;->mSize:I

    if-lez v1, :cond_7

    iget v1, p2, Lbfl;->mSize:I

    new-array v1, v1, [B

    iget-object v3, p2, Lbfl;->mBuffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Lbfl;->mSize:I

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laje;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v1, v0}, Lalr;->a([BLaje;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lalr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    const-string v2, "SnapMediaDownloadHandler"

    const-string v5, "Failed download for %s (%s), skipping caching"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object p3, v6, v1

    invoke-static {v2, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p3, Luc;->mCaughtException:Ljava/lang/Exception;

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    goto :goto_2
.end method

.method public abstract a(Luc;Ljava/lang/Exception;I)V
.end method

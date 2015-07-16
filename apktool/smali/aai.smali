.class public abstract Laai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalw$a;


# instance fields
.field private final a:Ljava/util/Map;
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

.field private final b:Laxn;


# direct methods
.method private constructor <init>(Laxn;Ljava/util/Map;)V
    .locals 1
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxn;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Laai;->a:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    iput-object v0, p0, Laai;->b:Laxn;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lchc;
        .end annotation
    .end param
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
    .line 36
    sget-object v0, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-direct {p0, v0, p1}, Laai;-><init>(Laxn;Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method private a(Lbgl;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 97
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lbgl;->mBuffer:[B

    iget v3, p1, Lbgl;->mSize:I

    invoke-direct {v0, v1, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    const/4 v0, 0x0

    move-object v1, v0

    .line 101
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-static {v2}, Lek;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 103
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    iget-object v0, p0, Laai;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 107
    :try_start_1
    array-length v3, v4

    invoke-direct {p0, v4, v3, v0}, Laai;->a([BILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    move-object v1, v0

    .line 111
    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    invoke-static {v2}, Lbgo;->a(Ljava/io/Closeable;)V

    .line 120
    if-eqz v1, :cond_2

    .line 121
    throw v1

    .line 123
    :cond_2
    return-void
.end method

.method private a([BILjava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Laai;->b:Laxn;

    invoke-virtual {v0, p3, p1, p2}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(Laly;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCanceled has not been implemented for snap media."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Laly;Lbgl;Lus;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p2, Lbgl;->mBuffer:[B

    if-eqz v0, :cond_0

    iget v0, p2, Lbgl;->mSize:I

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Result buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 61
    :cond_1
    :goto_0
    iget-object v0, p0, Laai;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Laai;->a(I)V

    .line 62
    return-void

    .line 50
    :cond_2
    :try_start_1
    const-string v0, "Content-Type"

    invoke-virtual {p3, v0}, Lus;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "application/zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Laai;->a(Lbgl;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Laai;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    iget-object v0, p0, Laai;->a:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Lbgl;->mBuffer:[B

    iget v2, p2, Lbgl;->mSize:I

    invoke-direct {p0, v1, v2, v0}, Laai;->a([BILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :cond_5
    iget-object v0, p0, Laai;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p3, v4, v1

    goto :goto_2
.end method

.class public final Lclq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclo;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/ClassLoader;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lclq;-><init>(Ljava/lang/String;B)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No resource path provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lclq;->a:Ljava/io/File;

    .line 115
    iput-object p1, p0, Lclq;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lclq;->c:Ljava/lang/ClassLoader;

    .line 123
    const-string v0, "ZoneInfoMap"

    invoke-direct {p0, v0}, Lclq;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lclq;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lclq;->d:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 254
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    :try_start_0
    invoke-static {v1, v0}, Lclq;->a(Ljava/io/DataInputStream;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    :goto_0
    const-string v1, "UTC"

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lchl;->a:Lchl;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    :goto_1
    throw v0

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/io/DataInputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 276
    new-array v3, v2, [Ljava/lang/String;

    move v1, v0

    .line 277
    :goto_0
    if-ge v1, v2, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 283
    :goto_1
    if-ge v0, v1, :cond_1

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aget-object v4, v3, v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt zone info map"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lclq;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lclq;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 215
    :cond_0
    return-object v0

    .line 200
    :cond_1
    iget-object v0, p0, Lclq;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v0, p0, Lclq;->c:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lclq;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 206
    :goto_0
    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Resource not found: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lclq;->c:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lclq;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_2
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_3
    const-string v0, "system"

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Lchl;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 225
    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lclq;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 228
    :try_start_1
    instance-of v1, v2, Ljava/io/DataInput;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/io/DataInput;

    move-object v1, v0

    invoke-static {v1, p1}, Lclk;->a(Ljava/io/DataInput;Ljava/lang/String;)Lchl;

    move-result-object v1

    .line 229
    :goto_0
    iget-object v4, p0, Lclq;->d:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    if-eqz v2, :cond_0

    .line 238
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    :cond_0
    :goto_1
    return-object v1

    .line 228
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, p1}, Lclk;->a(Ljava/io/DataInput;Ljava/lang/String;)Lchl;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 233
    iget-object v1, p0, Lclq;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    if-eqz v2, :cond_2

    .line 238
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    move-object v1, v3

    .line 241
    goto :goto_1

    .line 236
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 237
    :goto_4
    if-eqz v2, :cond_3

    .line 238
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 241
    :cond_3
    :goto_5
    throw v1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_5

    .line 236
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 231
    :catch_4
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lchl;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    :goto_0
    if-nez p1, :cond_1

    move-object v0, v1

    .line 158
    :cond_0
    :goto_1
    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lclq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    move-object v0, v1

    .line 142
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    invoke-direct {p0, p1}, Lclq;->c(Ljava/lang/String;)Lchl;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_3
    instance-of v2, v0, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_4

    .line 152
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchl;

    .line 154
    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lclq;->c(Ljava/lang/String;)Lchl;

    move-result-object v0

    goto :goto_1

    .line 162
    :cond_4
    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_0
.end method

.method public final a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lclq;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

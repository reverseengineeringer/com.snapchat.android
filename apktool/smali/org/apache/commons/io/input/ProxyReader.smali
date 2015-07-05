.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method protected beforeRead(I)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 256
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 55
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 57
    if-eq v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 57
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    move v0, v1

    .line 61
    goto :goto_1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 1

    .prologue
    .line 115
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 121
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([C)I
    .locals 1

    .prologue
    .line 74
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 80
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([CII)I
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 101
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 137
    :goto_0
    return-wide v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 137
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

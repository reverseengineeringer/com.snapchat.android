.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 95
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 96
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 97
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    .line 98
    return-void
.end method

.method private doEndOfFile()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 315
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 129
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 144
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    return v0
.end method

.method protected processChar()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected processChars([CII)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    goto :goto_0
.end method

.method public read([C)I
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 4

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 214
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p3

    .line 223
    :goto_0
    return p3

    .line 216
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 218
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 219
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 220
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 222
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 240
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 243
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marked position ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 268
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    int-to-long p1, v0

    .line 276
    :cond_1
    :goto_0
    return-wide p1

    .line 270
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 273
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 274
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    goto :goto_0
.end method

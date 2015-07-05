.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
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

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 95
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 96
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 97
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    .line 98
    return-void
.end method

.method private doEndOfFile()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 332
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 335
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long/2addr v0, v2

    .line 126
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 129
    const v0, 0x7fffffff

    goto :goto_0

    .line 131
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 145
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 146
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 161
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 231
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p3

    .line 240
    :goto_0
    return p3

    .line 233
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 235
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 236
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 237
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 239
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 257
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 260
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marked position ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 285
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    int-to-long p1, v0

    .line 293
    :cond_1
    :goto_0
    return-wide p1

    .line 287
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 289
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 290
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 291
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    goto :goto_0
.end method

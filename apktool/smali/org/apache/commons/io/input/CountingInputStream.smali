.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected declared-synchronized afterRead(I)V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    .line 89
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The byte count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too large to be converted to an int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 139
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-wide v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetCount()I
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    .line 107
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The byte count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too large to be converted to an int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-wide v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

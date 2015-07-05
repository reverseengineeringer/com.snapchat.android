.class public Leu;
.super Lew;
.source "SourceFile"

# interfaces
.implements Las;


# instance fields
.field protected largeBox:Z

.field private offset:J

.field parent:Lau;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lew;-><init>()V

    .line 41
    iput-object p1, p0, Leu;->type:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Leu;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {p0, p1}, Leu;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 89
    return-void
.end method

.method protected getHeader()Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 67
    iget-boolean v0, p0, Leu;->largeBox:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu;->getSize()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 68
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v4, v0, v5

    iget-object v1, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    invoke-virtual {p0}, Leu;->getSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lap;->a(Ljava/nio/ByteBuffer;J)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 76
    return-object v0

    .line 72
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Leu;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Leu;->getSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lap;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Leu;->offset:J

    return-wide v0
.end method

.method public getParent()Lau;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Leu;->parent:Lau;

    return-object v0
.end method

.method public getSize()J
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p0}, Leu;->getContainerSize()J

    move-result-wide v2

    .line 58
    iget-boolean v0, p0, Leu;->largeBox:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, v2

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Leu;->type:Ljava/lang/String;

    return-object v0
.end method

.method public initContainer(Lex;JLal;)V
    .locals 6

    .prologue
    .line 92
    iput-object p1, p0, Leu;->dataSource:Lex;

    .line 93
    invoke-interface {p1}, Lex;->b()J

    move-result-wide v0

    iput-wide v0, p0, Leu;->parsePosition:J

    .line 94
    iget-wide v2, p0, Leu;->parsePosition:J

    iget-boolean v0, p0, Leu;->largeBox:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    const-wide v4, 0x100000000L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Leu;->startPosition:J

    .line 95
    invoke-interface {p1}, Lex;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lex;->a(J)V

    .line 96
    invoke-interface {p1}, Lex;->b()J

    move-result-wide v0

    iput-wide v0, p0, Leu;->endPosition:J

    .line 97
    iput-object p4, p0, Leu;->boxParser:Lal;

    .line 98
    return-void

    .line 94
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public parse(Lex;Ljava/nio/ByteBuffer;JLal;)V
    .locals 5

    .prologue
    .line 80
    invoke-interface {p1}, Lex;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Leu;->offset:J

    .line 81
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Leu;->largeBox:Z

    .line 82
    invoke-virtual {p0, p1, p3, p4, p5}, Leu;->initContainer(Lex;JLal;)V

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParent(Lau;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Leu;->parent:Lau;

    .line 54
    return-void
.end method

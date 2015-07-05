.class Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilePart"
.end annotation


# instance fields
.field private currentLastBytePos:I

.field private final data:[B

.field private leftOver:[B

.field private final no:J

.field final synthetic this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    .line 202
    if-eqz p5, :cond_0

    array-length v0, p5

    :goto_0
    add-int/2addr v0, p4

    .line 203
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    .line 204
    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 207
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_1

    .line 208
    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 209
    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-virtual {v0, v2, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 210
    if-eq v0, p4, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Count of requested bytes and actually read bytes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 202
    goto :goto_0

    .line 215
    :cond_1
    if-eqz p5, :cond_2

    .line 216
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    array-length v2, p5

    invoke-static {p5, v1, v0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v0

    return-object v0
.end method

.method private createLeftOver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    add-int/lit8 v0, v0, 0x1

    .line 312
    if-lez v0, :cond_0

    .line 314
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    .line 315
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    .line 320
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    goto :goto_0
.end method

.method private getNewLineMatchByteCount([BI)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B
    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B

    move-result-object v6

    array-length v7, v6

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, v6, v5

    .line 332
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    :goto_1
    if-ltz v3, :cond_1

    .line 333
    add-int v0, p2, v3

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v0, v9

    .line 334
    if-ltz v0, :cond_0

    aget-byte v0, p1, v0

    aget-byte v9, v8, v3

    if-ne v0, v9, :cond_0

    move v0, v1

    :goto_2
    and-int/2addr v4, v0

    .line 332
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 334
    goto :goto_2

    .line 336
    :cond_1
    if-eqz v4, :cond_3

    .line 337
    array-length v2, v8

    .line 340
    :cond_2
    return v2

    .line 330
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    .line 258
    iget-wide v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 260
    :goto_0
    iget v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    .line 261
    :cond_0
    if-ltz v3, :cond_5

    .line 263
    if-nez v0, :cond_2

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I
    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 266
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    move-object v1, v2

    .line 293
    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-eqz v0, :cond_6

    .line 300
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
    invoke-static {v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 301
    iput-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    .line 304
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 258
    goto :goto_0

    .line 271
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->getNewLineMatchByteCount([BI)I

    move-result v4

    if-lez v4, :cond_4

    .line 272
    add-int/lit8 v5, v3, 0x1

    .line 273
    iget v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    .line 275
    if-gez v6, :cond_3

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected negative line length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_3
    new-array v7, v6, [B

    .line 279
    iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-static {v8, v5, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
    invoke-static {v5}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v7, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 283
    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    goto :goto_1

    .line 288
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I
    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 291
    if-gez v3, :cond_0

    .line 292
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 230
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    if-ltz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 236
    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    iget-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I
    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    .line 243
    :goto_0
    return-object v0

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected leftover of the last block: leftOverOfThisFilePart="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    # getter for: Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;
    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

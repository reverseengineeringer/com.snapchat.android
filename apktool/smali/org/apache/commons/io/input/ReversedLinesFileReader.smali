.class public Lorg/apache/commons/io/input/ReversedLinesFileReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ReversedLinesFileReader$1;,
        Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    }
.end annotation


# instance fields
.field private final avoidNewlineSplitBufferSize:I

.field private final blockSize:I

.field private final byteDecrement:I

.field private currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final newLineSequences:[[B

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private final totalBlockCount:J

.field private final totalByteLength:J

.field private trailingNewlineOfFileSkipped:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 63
    const/16 v0, 0x1000

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 80
    iput p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    .line 81
    iput-object p3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    .line 83
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    rem-long/2addr v0, v2

    long-to-int v4, v0

    .line 86
    if-lez v4, :cond_1

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    .line 94
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 97
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    .line 100
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 102
    iput v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    .line 123
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const-string v1, "\r\n"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "\r"

    invoke-virtual {v1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    aput-object v1, v0, v9

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    .line 125
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    aget-object v0, v0, v8

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    .line 126
    return-void

    .line 89
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v2, p2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    .line 90
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v4, p2

    .line 91
    goto :goto_0

    .line 103
    :cond_2
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 106
    iput v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 107
    :cond_3
    const-string v1, "Shift_JIS"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 110
    iput v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 111
    :cond_4
    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eq v0, v1, :cond_5

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 114
    :cond_5
    iput v9, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_1

    .line 115
    :cond_6
    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 116
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_7
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported yet (feel free to submit a patch)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return v0
.end method

.method static synthetic access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 182
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    if-nez v0, :cond_0

    .line 157
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    invoke-static {v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 158
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    # invokes: Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    if-nez v1, :cond_1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_1
    return-object v0
.end method

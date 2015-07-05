.class public Lorg/apache/commons/io/input/XmlStreamReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field private static final BOMS:[Lorg/apache/commons/io/ByteOrderMark;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final EBCDIC:Ljava/lang/String; = "CP1047"

.field public static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

.field private static final HTTP_EX_2:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

.field private static final HTTP_EX_3:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

.field private static final RAW_EX_1:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

.field private static final RAW_EX_2:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field private static final UTF_32:Ljava/lang/String; = "UTF-32"

.field private static final UTF_32BE:Ljava/lang/String; = "UTF-32BE"

.field private static final UTF_32LE:Ljava/lang/String; = "UTF-32LE"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;

.field private final reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;

    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    const-string v2, "UTF-8"

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    const-string v2, "UTF-16BE"

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    const-string v2, "UTF-16LE"

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    const-string v2, "UTF-32BE"

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    const-string v2, "UTF-32LE"

    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "CP1047"

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    .line 668
    const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 692
    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 96
    nop

    :array_0
    .array-data 4
        0x3c
        0x3f
        0x78
        0x6d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3c
        0x0
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0x3c
        0x0
        0x3f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
    .end array-data

    :array_4
    .array-data 4
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x4c
        0x6f
        0xa7
        0x94
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 336
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 337
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 338
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 339
    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 216
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 217
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 218
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 219
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 263
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 264
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 268
    new-instance v2, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v1, 0x0

    sget-object v4, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 269
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 270
    instance-of v3, p1, Ljava/net/HttpURLConnection;

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 275
    :goto_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    .line 276
    return-void

    .line 273
    :cond_1
    invoke-direct {p0, v2, v1, v5}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method private doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 452
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-static {p2, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move v5, p4

    .line 456
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    if-eqz p4, :cond_0

    .line 460
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_0
    throw v0
.end method

.method private doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 478
    if-eqz p1, :cond_1

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/xml"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getBomEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlGuessEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception p2

    .line 488
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    .line 489
    if-nez v0, :cond_2

    .line 490
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_2
    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "UTF-8"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    goto :goto_0
.end method

.method private doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {p2, v1}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    if-eqz p3, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_0
    throw v0
.end method

.method static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 679
    .line 680
    if-eqz p0, :cond_0

    .line 681
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 682
    if-ltz v1, :cond_0

    .line 683
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 684
    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_0
    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 685
    goto :goto_0
.end method

.method static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    if-eqz p0, :cond_1

    .line 657
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 658
    if-ltz v0, :cond_0

    .line 659
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 663
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_1
    return-object v0
.end method

.method private static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/16 v6, 0x1000

    const/4 v3, -0x1

    .line 706
    .line 707
    if-eqz p1, :cond_4

    .line 708
    new-array v9, v6, [B

    .line 709
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 712
    invoke-virtual {p0, v9, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v3

    move v4, v1

    move v5, v6

    move v7, v8

    move-object v1, v0

    .line 715
    :goto_0
    if-eq v4, v3, :cond_0

    if-ne v2, v3, :cond_0

    if-ge v7, v6, :cond_0

    .line 716
    add-int/2addr v7, v4

    .line 717
    sub-int/2addr v5, v4

    .line 718
    invoke-virtual {p0, v9, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 719
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9, v8, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 720
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_0

    .line 722
    :cond_0
    if-ne v2, v3, :cond_2

    .line 723
    if-ne v4, v3, :cond_1

    .line 724
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of XML stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XML prolog or ROOT element not found on first "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_2
    if-lez v7, :cond_4

    .line 733
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 734
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 736
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 737
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 738
    :goto_1
    if-eqz v1, :cond_3

    .line 739
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 742
    :cond_3
    sget-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 744
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 749
    :cond_4
    return-object v0
.end method

.method static isAppXml(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 760
    if-eqz p0, :cond_1

    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-dtd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTextXml(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 775
    if-eqz p0, :cond_1

    const-string v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 584
    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    move-object v3, p4

    .line 645
    :cond_0
    :goto_0
    return-object v3

    .line 589
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isAppXml(Ljava/lang/String;)Z

    move-result v0

    .line 592
    invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isTextXml(Ljava/lang/String;)Z

    move-result v1

    .line 595
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 596
    const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2
    if-nez v3, :cond_5

    .line 602
    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 605
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v3, "US-ASCII"

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    goto :goto_0

    .line 610
    :cond_5
    const-string v0, "UTF-16BE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "UTF-16LE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    :cond_6
    if-eqz p2, :cond_0

    .line 612
    const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 613
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_7
    const-string v0, "UTF-16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 620
    if-eqz p2, :cond_8

    const-string v0, "UTF-16"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v3, p2

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_8
    const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 624
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_9
    const-string v0, "UTF-32BE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "UTF-32LE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 629
    :cond_a
    if-eqz p2, :cond_0

    .line 630
    const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 631
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_b
    const-string v0, "UTF-32"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    if-eqz p2, :cond_c

    const-string v0, "UTF-32"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v3, p2

    .line 639
    goto/16 :goto_0

    .line 641
    :cond_c
    const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    aput-object p4, v1, v8

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 642
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    if-nez p1, :cond_6

    .line 512
    if-eqz p2, :cond_0

    if-nez p3, :cond_3

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "UTF-8"

    .line 558
    :cond_1
    :goto_0
    return-object p1

    .line 513
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    goto :goto_0

    .line 515
    :cond_3
    const-string v0, "UTF-16"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UTF-16BE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "UTF-16LE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object p1, p2

    .line 517
    goto :goto_0

    :cond_5
    move-object p1, p3

    .line 519
    goto :goto_0

    .line 523
    :cond_6
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 524
    if-eqz p2, :cond_7

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 525
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_7
    if-eqz p3, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_8
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 537
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 538
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_a
    if-eqz p3, :cond_1

    const-string v0, "UTF-16"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_b
    const-string v0, "UTF-32BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "UTF-32LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 550
    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 551
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_d
    if-eqz p3, :cond_1

    const-string v0, "UTF-32"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 556
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_e
    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 411
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public read([CII)I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

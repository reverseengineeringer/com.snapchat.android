.class public Lorg/apache/commons/io/output/FileWriterWithEncoding;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 155
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 181
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 207
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 130
    return-void
.end method

.method private static initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File is missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    if-nez p1, :cond_1

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Encoding is missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    .line 233
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :try_start_1
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 256
    :goto_0
    return-object v0

    .line 236
    :cond_2
    instance-of v0, p1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :goto_1
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 243
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 244
    if-nez v3, :cond_3

    .line 245
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 247
    :cond_3
    throw v0

    .line 239
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    :goto_2
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 250
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 251
    if-nez v3, :cond_5

    .line 252
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 254
    :cond_5
    throw v0

    .line 248
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 241
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 330
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 321
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 268
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 312
    return-void
.end method

.method public write([C)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 278
    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 290
    return-void
.end method

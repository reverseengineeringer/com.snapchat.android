.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DIR_SEPARATOR:C

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field private static final EOF:I = -0x1

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"

.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field private static SKIP_BYTE_BUFFER:[B

.field private static SKIP_CHAR_BUFFER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 117
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>(I)V

    .line 118
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static close(Ljava/net/URLConnection;)V
    .locals 1

    .prologue
    .line 164
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 165
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 302
    if-eqz p0, :cond_0

    .line 303
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 246
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 274
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    return-void
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 193
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 220
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1

    .prologue
    .line 400
    if-eqz p0, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 334
    if-eqz p0, :cond_0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/nio/channels/Selector;)V
    .locals 1

    .prologue
    .line 367
    if-eqz p0, :cond_0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 2179
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 2180
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 2182
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 2183
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 2186
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2187
    :goto_0
    if-eq v3, v0, :cond_3

    .line 2188
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 2189
    if-eq v0, v2, :cond_2

    move v0, v1

    .line 2196
    :goto_1
    return v0

    .line 2192
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 2195
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2196
    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 2217
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 2218
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v3

    .line 2220
    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v1

    .line 2221
    :goto_0
    if-eq v5, v1, :cond_2

    .line 2222
    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v4

    .line 2223
    if-eq v1, v4, :cond_1

    .line 2230
    :cond_0
    :goto_1
    return v0

    .line 2226
    :cond_1
    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_0

    .line 2229
    :cond_2
    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v1

    .line 2230
    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 5

    .prologue
    .line 2249
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v2

    .line 2250
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v3

    .line 2252
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2255
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2256
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2258
    :cond_0
    if-nez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4

    .prologue
    .line 1744
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1745
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1746
    const/4 v0, -0x1

    .line 1748
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4

    .prologue
    .line 1957
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1958
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1959
    const/4 v0, -0x1

    .line 1961
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 1886
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 1887
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1933
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 1934
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 1906
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1907
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1908
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 2097
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2098
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2158
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2159
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 2124
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2125
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 2128
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2129
    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    .prologue
    .line 1769
    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
    .locals 8

    .prologue
    .line 1820
    const/16 v0, 0x1000

    new-array v6, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
    .locals 8

    .prologue
    .line 1845
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1846
    invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    .line 1848
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 1849
    const-wide/16 v0, 0x0

    .line 1866
    :goto_0
    return-wide v0

    .line 1851
    :cond_1
    array-length v1, p6

    .line 1853
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_4

    int-to-long v2, v1

    cmp-long v0, p4, v2

    if-gez v0, :cond_4

    .line 1854
    long-to-int v0, p4

    .line 1857
    :goto_1
    const-wide/16 v2, 0x0

    .line 1858
    :cond_2
    :goto_2
    if-lez v0, :cond_3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p6, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1859
    const/4 v4, 0x0

    invoke-virtual {p1, p6, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1860
    int-to-long v4, v5

    add-long/2addr v2, v4

    .line 1861
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_2

    .line 1863
    sub-long v4, p4, v2

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_2

    :cond_3
    move-wide v0, v2

    .line 1866
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4

    .prologue
    .line 1790
    const-wide/16 v0, 0x0

    .line 1791
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1793
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1794
    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    .line 1796
    :cond_0
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2

    .prologue
    .line 1980
    const/16 v0, 0x1000

    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J
    .locals 8

    .prologue
    .line 2029
    const/16 v0, 0x1000

    new-array v6, v0, [C

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J
    .locals 12

    .prologue
    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    .line 2053
    cmp-long v2, p2, v4

    if-lez v2, :cond_0

    .line 2054
    invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/Reader;J)V

    .line 2056
    :cond_0
    cmp-long v2, p4, v4

    if-nez v2, :cond_2

    move-wide v2, v4

    .line 2073
    :cond_1
    return-wide v2

    .line 2059
    :cond_2
    move-object/from16 v0, p6

    array-length v2, v0

    .line 2060
    cmp-long v3, p4, v4

    if-lez v3, :cond_3

    move-object/from16 v0, p6

    array-length v3, v0

    int-to-long v6, v3

    cmp-long v3, p4, v6

    if-gez v3, :cond_3

    .line 2061
    move-wide/from16 v0, p4

    long-to-int v2, v0

    :cond_3
    move v6, v2

    move-wide v2, v4

    .line 2065
    :cond_4
    :goto_0
    if-lez v6, :cond_1

    const/4 v7, -0x1

    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v10, v6}, Ljava/io/Reader;->read([CII)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 2066
    move-object/from16 v0, p6

    invoke-virtual {p1, v0, v10, v8}, Ljava/io/Writer;->write([CII)V

    .line 2067
    int-to-long v8, v8

    add-long/2addr v2, v8

    .line 2068
    cmp-long v7, p4, v4

    if-lez v7, :cond_4

    .line 2070
    sub-long v6, p4, v2

    move-object/from16 v0, p6

    array-length v8, v0

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .locals 4

    .prologue
    .line 1999
    const-wide/16 v0, 0x0

    .line 2000
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2002
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 2003
    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    .line 2005
    :cond_0
    return-wide v0
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    .locals 1

    .prologue
    .line 1139
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Lorg/apache/commons/io/LineIterator;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;
    .locals 1

    .prologue
    .line 1068
    new-instance v0, Lorg/apache/commons/io/LineIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[B)I
    .locals 2

    .prologue
    .line 2476
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    .line 2448
    if-gez p3, :cond_0

    .line 2449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p3

    .line 2452
    :goto_0
    if-lez v0, :cond_1

    .line 2453
    sub-int v1, p3, v0

    .line 2454
    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2455
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 2456
    sub-int/2addr v0, v1

    .line 2459
    goto :goto_0

    .line 2460
    :cond_1
    sub-int v0, p3, v0

    return v0
.end method

.method public static read(Ljava/io/Reader;[C)I
    .locals 2

    .prologue
    .line 2430
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result v0

    return v0
.end method

.method public static read(Ljava/io/Reader;[CII)I
    .locals 3

    .prologue
    .line 2402
    if-gez p3, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p3

    .line 2406
    :goto_0
    if-lez v0, :cond_1

    .line 2407
    sub-int v1, p3, v0

    .line 2408
    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 2409
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 2410
    sub-int/2addr v0, v1

    .line 2413
    goto :goto_0

    .line 2414
    :cond_1
    sub-int v0, p3, v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2

    .prologue
    .line 2558
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[BII)V

    .line 2559
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4

    .prologue
    .line 2537
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 2538
    if-eq v0, p3, :cond_0

    .line 2539
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length to read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2541
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/Reader;[C)V
    .locals 2

    .prologue
    .line 2517
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/Reader;[CII)V

    .line 2518
    return-void
.end method

.method public static readFully(Ljava/io/Reader;[CII)V
    .locals 4

    .prologue
    .line 2496
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result v0

    .line 2497
    if-eq v0, p3, :cond_0

    .line 2498
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length to read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2500
    :cond_0
    return-void
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1011
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 987
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1031
    :goto_0
    if-eqz v0, :cond_0

    .line 1032
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1035
    :cond_0
    return-object v2
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 2278
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 2279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skip count must be non-negative, actual: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2286
    :cond_0
    sget-object v0, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    if-nez v0, :cond_1

    .line 2287
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    :cond_1
    move-wide v0, p1

    .line 2290
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2291
    sget-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x800

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v2, v2

    .line 2292
    cmp-long v4, v2, v6

    if-ltz v4, :cond_2

    .line 2293
    sub-long/2addr v0, v2

    .line 2296
    goto :goto_0

    .line 2297
    :cond_2
    sub-long v0, p1, v0

    return-wide v0
.end method

.method public static skip(Ljava/io/Reader;J)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 2317
    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    .line 2318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skip count must be non-negative, actual: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2325
    :cond_0
    sget-object v0, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    if-nez v0, :cond_1

    .line 2326
    const/16 v0, 0x800

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    :cond_1
    move-wide v0, p1

    .line 2329
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 2330
    sget-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    const/4 v3, 0x0

    const-wide/16 v4, 0x800

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    int-to-long v2, v2

    .line 2331
    cmp-long v4, v2, v6

    if-ltz v4, :cond_2

    .line 2332
    sub-long/2addr v0, v2

    .line 2335
    goto :goto_0

    .line 2336
    :cond_2
    sub-long v0, p1, v0

    return-wide v0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5

    .prologue
    .line 2355
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bytes to skip must not be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2358
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 2359
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 2360
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bytes to skip: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2362
    :cond_1
    return-void
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 5

    .prologue
    .line 2380
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/Reader;J)J

    move-result-wide v0

    .line 2381
    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 2382
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chars to skip: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2384
    :cond_0
    return-void
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 431
    invoke-static {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 444
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 462
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 463
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 504
    if-gez p1, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size must be equal or greater than zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    if-nez p1, :cond_2

    .line 509
    new-array v0, v1, [B

    .line 524
    :cond_1
    return-object v0

    .line 512
    :cond_2
    new-array v0, p1, [B

    .line 516
    :goto_0
    if-ge v1, p1, :cond_3

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 517
    add-int/2addr v1, v2

    goto :goto_0

    .line 520
    :cond_3
    if-eq v1, p1, :cond_1

    .line 521
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected readed size. current: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", excepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(Ljava/io/InputStream;J)[B
    .locals 3

    .prologue
    .line 484
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size cannot be greater than Integer max value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    long-to-int v0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 584
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
    .locals 1

    .prologue
    .line 558
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 559
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 560
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/net/URI;)[B
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URL;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/net/URL;)[B
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 635
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URLConnection;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 637
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V

    throw v1
.end method

.method public static toByteArray(Ljava/net/URLConnection;)[B
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 656
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 658
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 1

    .prologue
    .line 723
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
    .locals 1

    .prologue
    .line 697
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 698
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 699
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 1

    .prologue
    .line 739
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 740
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 741
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1152
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1185
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1198
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 1231
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1232
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 1211
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V

    .line 778
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 779
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V

    .line 819
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 820
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 848
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 896
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 898
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 932
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 949
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1432
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1433
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1474
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1475
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 1449
    if-eqz p0, :cond_0

    .line 1450
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1452
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 1412
    if-eqz p0, :cond_0

    .line 1413
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V

    .line 1415
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1509
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1510
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1552
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1553
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 1526
    if-eqz p0, :cond_0

    .line 1527
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1529
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 1489
    if-eqz p0, :cond_0

    .line 1490
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1492
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1617
    if-eqz p0, :cond_0

    .line 1618
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1620
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1570
    if-eqz p0, :cond_0

    .line 1571
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1573
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 1249
    if-eqz p0, :cond_0

    .line 1250
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 1252
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1

    .prologue
    .line 1268
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 1269
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1312
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 1313
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 1286
    if-eqz p0, :cond_0

    .line 1287
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1289
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1350
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1351
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1397
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1398
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 1369
    if-eqz p0, :cond_0

    .line 1370
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1372
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0

    .prologue
    .line 1329
    if-eqz p0, :cond_0

    .line 1330
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 1332
    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1639
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1692
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1693
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1656
    if-nez p0, :cond_1

    .line 1669
    :cond_0
    return-void

    .line 1659
    :cond_1
    if-nez p1, :cond_2

    .line 1660
    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1662
    :cond_2
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1663
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1664
    if-eqz v2, :cond_3

    .line 1665
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1667
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1708
    if-nez p0, :cond_1

    .line 1720
    :cond_0
    return-void

    .line 1711
    :cond_1
    if-nez p1, :cond_2

    .line 1712
    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1714
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1715
    if-eqz v1, :cond_3

    .line 1716
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1718
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

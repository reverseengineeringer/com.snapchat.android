.class public final Lao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lff;

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lff;

    invoke-direct {v0}, Lff;-><init>()V

    sput-object v0, Lao;->a:Lff;

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lao;->b:[B

    return-void
.end method

.method private static a(B)I
    .locals 0

    .prologue
    .line 72
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)J
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    .line 39
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 40
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 42
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [B

    .line 95
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-static {v0}, Lar;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lao;->a(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lao;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lao;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public static c(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lao;->a(B)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/nio/ByteBuffer;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 101
    invoke-static {p0}, Lao;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v0, v4

    .line 104
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I don\'t know how to deal with UInt64! long is not sufficient and I don\'t want to use BigInt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {p0}, Lao;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 109
    return-wide v0
.end method

.method public static e(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lao;->b:[B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 165
    sget-object v0, Lao;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 166
    sget-object v1, Lao;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 167
    sget-object v1, Lao;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 168
    sget-object v1, Lao;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    .line 171
    sget-object v0, Lao;->a:Lff;

    iget-object v0, v0, Lff;->a:[Lff$a;

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v0, v0, v2

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 177
    :goto_2
    return-object v0

    .line 171
    :cond_0
    iget v2, v0, Lff$a;->a:I

    if-ne v2, v1, :cond_1

    iget-object v0, v0, Lff$a;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lff$a;->d:Lff$a;

    goto :goto_0

    .line 175
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lao;->b:[B

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 176
    sget-object v2, Lao;->a:Lff;

    invoke-virtual {v2, v1, v0}, Lff;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

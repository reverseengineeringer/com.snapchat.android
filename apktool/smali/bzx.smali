.class public final Lbzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:[C

.field public static final b:Lbzx;


# instance fields
.field public final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lbzx;->a:[C

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lbzx;->a([B)Lbzx;

    move-result-object v0

    sput-object v0, Lbzx;->b:Lbzx;

    return-void

    .line 45
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lbzx;->c:[B

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbzx;
    .locals 2

    .prologue
    .line 83
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v0, Lbzx;

    sget-object v1, Lcal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lbzx;-><init>([B)V

    .line 85
    iput-object p0, v0, Lbzx;->e:Ljava/lang/String;

    .line 86
    return-object v0
.end method

.method public static varargs a([B)Lbzx;
    .locals 2

    .prologue
    .line 64
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v1, Lbzx;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lbzx;-><init>([B)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lbzx;
    .locals 2

    .prologue
    .line 136
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-static {p0}, Lbzt;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    new-instance v0, Lbzx;

    invoke-direct {v0, v1}, Lbzx;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lbzx;
    .locals 2

    .prologue
    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lbzx;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lbzx;->a([B)Lbzx;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lbzx;->e:Ljava/lang/String;

    .line 93
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbzx;->c:[B

    sget-object v2, Lcal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lbzx;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lbzx;->c:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    .line 145
    iget-object v3, p0, Lbzx;->c:[B

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    .line 146
    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lbzx;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    .line 147
    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lbzx;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final c()Lbzx;
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x41

    .line 198
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbzx;->c:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lbzx;->c:[B

    aget-byte v3, v0, v1

    .line 200
    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    .line 204
    iget-object v0, p0, Lbzx;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 205
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    .line 206
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 207
    aget-byte v2, v0, v1

    .line 208
    if-lt v2, v4, :cond_0

    if-gt v2, v5, :cond_0

    .line 209
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_1
    new-instance p0, Lbzx;

    invoke-direct {p0, v0}, Lbzx;-><init>([B)V

    .line 213
    :cond_2
    return-object p0

    .line 198
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final d()[B
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lbzx;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 324
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lbzx;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lbzx;

    iget-object v0, v0, Lbzx;->c:[B

    array-length v0, v0

    iget-object v3, p0, Lbzx;->c:[B

    array-length v3, v3

    if-ne v0, v3, :cond_2

    check-cast p1, Lbzx;

    iget-object v0, p0, Lbzx;->c:[B

    iget-object v3, p0, Lbzx;->c:[B

    array-length v3, v3

    iget-object v4, p1, Lbzx;->c:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    if-ltz v4, :cond_1

    array-length v4, v0

    sub-int/2addr v4, v3

    if-ltz v4, :cond_1

    iget-object v4, p1, Lbzx;->c:[B

    invoke-static {v4, v0, v3}, Lcal;->a([B[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lbzx;->d:I

    .line 331
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbzx;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lbzx;->d:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lbzx;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "ByteString[size=0]"

    .line 343
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lbzx;->c:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 340
    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lbzx;->c:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lbzx;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    const-string v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lbzx;->c:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "MD5"

    invoke-direct {p0, v2}, Lbzx;->c(Ljava/lang/String;)Lbzx;

    move-result-object v2

    invoke-virtual {v2}, Lbzx;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

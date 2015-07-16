.class public final Lclc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lclc;->a:D

    return-void
.end method

.method static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 353
    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method public static a(Ljava/lang/StringBuffer;I)V
    .locals 2

    .prologue
    .line 236
    if-gez p1, :cond_0

    .line 237
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 239
    neg-int p1, p1

    .line 245
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 246
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 247
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 251
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 252
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuffer;II)V
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/16 v4, 0x30

    .line 50
    if-gez p1, :cond_0

    .line 51
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 53
    neg-int p1, p1

    .line 62
    :cond_0
    if-ge p1, v1, :cond_4

    .line 63
    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    if-le p2, v1, :cond_2

    .line 56
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :goto_2
    return-void

    .line 66
    :cond_3
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 67
    :cond_4
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 68
    :goto_3
    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 69
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 74
    :cond_5
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 75
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 80
    :cond_6
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_7

    .line 81
    const/4 v0, 0x3

    .line 87
    :goto_4
    if-le p2, v0, :cond_9

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 82
    :cond_7
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 83
    const/4 v0, 0x4

    goto :goto_4

    .line 85
    :cond_8
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lclc;->a:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 90
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 357
    add-int/lit8 v0, p1, 0x20

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 365
    :goto_0
    if-gtz p1, :cond_1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_1
    return-object v0

    .line 362
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is too short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 373
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is malformed at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.class public final Lbzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbzv;
.implements Lbzw;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcag;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbzu;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 568
    iget-wide v0, p0, Lbzu;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 569
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    .line 590
    :cond_2
    :goto_0
    return-object v0

    .line 575
    :cond_3
    iget-object v1, p0, Lbzu;->a:Lcag;

    .line 576
    iget v0, v1, Lcag;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lcag;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 578
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbzu;->e(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 581
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcag;->a:[B

    iget v3, v1, Lcag;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 582
    iget v2, v1, Lcag;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lcag;->b:I

    .line 583
    iget-wide v2, p0, Lbzu;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lbzu;->b:J

    .line 585
    iget v2, v1, Lcag;->b:I

    iget v3, v1, Lcag;->c:I

    if-ne v2, v3, :cond_2

    .line 586
    invoke-virtual {v1}, Lcag;->a()Lcag;

    move-result-object v2

    iput-object v2, p0, Lbzu;->a:Lcag;

    .line 587
    invoke-static {v1}, Lcah;->a(Lcag;)V

    goto :goto_0
.end method

.method private c([B)V
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 655
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lbzu;->a([BII)I

    move-result v1

    .line 656
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 657
    :cond_0
    add-int/2addr v0, v1

    .line 658
    goto :goto_0

    .line 659
    :cond_1
    return-void
.end method

.method private k(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcal;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lbzu;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    :try_start_0
    iget-wide v0, p0, Lbzu;->b:J

    sget-object v2, Lcal;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lbzu;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private s()Lbzu;
    .locals 6

    .prologue
    .line 1242
    new-instance v1, Lbzu;

    invoke-direct {v1}, Lbzu;-><init>()V

    .line 1243
    iget-wide v2, p0, Lbzu;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1251
    :goto_0
    return-object v0

    .line 1245
    :cond_0
    new-instance v0, Lcag;

    iget-object v2, p0, Lbzu;->a:Lcag;

    invoke-direct {v0, v2}, Lcag;-><init>(Lcag;)V

    iput-object v0, v1, Lbzu;->a:Lcag;

    .line 1246
    iget-object v0, v1, Lbzu;->a:Lcag;

    iget-object v2, v1, Lbzu;->a:Lcag;

    iget-object v3, v1, Lbzu;->a:Lcag;

    iput-object v3, v2, Lcag;->g:Lcag;

    iput-object v3, v0, Lcag;->f:Lcag;

    .line 1247
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v0, v0, Lcag;->f:Lcag;

    :goto_1
    iget-object v2, p0, Lbzu;->a:Lcag;

    if-eq v0, v2, :cond_1

    .line 1248
    iget-object v2, v1, Lbzu;->a:Lcag;

    iget-object v2, v2, Lcag;->g:Lcag;

    new-instance v3, Lcag;

    invoke-direct {v3, v0}, Lcag;-><init>(Lcag;)V

    invoke-virtual {v2, v3}, Lcag;->a(Lcag;)Lcag;

    .line 1247
    iget-object v0, v0, Lcag;->f:Lcag;

    goto :goto_1

    .line 1250
    :cond_1
    iget-wide v2, p0, Lbzu;->b:J

    iput-wide v2, v1, Lbzu;->b:J

    move-object v0, v1

    .line 1251
    goto :goto_0
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 1157
    sget-object v0, Lcak;->b:Lcak;

    return-object v0
.end method

.method public final a([BII)I
    .locals 6

    .prologue
    .line 662
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 664
    iget-object v1, p0, Lbzu;->a:Lcag;

    .line 665
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 666
    :cond_1
    iget v0, v1, Lcag;->c:I

    iget v2, v1, Lcag;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 667
    iget-object v2, v1, Lcag;->a:[B

    iget v3, v1, Lcag;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    iget v2, v1, Lcag;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcag;->b:I

    .line 670
    iget-wide v2, p0, Lbzu;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lbzu;->b:J

    .line 672
    iget v2, v1, Lcag;->b:I

    iget v3, v1, Lcag;->c:I

    if-ne v2, v3, :cond_0

    .line 673
    invoke-virtual {v1}, Lcag;->a()Lcag;

    move-result-object v2

    iput-object v2, p0, Lbzu;->a:Lcag;

    .line 674
    invoke-static {v1}, Lcah;->a(Lcag;)V

    goto :goto_0
.end method

.method public final a(B)J
    .locals 2

    .prologue
    .line 1089
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lbzu;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(BJ)J
    .locals 12

    .prologue
    .line 1097
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_0
    iget-object v2, p0, Lbzu;->a:Lcag;

    .line 1100
    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    .line 1116
    :goto_0
    return-wide v0

    .line 1101
    :cond_1
    const-wide/16 v0, 0x0

    .line 1103
    :cond_2
    iget v3, v2, Lcag;->c:I

    iget v4, v2, Lcag;->b:I

    sub-int/2addr v3, v4

    .line 1104
    int-to-long v4, v3

    cmp-long v4, p2, v4

    if-ltz v4, :cond_3

    .line 1105
    int-to-long v4, v3

    sub-long/2addr p2, v4

    .line 1113
    :goto_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 1114
    iget-object v2, v2, Lcag;->f:Lcag;

    .line 1115
    iget-object v3, p0, Lbzu;->a:Lcag;

    if-ne v2, v3, :cond_2

    .line 1116
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1107
    :cond_3
    iget-object v6, v2, Lcag;->a:[B

    .line 1108
    iget v4, v2, Lcag;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget v7, v2, Lcag;->c:I

    int-to-long v8, v7

    :goto_2
    cmp-long v7, v4, v8

    if-gez v7, :cond_5

    .line 1109
    long-to-int v7, v4

    aget-byte v7, v6, v7

    if-ne v7, p1, :cond_4

    add-long/2addr v0, v4

    iget v2, v2, Lcag;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1108
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_2

    .line 1111
    :cond_5
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public final a(Lbzu;J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1080
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_1
    iget-wide v0, p0, Lbzu;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    .line 1085
    :goto_0
    return-wide p2

    .line 1083
    :cond_2
    iget-wide v0, p0, Lbzu;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lbzu;->b:J

    .line 1084
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lbzu;->a_(Lbzu;J)V

    goto :goto_0
.end method

.method public final a(Lcaj;)J
    .locals 6

    .prologue
    .line 817
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    const-wide/16 v0, 0x0

    .line 819
    :goto_0
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, Lcaj;->a(Lbzu;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 820
    add-long/2addr v0, v2

    goto :goto_0

    .line 822
    :cond_1
    return-wide v0
.end method

.method public final a(I)Lbzu;
    .locals 4

    .prologue
    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbzu;->d(I)Lcag;

    move-result-object v0

    .line 836
    iget-object v1, v0, Lcag;->a:[B

    iget v2, v0, Lcag;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcag;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 837
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    .line 838
    return-object p0
.end method

.method public final a(Lbzu;JJ)Lbzu;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 166
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-wide v0, p0, Lbzu;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 168
    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    .line 192
    :cond_1
    return-object p0

    .line 170
    :cond_2
    iget-wide v0, p1, Lbzu;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lbzu;->b:J

    .line 173
    iget-object v0, p0, Lbzu;->a:Lcag;

    .line 174
    :goto_0
    iget v1, v0, Lcag;->c:I

    iget v2, v0, Lcag;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    .line 175
    iget v1, v0, Lcag;->c:I

    iget v2, v0, Lcag;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 174
    iget-object v0, v0, Lcag;->f:Lcag;

    goto :goto_0

    .line 179
    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    .line 180
    new-instance v1, Lcag;

    invoke-direct {v1, v0}, Lcag;-><init>(Lcag;)V

    .line 181
    iget v2, v1, Lcag;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lcag;->b:I

    .line 182
    iget v2, v1, Lcag;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lcag;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcag;->c:I

    .line 183
    iget-object v2, p1, Lbzu;->a:Lcag;

    if-nez v2, :cond_4

    .line 184
    iput-object v1, v1, Lcag;->g:Lcag;

    iput-object v1, v1, Lcag;->f:Lcag;

    iput-object v1, p1, Lbzu;->a:Lcag;

    .line 188
    :goto_2
    iget v2, v1, Lcag;->c:I

    iget v1, v1, Lcag;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 179
    iget-object v0, v0, Lcag;->f:Lcag;

    move-wide p2, v6

    goto :goto_1

    .line 186
    :cond_4
    iget-object v2, p1, Lbzu;->a:Lcag;

    iget-object v2, v2, Lcag;->g:Lcag;

    invoke-virtual {v2, v1}, Lcag;->a(Lcag;)Lcag;

    goto :goto_2
.end method

.method public final a(Lbzx;)Lbzu;
    .locals 3

    .prologue
    .line 711
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p1, Lbzx;->c:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lbzx;->c:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lbzu;->b([BII)Lbzu;

    .line 713
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbzu;
    .locals 11

    .prologue
    const v10, 0xdfff

    const/16 v9, 0x80

    const/4 v1, 0x0

    .line 717
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_9

    .line 721
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 723
    if-ge v4, v9, :cond_2

    .line 724
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbzu;->d(I)Lcag;

    move-result-object v5

    .line 725
    iget-object v6, v5, Lcag;->a:[B

    .line 726
    iget v0, v5, Lcag;->c:I

    sub-int v7, v0, v2

    .line 727
    rsub-int v0, v7, 0x800

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 730
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    .line 734
    :goto_1
    if-ge v0, v8, :cond_1

    .line 735
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 736
    if-ge v4, v9, :cond_1

    .line 737
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    move v0, v2

    goto :goto_1

    .line 740
    :cond_1
    add-int v2, v0, v7

    iget v4, v5, Lcag;->c:I

    sub-int/2addr v2, v4

    .line 741
    iget v4, v5, Lcag;->c:I

    add-int/2addr v4, v2

    iput v4, v5, Lcag;->c:I

    .line 742
    iget-wide v4, p0, Lbzu;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbzu;->b:J

    move v2, v0

    .line 744
    goto :goto_0

    :cond_2
    const/16 v0, 0x800

    if-ge v4, v0, :cond_3

    .line 746
    shr-int/lit8 v0, v4, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 747
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 748
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 750
    :cond_3
    const v0, 0xd800

    if-lt v4, v0, :cond_4

    if-le v4, v10, :cond_5

    .line 752
    :cond_4
    shr-int/lit8 v0, v4, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 753
    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 754
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 755
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 760
    :cond_5
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_7

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 761
    :goto_2
    const v5, 0xdbff

    if-gt v4, v5, :cond_6

    const v5, 0xdc00

    if-lt v0, v5, :cond_6

    if-le v0, v10, :cond_8

    .line 762
    :cond_6
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 763
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 764
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 760
    goto :goto_2

    .line 770
    :cond_8
    const/high16 v5, 0x10000

    const v6, -0xd801

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xa

    const v6, -0xdc01

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 773
    shr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    invoke-virtual {p0, v4}, Lbzu;->a(I)Lbzu;

    .line 774
    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, Lbzu;->a(I)Lbzu;

    .line 775
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, Lbzu;->a(I)Lbzu;

    .line 776
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    .line 777
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 779
    goto/16 :goto_0

    .line 781
    :cond_9
    return-object p0
.end method

.method public final a([B)Lbzu;
    .locals 2

    .prologue
    .line 793
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbzu;->b([BII)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 101
    iget-wide v0, p0, Lbzu;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method public final a_(Lbzu;J)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 1039
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_1
    iget-wide v0, p1, Lbzu;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 1043
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 1045
    iget-object v0, p1, Lbzu;->a:Lcag;

    iget v0, v0, Lcag;->c:I

    iget-object v1, p1, Lbzu;->a:Lcag;

    iget v1, v1, Lcag;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 1046
    iget-object v0, p0, Lbzu;->a:Lcag;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v0, v0, Lcag;->g:Lcag;

    move-object v1, v0

    .line 1047
    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lcag;->e:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lcag;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lcag;->d:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    int-to-long v8, v0

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x800

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    .line 1050
    iget-object v0, p1, Lbzu;->a:Lcag;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcag;->a(Lcag;I)V

    .line 1051
    iget-wide v0, p1, Lbzu;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lbzu;->b:J

    .line 1052
    iget-wide v0, p0, Lbzu;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lbzu;->b:J

    .line 1077
    :cond_2
    return-void

    .line 1046
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1047
    :cond_4
    iget v0, v1, Lcag;->b:I

    goto :goto_2

    .line 1057
    :cond_5
    iget-object v0, p1, Lbzu;->a:Lcag;

    long-to-int v1, p2

    if-lez v1, :cond_6

    iget v4, v0, Lcag;->c:I

    iget v5, v0, Lcag;->b:I

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    new-instance v4, Lcag;

    invoke-direct {v4, v0}, Lcag;-><init>(Lcag;)V

    iget v5, v4, Lcag;->b:I

    add-int/2addr v5, v1

    iput v5, v4, Lcag;->c:I

    iget v5, v0, Lcag;->b:I

    add-int/2addr v1, v5

    iput v1, v0, Lcag;->b:I

    iget-object v0, v0, Lcag;->g:Lcag;

    invoke-virtual {v0, v4}, Lcag;->a(Lcag;)Lcag;

    iput-object v4, p1, Lbzu;->a:Lcag;

    .line 1062
    :cond_8
    iget-object v0, p1, Lbzu;->a:Lcag;

    .line 1063
    iget v1, v0, Lcag;->c:I

    iget v4, v0, Lcag;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1064
    invoke-virtual {v0}, Lcag;->a()Lcag;

    move-result-object v1

    iput-object v1, p1, Lbzu;->a:Lcag;

    .line 1065
    iget-object v1, p0, Lbzu;->a:Lcag;

    if-nez v1, :cond_a

    .line 1066
    iput-object v0, p0, Lbzu;->a:Lcag;

    .line 1067
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v1, p0, Lbzu;->a:Lcag;

    iget-object v7, p0, Lbzu;->a:Lcag;

    iput-object v7, v1, Lcag;->g:Lcag;

    iput-object v7, v0, Lcag;->f:Lcag;

    .line 1073
    :cond_9
    :goto_3
    iget-wide v0, p1, Lbzu;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lbzu;->b:J

    .line 1074
    iget-wide v0, p0, Lbzu;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lbzu;->b:J

    .line 1075
    sub-long/2addr p2, v4

    .line 1076
    goto/16 :goto_0

    .line 1069
    :cond_a
    iget-object v1, p0, Lbzu;->a:Lcag;

    iget-object v1, v1, Lcag;->g:Lcag;

    .line 1070
    invoke-virtual {v1, v0}, Lcag;->a(Lcag;)Lcag;

    move-result-object v1

    .line 1071
    iget-object v0, v1, Lcag;->g:Lcag;

    if-ne v0, v1, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, v1, Lcag;->g:Lcag;

    iget-boolean v0, v0, Lcag;->e:Z

    if-eqz v0, :cond_9

    iget v0, v1, Lcag;->c:I

    iget v7, v1, Lcag;->b:I

    sub-int v7, v0, v7

    iget-object v0, v1, Lcag;->g:Lcag;

    iget v0, v0, Lcag;->c:I

    rsub-int v8, v0, 0x800

    iget-object v0, v1, Lcag;->g:Lcag;

    iget-boolean v0, v0, Lcag;->d:Z

    if-eqz v0, :cond_c

    move v0, v6

    :goto_4
    add-int/2addr v0, v8

    if-gt v7, v0, :cond_9

    iget-object v0, v1, Lcag;->g:Lcag;

    invoke-virtual {v1, v0, v7}, Lcag;->a(Lcag;I)V

    invoke-virtual {v1}, Lcag;->a()Lcag;

    invoke-static {v1}, Lcah;->a(Lcag;)V

    goto :goto_3

    :cond_c
    iget-object v0, v1, Lcag;->g:Lcag;

    iget v0, v0, Lcag;->b:I

    goto :goto_4
.end method

.method public final b(J)B
    .locals 7

    .prologue
    .line 294
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 295
    iget-object v0, p0, Lbzu;->a:Lcag;

    .line 296
    :goto_0
    iget v1, v0, Lcag;->c:I

    iget v2, v0, Lcag;->b:I

    sub-int/2addr v1, v2

    .line 297
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Lcag;->a:[B

    iget v0, v0, Lcag;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 298
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 295
    iget-object v0, v0, Lcag;->f:Lcag;

    goto :goto_0
.end method

.method public final b()Lbzu;
    .locals 0

    .prologue
    .line 63
    return-object p0
.end method

.method public final b(I)Lbzu;
    .locals 5

    .prologue
    .line 842
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbzu;->d(I)Lcag;

    move-result-object v0

    .line 843
    iget-object v1, v0, Lcag;->a:[B

    .line 844
    iget v2, v0, Lcag;->c:I

    .line 845
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 846
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 847
    iput v2, v0, Lcag;->c:I

    .line 848
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    .line 849
    return-object p0
.end method

.method public final b([BII)Lbzu;
    .locals 6

    .prologue
    .line 798
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 801
    add-int v0, p2, p3

    .line 802
    :goto_0
    if-ge p2, v0, :cond_1

    .line 803
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbzu;->d(I)Lcag;

    move-result-object v1

    .line 805
    sub-int v2, v0, p2

    iget v3, v1, Lcag;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 806
    iget-object v3, v1, Lcag;->a:[B

    iget v4, v1, Lcag;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    add-int/2addr p2, v2

    .line 809
    iget v3, v1, Lcag;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lcag;->c:I

    goto :goto_0

    .line 812
    :cond_1
    iget-wide v0, p0, Lbzu;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    .line 813
    return-object p0
.end method

.method public final synthetic b(Lbzx;)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->a(Lbzx;)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->a(Ljava/lang/String;)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b([B)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->a([B)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lbzu;
    .locals 5

    .prologue
    .line 857
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbzu;->d(I)Lcag;

    move-result-object v0

    .line 858
    iget-object v1, v0, Lcag;->a:[B

    .line 859
    iget v2, v0, Lcag;->c:I

    .line 860
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 861
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 862
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 863
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 864
    iput v2, v0, Lcag;->c:I

    .line 865
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    .line 866
    return-object p0
.end method

.method public final c()Lbzv;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public final synthetic c([BII)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lbzu;->b([BII)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lbzx;
    .locals 3

    .prologue
    .line 528
    new-instance v0, Lbzx;

    invoke-virtual {p0, p1, p2}, Lbzu;->e(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lbzx;-><init>([B)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lbzu;->s()Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method final d(I)Lcag;
    .locals 3

    .prologue
    const/16 v2, 0x800

    .line 974
    if-lez p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 976
    :cond_1
    iget-object v0, p0, Lbzu;->a:Lcag;

    if-nez v0, :cond_3

    .line 977
    invoke-static {}, Lcah;->a()Lcag;

    move-result-object v0

    iput-object v0, p0, Lbzu;->a:Lcag;

    .line 978
    iget-object v1, p0, Lbzu;->a:Lcag;

    iget-object v2, p0, Lbzu;->a:Lcag;

    iget-object v0, p0, Lbzu;->a:Lcag;

    iput-object v0, v2, Lcag;->g:Lcag;

    iput-object v0, v1, Lcag;->f:Lcag;

    .line 985
    :cond_2
    :goto_0
    return-object v0

    .line 981
    :cond_3
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v0, v0, Lcag;->g:Lcag;

    .line 982
    iget v1, v0, Lcag;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Lcag;->e:Z

    if-nez v1, :cond_2

    .line 983
    :cond_4
    invoke-static {}, Lcah;->a()Lcag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcag;->a(Lcag;)Lcag;

    move-result-object v0

    goto :goto_0
.end method

.method final d(J)Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v2, 0x1

    .line 615
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lbzu;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 617
    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Lbzu;->k(J)Ljava/lang/String;

    move-result-object v0

    .line 618
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lbzu;->f(J)V

    .line 625
    :goto_0
    return-object v0

    .line 623
    :cond_0
    invoke-direct {p0, p1, p2}, Lbzu;->k(J)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p0, v2, v3}, Lbzu;->f(J)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic e(I)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->c(I)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lbzu$1;

    invoke-direct {v0, p0}, Lbzu$1;-><init>(Lbzu;)V

    return-object v0
.end method

.method public final e(J)[B
    .locals 7

    .prologue
    .line 638
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcal;->a(JJJ)V

    .line 639
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 644
    invoke-direct {p0, v0}, Lbzu;->c([B)V

    .line 645
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1172
    if-ne p0, p1, :cond_0

    move v0, v6

    .line 1201
    :goto_0
    return v0

    .line 1173
    :cond_0
    instance-of v2, p1, Lbzu;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1174
    :cond_1
    check-cast p1, Lbzu;

    .line 1175
    iget-wide v2, p0, Lbzu;->b:J

    iget-wide v4, p1, Lbzu;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    .line 1176
    :cond_2
    iget-wide v2, p0, Lbzu;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    .line 1178
    :cond_3
    iget-object v4, p0, Lbzu;->a:Lcag;

    .line 1179
    iget-object v5, p1, Lbzu;->a:Lcag;

    .line 1180
    iget v3, v4, Lcag;->b:I

    .line 1181
    iget v2, v5, Lcag;->b:I

    .line 1183
    :goto_1
    iget-wide v8, p0, Lbzu;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 1184
    iget v8, v4, Lcag;->c:I

    sub-int/2addr v8, v3

    iget v9, v5, Lcag;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1186
    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    .line 1187
    iget-object v12, v4, Lcag;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v5, Lcag;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4

    move v0, v7

    goto :goto_0

    .line 1186
    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_2

    .line 1190
    :cond_5
    iget v8, v4, Lcag;->c:I

    if-ne v3, v8, :cond_6

    .line 1191
    iget-object v4, v4, Lcag;->f:Lcag;

    .line 1192
    iget v3, v4, Lcag;->b:I

    .line 1195
    :cond_6
    iget v8, v5, Lcag;->c:I

    if-ne v2, v8, :cond_7

    .line 1196
    iget-object v5, v5, Lcag;->f:Lcag;

    .line 1197
    iget v2, v5, Lcag;->b:I

    .line 1183
    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    .line 1201
    goto :goto_0
.end method

.method public final f()B
    .locals 10

    .prologue
    .line 272
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lbzu;->a:Lcag;

    .line 275
    iget v1, v0, Lcag;->b:I

    .line 276
    iget v2, v0, Lcag;->c:I

    .line 278
    iget-object v3, v0, Lcag;->a:[B

    .line 279
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 280
    iget-wide v6, p0, Lbzu;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbzu;->b:J

    .line 282
    if-ne v4, v2, :cond_1

    .line 283
    invoke-virtual {v0}, Lcag;->a()Lcag;

    move-result-object v2

    iput-object v2, p0, Lbzu;->a:Lcag;

    .line 284
    invoke-static {v0}, Lcah;->a(Lcag;)V

    .line 289
    :goto_0
    return v1

    .line 286
    :cond_1
    iput v4, v0, Lcag;->b:I

    goto :goto_0
.end method

.method public final synthetic f(I)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->b(I)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)V
    .locals 7

    .prologue
    .line 694
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 695
    iget-object v0, p0, Lbzu;->a:Lcag;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 697
    :cond_1
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget v0, v0, Lcag;->c:I

    iget-object v1, p0, Lbzu;->a:Lcag;

    iget v1, v1, Lcag;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 698
    iget-wide v2, p0, Lbzu;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lbzu;->b:J

    .line 699
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 700
    iget-object v1, p0, Lbzu;->a:Lcag;

    iget v2, v1, Lcag;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lcag;->b:I

    .line 702
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget v0, v0, Lcag;->b:I

    iget-object v1, p0, Lbzu;->a:Lcag;

    iget v1, v1, Lcag;->c:I

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lbzu;->a:Lcag;

    .line 704
    invoke-virtual {v0}, Lcag;->a()Lcag;

    move-result-object v1

    iput-object v1, p0, Lbzu;->a:Lcag;

    .line 705
    invoke-static {v0}, Lcah;->a(Lcag;)V

    goto :goto_0

    .line 708
    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 1151
    return-void
.end method

.method public final g(J)Lbzu;
    .locals 11

    .prologue
    .line 895
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 897
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    move-result-object p0

    .line 947
    :goto_0
    return-object p0

    .line 900
    :cond_0
    const/4 v0, 0x0

    .line 901
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    .line 902
    neg-long v2, p1

    .line 903
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 904
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lbzu;->a(Ljava/lang/String;)Lbzu;

    move-result-object p0

    goto :goto_0

    .line 906
    :cond_1
    const/4 v0, 0x1

    move v4, v0

    .line 910
    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 929
    :goto_2
    if-eqz v4, :cond_2

    .line 930
    add-int/lit8 v0, v0, 0x1

    .line 933
    :cond_2
    invoke-virtual {p0, v0}, Lbzu;->d(I)Lcag;

    move-result-object v5

    .line 934
    iget-object v6, v5, Lcag;->a:[B

    .line 935
    iget v1, v5, Lcag;->c:I

    add-int/2addr v1, v0

    .line 936
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    .line 937
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 938
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lbzu;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 939
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    .line 910
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    .line 941
    :cond_15
    if-eqz v4, :cond_16

    .line 942
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 945
    :cond_16
    iget v1, v5, Lcag;->c:I

    add-int/2addr v1, v0

    iput v1, v5, Lcag;->c:I

    .line 946
    iget-wide v2, p0, Lbzu;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public final synthetic g(I)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lbzu;->a(I)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final g()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 303
    iget-wide v0, p0, Lbzu;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbzu;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lbzu;->a:Lcag;

    .line 306
    iget v1, v0, Lcag;->b:I

    .line 307
    iget v2, v0, Lcag;->c:I

    .line 310
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 311
    invoke-virtual {p0}, Lbzu;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lbzu;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 313
    int-to-short v0, v0

    .line 328
    :goto_0
    return v0

    .line 316
    :cond_1
    iget-object v3, v0, Lcag;->a:[B

    .line 317
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 319
    iget-wide v6, p0, Lbzu;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbzu;->b:J

    .line 321
    if-ne v5, v2, :cond_2

    .line 322
    invoke-virtual {v0}, Lcag;->a()Lcag;

    move-result-object v2

    iput-object v2, p0, Lbzu;->a:Lcag;

    .line 323
    invoke-static {v0}, Lcah;->a(Lcag;)V

    .line 328
    :goto_1
    int-to-short v0, v1

    goto :goto_0

    .line 325
    :cond_2
    iput v5, v0, Lcag;->b:I

    goto :goto_1
.end method

.method public final h()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 332
    iget-wide v0, p0, Lbzu;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbzu;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget-object v1, p0, Lbzu;->a:Lcag;

    .line 335
    iget v0, v1, Lcag;->b:I

    .line 336
    iget v2, v1, Lcag;->c:I

    .line 339
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 340
    invoke-virtual {p0}, Lbzu;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lbzu;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lbzu;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lbzu;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 360
    :goto_0
    return v0

    .line 346
    :cond_1
    iget-object v3, v1, Lcag;->a:[B

    .line 347
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 351
    iget-wide v6, p0, Lbzu;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbzu;->b:J

    .line 353
    if-ne v5, v2, :cond_2

    .line 354
    invoke-virtual {v1}, Lcag;->a()Lcag;

    move-result-object v2

    iput-object v2, p0, Lbzu;->a:Lcag;

    .line 355
    invoke-static {v1}, Lcah;->a(Lcag;)V

    goto :goto_0

    .line 357
    :cond_2
    iput v5, v1, Lcag;->b:I

    goto :goto_0
.end method

.method public final h(J)Lbzu;
    .locals 9

    .prologue
    .line 951
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 953
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lbzu;->a(I)Lbzu;

    move-result-object p0

    .line 966
    :goto_0
    return-object p0

    .line 956
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 958
    invoke-virtual {p0, v1}, Lbzu;->d(I)Lcag;

    move-result-object v2

    .line 959
    iget-object v3, v2, Lcag;->a:[B

    .line 960
    iget v0, v2, Lcag;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lcag;->c:I

    :goto_1
    if-lt v0, v4, :cond_1

    .line 961
    sget-object v5, Lbzu;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 962
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 960
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 964
    :cond_1
    iget v0, v2, Lcag;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lcag;->c:I

    .line 965
    iget-wide v2, p0, Lbzu;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbzu;->b:J

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 1205
    iget-object v1, p0, Lbzu;->a:Lcag;

    .line 1206
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1214
    :goto_0
    return v0

    .line 1207
    :cond_0
    const/4 v0, 0x1

    .line 1209
    :cond_1
    iget v2, v1, Lcag;->b:I

    iget v4, v1, Lcag;->c:I

    :goto_1
    if-ge v2, v4, :cond_2

    .line 1210
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lcag;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1209
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1212
    :cond_2
    iget-object v1, v1, Lcag;->f:Lcag;

    .line 1213
    iget-object v2, p0, Lbzu;->a:Lcag;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public final synthetic i(J)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lbzu;->h(J)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final i()S
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lbzu;->g()S

    move-result v0

    invoke-static {v0}, Lcal;->a(S)S

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lbzu;->h()I

    move-result v0

    invoke-static {v0}, Lcal;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic j(J)Lbzv;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lbzu;->g(J)Lbzu;

    move-result-object v0

    return-object v0
.end method

.method public final k()J
    .locals 18

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbzu;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_0
    const-wide/16 v8, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    const/4 v5, 0x0

    .line 416
    const/4 v4, 0x0

    .line 418
    const-wide/16 v2, -0x7

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lbzu;->a:Lcag;

    .line 424
    iget-object v11, v10, Lcag;->a:[B

    .line 425
    iget v7, v10, Lcag;->b:I

    .line 426
    iget v12, v10, Lcag;->c:I

    .line 428
    :goto_0
    if-ge v7, v12, :cond_8

    .line 429
    aget-byte v13, v11, v7

    .line 430
    const/16 v14, 0x30

    if-lt v13, v14, :cond_5

    const/16 v14, 0x39

    if-gt v13, v14, :cond_5

    .line 431
    rsub-int/lit8 v14, v13, 0x30

    .line 434
    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-ltz v15, :cond_2

    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-nez v15, :cond_4

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v15, v16, v2

    if-gez v15, :cond_4

    .line 435
    :cond_2
    new-instance v2, Lbzu;

    invoke-direct {v2}, Lbzu;-><init>()V

    invoke-virtual {v2, v8, v9}, Lbzu;->g(J)Lbzu;

    move-result-object v2

    invoke-virtual {v2, v13}, Lbzu;->a(I)Lbzu;

    move-result-object v2

    .line 436
    if-nez v5, :cond_3

    invoke-virtual {v2}, Lbzu;->f()B

    .line 437
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number too large: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2}, Lbzu;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_4
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    .line 440
    int-to-long v14, v14

    add-long/2addr v8, v14

    .line 428
    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 441
    :cond_5
    const/16 v14, 0x2d

    if-ne v13, v14, :cond_6

    if-nez v6, :cond_6

    .line 442
    const/4 v5, 0x1

    .line 443
    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    goto :goto_1

    .line 445
    :cond_6
    if-nez v6, :cond_7

    .line 446
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_7
    const/4 v4, 0x1

    .line 455
    :cond_8
    if-ne v7, v12, :cond_a

    .line 456
    invoke-virtual {v10}, Lcag;->a()Lcag;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lbzu;->a:Lcag;

    .line 457
    invoke-static {v10}, Lcah;->a(Lcag;)V

    .line 461
    :goto_2
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Lbzu;->a:Lcag;

    if-nez v7, :cond_1

    .line 463
    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbzu;->b:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbzu;->b:J

    .line 464
    if-eqz v5, :cond_b

    :goto_3
    return-wide v8

    .line 459
    :cond_a
    iput v7, v10, Lcag;->b:I

    goto :goto_2

    .line 464
    :cond_b
    neg-long v8, v8

    goto :goto_3
.end method

.method public final l()J
    .locals 18

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbzu;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_0
    const-wide/16 v4, 0x0

    .line 471
    const/4 v3, 0x0

    .line 472
    const/4 v2, 0x0

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lbzu;->a:Lcag;

    .line 477
    iget-object v11, v10, Lcag;->a:[B

    .line 478
    iget v6, v10, Lcag;->b:I

    .line 479
    iget v12, v10, Lcag;->c:I

    move v7, v6

    .line 481
    :goto_0
    if-ge v7, v12, :cond_6

    .line 484
    aget-byte v8, v11, v7

    .line 485
    const/16 v6, 0x30

    if-lt v8, v6, :cond_2

    const/16 v6, 0x39

    if-gt v8, v6, :cond_2

    .line 486
    add-int/lit8 v6, v8, -0x30

    .line 502
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_8

    .line 503
    new-instance v2, Lbzu;

    invoke-direct {v2}, Lbzu;-><init>()V

    invoke-virtual {v2, v4, v5}, Lbzu;->h(J)Lbzu;

    move-result-object v2

    invoke-virtual {v2, v8}, Lbzu;->a(I)Lbzu;

    move-result-object v2

    .line 504
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number too large: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2}, Lbzu;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 487
    :cond_2
    const/16 v6, 0x61

    if-lt v8, v6, :cond_3

    const/16 v6, 0x66

    if-gt v8, v6, :cond_3

    .line 488
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 489
    :cond_3
    const/16 v6, 0x41

    if-lt v8, v6, :cond_4

    const/16 v6, 0x46

    if-gt v8, v6, :cond_4

    .line 490
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    .line 492
    :cond_4
    if-nez v3, :cond_5

    .line 493
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_5
    const/4 v2, 0x1

    .line 511
    :cond_6
    if-ne v7, v12, :cond_9

    .line 512
    invoke-virtual {v10}, Lcag;->a()Lcag;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lbzu;->a:Lcag;

    .line 513
    invoke-static {v10}, Lcah;->a(Lcag;)V

    .line 517
    :goto_2
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lbzu;->a:Lcag;

    if-nez v6, :cond_1

    .line 519
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lbzu;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbzu;->b:J

    .line 520
    return-wide v4

    .line 507
    :cond_8
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    .line 508
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 481
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_0

    .line 515
    :cond_9
    iput v7, v10, Lcag;->b:I

    goto :goto_2
.end method

.method public final m()Lbzx;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lbzx;

    invoke-virtual {p0}, Lbzu;->o()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lbzx;-><init>([B)V

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 604
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lbzu;->a(BJ)J

    move-result-wide v0

    .line 605
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 606
    new-instance v1, Lbzu;

    invoke-direct {v1}, Lbzu;-><init>()V

    .line 607
    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lbzu;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbzu;->a(Lbzu;JJ)Lbzu;

    .line 608
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lbzu;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lbzu;->m()Lbzx;

    move-result-object v1

    invoke-virtual {v1}, Lbzx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    invoke-virtual {p0, v0, v1}, Lbzu;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()[B
    .locals 2

    .prologue
    .line 631
    :try_start_0
    iget-wide v0, p0, Lbzu;->b:J

    invoke-virtual {p0, v0, v1}, Lbzu;->e(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 686
    :try_start_0
    iget-wide v0, p0, Lbzu;->b:J

    invoke-virtual {p0, v0, v1}, Lbzu;->f(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic q()Lbzv;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1218
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1219
    const-string v0, "Buffer[size=0]"

    .line 1233
    :goto_0
    return-object v0

    .line 1222
    :cond_0
    iget-wide v0, p0, Lbzu;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1223
    invoke-direct {p0}, Lbzu;->s()Lbzu;

    move-result-object v0

    invoke-virtual {v0}, Lbzu;->m()Lbzx;

    move-result-object v0

    .line 1224
    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lbzu;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lbzx;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1228
    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1229
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v0, v0, Lcag;->a:[B

    iget-object v2, p0, Lbzu;->a:Lcag;

    iget v2, v2, Lcag;->b:I

    iget-object v3, p0, Lbzu;->a:Lcag;

    iget v3, v3, Lcag;->c:I

    iget-object v4, p0, Lbzu;->a:Lcag;

    iget v4, v4, Lcag;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1230
    iget-object v0, p0, Lbzu;->a:Lcag;

    iget-object v0, v0, Lcag;->f:Lcag;

    :goto_1
    iget-object v2, p0, Lbzu;->a:Lcag;

    if-eq v0, v2, :cond_2

    .line 1231
    iget-object v2, v0, Lcag;->a:[B

    iget v3, v0, Lcag;->b:I

    iget v4, v0, Lcag;->c:I

    iget v5, v0, Lcag;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1230
    iget-object v0, v0, Lcag;->f:Lcag;

    goto :goto_1

    .line 1233
    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lbzu;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lbzx;->a([B)Lbzx;

    move-result-object v1

    invoke-virtual {v1}, Lbzx;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1236
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

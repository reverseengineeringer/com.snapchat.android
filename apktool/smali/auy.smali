.class public final Lauy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BUCKET_ACCURACY:D = 10.0

.field private static final mNumberFormatter:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lauy;->mNumberFormatter:Ljava/text/NumberFormat;

    return-void
.end method

.method public static a(DLjava/util/Locale;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-static {p2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 106
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 36
    if-ltz p0, :cond_0

    .line 37
    const-string v0, ""

    .line 44
    :goto_0
    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 39
    :cond_0
    const-string v0, "-"

    .line 40
    mul-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 46
    :cond_1
    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 47
    int-to-double v2, p0

    int-to-double v4, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 48
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 50
    const-string v3, "%s%.1f%c"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "kMB"

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_2
    const-string v3, "%s%d%c"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v8

    float-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    const-string v0, "kMB"

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8
    .annotation build Lchc;
    .end annotation

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 63
    invoke-static {p0, p1}, Lawd;->a(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%4.3f-%4.3f s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lauy;->mNumberFormatter:Ljava/text/NumberFormat;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 8
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 71
    long-to-double v0, p0

    div-double/2addr v0, v4

    .line 72
    const-wide v2, 0x40c57c0000000000L    # 11000.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 74
    const-string v0, "%d+ s"

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x2af8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :cond_0
    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    .line 76
    const-string v0, "0-%d s"

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    div-double/2addr v0, v4

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 79
    add-int/lit8 v1, v0, -0x1

    .line 80
    const-string v2, "%d-%d s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

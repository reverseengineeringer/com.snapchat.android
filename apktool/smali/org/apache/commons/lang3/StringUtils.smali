.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const-string v0, "(?: |\\u00A0|\\s|[\\s&&[^ ]])\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6354
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 6393
    if-nez p0, :cond_1

    .line 6394
    const/4 p0, 0x0

    .line 6418
    :cond_0
    :goto_0
    return-object p0

    .line 6396
    :cond_1
    if-ge p2, v2, :cond_2

    .line 6397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6399
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 6402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 6403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 6405
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, p2, -0x3

    if-ge v0, v1, :cond_4

    .line 6406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, -0x3

    sub-int p1, v0, v1

    .line 6408
    :cond_4
    if-gt p1, v2, :cond_5

    .line 6410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6412
    :cond_5
    const/4 v0, 0x7

    if-ge p2, v0, :cond_6

    .line 6413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6415
    :cond_6
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 6416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6418
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 6451
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6468
    :cond_0
    :goto_0
    return-object p0

    .line 6455
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-lt p2, v0, :cond_0

    .line 6459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 6460
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 6461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    .line 6463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6464
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6465
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6466
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 7412
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7422
    :cond_0
    :goto_0
    return-object p0

    .line 7415
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    .line 7416
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 7417
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7422
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7460
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7498
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5688
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5698
    :cond_0
    :goto_0
    return-object p0

    .line 5692
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5693
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5482
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5510
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 5520
    :cond_0
    :goto_0
    return-object p0

    .line 5513
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5514
    sub-int v1, p1, v0

    .line 5515
    if-lez v1, :cond_0

    .line 5518
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 5519
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5550
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 5563
    :cond_0
    :goto_0
    return-object p0

    .line 5553
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5554
    const-string p2, " "

    .line 5556
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5557
    sub-int v1, p1, v0

    .line 5558
    if-lez v1, :cond_0

    .line 5561
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5562
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v2, 0xd

    .line 4997
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5019
    :cond_0
    :goto_0
    return-object p0

    .line 5001
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5002
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5003
    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_0

    .line 5004
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 5009
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5010
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5012
    if-ne v1, v4, :cond_5

    .line 5013
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 5014
    add-int/lit8 v0, v0, -0x1

    .line 5019
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5016
    :cond_5
    if-eq v1, v2, :cond_4

    .line 5017
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5051
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5080
    if-nez p0, :cond_1

    .line 5081
    const/4 v0, 0x0

    .line 5093
    :cond_0
    :goto_0
    return-object v0

    .line 5083
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5084
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 5085
    const-string v0, ""

    goto :goto_0

    .line 5087
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 5088
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5089
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5090
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 5091
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static commonPrefixLength(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 7130
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 7133
    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1416
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1445
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1677
    if-nez p1, :cond_0

    .line 1678
    const/4 v0, 0x0

    .line 1680
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1619
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1645
    :cond_1
    :goto_0
    return v0

    .line 1622
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1623
    array-length v5, p1

    .line 1624
    add-int/lit8 v6, v4, -0x1

    .line 1625
    add-int/lit8 v7, v5, -0x1

    move v3, v1

    .line 1626
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1627
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v1

    .line 1628
    :goto_2
    if-ge v2, v5, :cond_4

    .line 1629
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1630
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1631
    if-eq v2, v7, :cond_1

    .line 1635
    if-ge v3, v6, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1628
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1626
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1645
    goto :goto_0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1476
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v4

    .line 1479
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1480
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    move v2, v4

    .line 1481
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 1482
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 1483
    goto :goto_0

    .line 1481
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1928
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1929
    :cond_0
    const/4 v0, 0x1

    .line 1931
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1875
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1901
    :cond_1
    :goto_0
    return v0

    .line 1878
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1879
    add-int/lit8 v5, v4, -0x1

    .line 1880
    array-length v6, p1

    .line 1881
    add-int/lit8 v7, v6, -0x1

    move v3, v0

    .line 1882
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1883
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v0

    .line 1884
    :goto_2
    if-ge v2, v6, :cond_4

    .line 1885
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1886
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1887
    if-eq v2, v7, :cond_1

    .line 1891
    if-ge v3, v5, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1884
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1882
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1901
    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1843
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1844
    :cond_0
    const/4 v0, 0x0

    .line 1846
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1807
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1816
    :cond_1
    :goto_0
    return v0

    .line 1810
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1813
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1814
    goto :goto_0

    .line 1816
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1499
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v0

    .line 1502
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 1503
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1504
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1505
    const/4 v0, 0x1

    goto :goto_0

    .line 1503
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5812
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 5821
    :cond_1
    return v1

    :cond_2
    move v1, v0

    .line 5817
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5818
    add-int/lit8 v1, v1, 0x1

    .line 5819
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 6242
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 6264
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6199
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 6220
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4171
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4185
    :cond_0
    :goto_0
    return-object p0

    .line 4174
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 4175
    new-array v5, v4, [C

    move v2, v3

    move v1, v3

    .line 4177
    :goto_1
    if-ge v2, v4, :cond_2

    .line 4178
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4179
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 4177
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 4182
    :cond_2
    if-eq v1, v4, :cond_0

    .line 4185
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 6502
    if-nez p0, :cond_0

    .line 6512
    :goto_0
    return-object p1

    .line 6505
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 6506
    goto :goto_0

    .line 6508
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 6509
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6510
    const-string p1, ""

    goto :goto_0

    .line 6512
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 7270
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 7312
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 7313
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 7319
    :cond_1
    :goto_0
    return v4

    .line 7315
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 7318
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 7319
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7389
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7397
    :cond_0
    :goto_0
    return v0

    .line 7392
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 7393
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7394
    const/4 v0, 0x1

    goto :goto_0

    .line 7392
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 7297
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 795
    if-ne p0, p1, :cond_1

    .line 796
    const/4 v1, 0x1

    .line 804
    :cond_0
    :goto_0
    return v1

    .line 798
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 801
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 804
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 830
    :cond_0
    if-ne p0, p1, :cond_2

    .line 836
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 830
    goto :goto_0

    .line 831
    :cond_3
    if-eq p0, p1, :cond_1

    .line 833
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 834
    goto :goto_0

    .line 836
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6683
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 6684
    :cond_0
    const-string v0, ""

    .line 6698
    :goto_0
    return-object v0

    .line 6686
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 6687
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 6689
    aget-object v0, p0, v2

    if-nez v0, :cond_2

    .line 6690
    const-string v0, ""

    goto :goto_0

    .line 6692
    :cond_2
    aget-object v0, p0, v2

    goto :goto_0

    .line 6693
    :cond_3
    if-nez v0, :cond_4

    .line 6695
    const-string v0, ""

    goto :goto_0

    .line 6698
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 7011
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7014
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7017
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->score(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D

    move-result-wide v0

    .line 7018
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->commonPrefixLength(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 7019
    const-wide v4, 0x3fb999999999999aL    # 0.1

    int-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 7021
    return-wide v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6741
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6742
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6762
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6763
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6765
    if-nez v0, :cond_2

    .line 6814
    :goto_0
    return v1

    .line 6767
    :cond_2
    if-nez v1, :cond_3

    move v1, v0

    .line 6768
    goto :goto_0

    .line 6771
    :cond_3
    if-le v0, v1, :cond_8

    .line 6777
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6780
    :goto_1
    add-int/lit8 v2, v1, 0x1

    new-array v7, v2, [I

    .line 6781
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    move v5, v3

    .line 6792
    :goto_2
    if-gt v5, v1, :cond_4

    .line 6793
    aput v5, v7, v5

    .line 6792
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v4

    move-object v6, v2

    .line 6796
    :goto_3
    if-gt v5, v0, :cond_7

    .line 6797
    add-int/lit8 v2, v5, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 6798
    aput v5, v6, v3

    move v8, v4

    .line 6800
    :goto_4
    if-gt v8, v1, :cond_6

    .line 6801
    add-int/lit8 v2, v8, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_5

    move v2, v3

    .line 6803
    :goto_5
    add-int/lit8 v10, v8, -0x1

    aget v10, v6, v10

    add-int/lit8 v10, v10, 0x1

    aget v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v8, -0x1

    aget v11, v7, v11

    add-int/2addr v2, v11

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v6, v8

    .line 6800
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_4

    :cond_5
    move v2, v4

    .line 6801
    goto :goto_5

    .line 6796
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_3

    .line 6814
    :cond_7
    aget v1, v7, v1

    goto :goto_0

    :cond_8
    move v12, v1

    move v1, v0

    move v0, v12

    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    goto :goto_1
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    .line 6850
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6851
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6853
    :cond_1
    if-gez p2, :cond_2

    .line 6854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6901
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6902
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6905
    if-nez v0, :cond_4

    .line 6906
    if-gt v1, p2, :cond_3

    .line 6975
    :goto_0
    return v1

    .line 6906
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 6907
    :cond_4
    if-nez v1, :cond_6

    .line 6908
    if-gt v0, p2, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    goto :goto_0

    .line 6911
    :cond_6
    if-le v0, v1, :cond_f

    .line 6917
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6920
    :goto_1
    add-int/lit8 v2, v1, 0x1

    new-array v4, v2, [I

    .line 6921
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [I

    .line 6925
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    .line 6926
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_7

    .line 6927
    aput v2, v4, v2

    .line 6926
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6931
    :cond_7
    array-length v2, v4

    const v6, 0x7fffffff

    invoke-static {v4, v5, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 6932
    const v2, 0x7fffffff

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 6935
    const/4 v2, 0x1

    :goto_3
    if-gt v2, v0, :cond_d

    .line 6936
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 6937
    const/4 v5, 0x0

    aput v2, v3, v5

    .line 6940
    const/4 v5, 0x1

    sub-int v6, v2, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 6941
    const v6, 0x7fffffff

    sub-int/2addr v6, p2

    if-le v2, v6, :cond_8

    move v6, v1

    .line 6944
    :goto_4
    if-le v5, v6, :cond_9

    .line 6945
    const/4 v1, -0x1

    goto :goto_0

    .line 6941
    :cond_8
    add-int v6, v2, p2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    .line 6949
    :cond_9
    const/4 v8, 0x1

    if-le v5, v8, :cond_a

    .line 6950
    add-int/lit8 v8, v5, -0x1

    const v9, 0x7fffffff

    aput v9, v3, v8

    .line 6954
    :cond_a
    :goto_5
    if-gt v5, v6, :cond_c

    .line 6955
    add-int/lit8 v8, v5, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_b

    .line 6957
    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    aput v8, v3, v5

    .line 6954
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 6960
    :cond_b
    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    aget v9, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    aget v9, v4, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v3, v5

    goto :goto_6

    .line 6935
    :cond_c
    add-int/lit8 v2, v2, 0x1

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_3

    .line 6972
    :cond_d
    aget v0, v4, v1

    if-gt v0, p2, :cond_e

    .line 6973
    aget v1, v4, v1

    goto/16 :goto_0

    .line 6975
    :cond_e
    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_f
    move v10, v1

    move v1, v0

    move v0, v10

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto/16 :goto_1
.end method

.method private static getSetOfMatchingCharacterWithin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 7087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7088
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 7090
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7091
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 7095
    sub-int v2, v0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    add-int v7, v0, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 7096
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_0

    .line 7097
    const/4 v2, 0x1

    .line 7098
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7099
    const/16 v7, 0x2a

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 7095
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7090
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7103
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 863
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, -0x1

    .line 866
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1

    .prologue
    .line 896
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, -0x1

    .line 899
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 927
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 928
    :cond_0
    const/4 v0, -0x1

    .line 930
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 967
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 968
    :cond_0
    const/4 v0, -0x1

    .line 970
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1586
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    :cond_0
    const/4 v0, -0x1

    .line 1589
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1537
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1559
    :cond_1
    :goto_0
    return v0

    .line 1540
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1541
    add-int/lit8 v5, v4, -0x1

    .line 1542
    array-length v6, p1

    .line 1543
    add-int/lit8 v7, v6, -0x1

    move v0, v3

    .line 1544
    :goto_1
    if-ge v0, v4, :cond_5

    .line 1545
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v3

    .line 1546
    :goto_2
    if-ge v2, v6, :cond_4

    .line 1547
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1548
    if-ge v0, v5, :cond_1

    if-ge v2, v7, :cond_1

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1550
    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1546
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1544
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1559
    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1964
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 1988
    :cond_1
    :goto_0
    return v1

    .line 1967
    :cond_2
    array-length v6, p1

    move v3, v4

    move v1, v5

    .line 1972
    :goto_1
    if-ge v3, v6, :cond_3

    .line 1974
    aget-object v0, p1, v3

    .line 1975
    if-eqz v0, :cond_4

    .line 1976
    invoke-static {p0, v0, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1979
    if-eq v0, v2, :cond_4

    .line 1980
    if-ge v0, v1, :cond_4

    .line 1973
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1988
    :cond_3
    if-ne v1, v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1760
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1778
    :cond_1
    :goto_0
    return v0

    .line 1763
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v0, v3

    .line 1764
    :goto_1
    if-ge v0, v4, :cond_6

    .line 1765
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1766
    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    .line 1767
    :goto_2
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1768
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1769
    if-eqz v2, :cond_3

    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1764
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1766
    goto :goto_2

    .line 1773
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1778
    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1710
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1733
    :cond_1
    :goto_0
    return v0

    .line 1713
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1714
    add-int/lit8 v5, v4, -0x1

    .line 1715
    array-length v6, p1

    .line 1716
    add-int/lit8 v7, v6, -0x1

    move v0, v3

    .line 1718
    :goto_1
    if-ge v0, v4, :cond_5

    .line 1719
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v3

    .line 1720
    :goto_2
    if-ge v2, v6, :cond_1

    .line 1721
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1722
    if-ge v0, v5, :cond_4

    if-ge v2, v7, :cond_4

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1723
    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_4

    .line 1724
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1718
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1733
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 6541
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 6556
    :cond_0
    :goto_0
    return v0

    .line 6544
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 6548
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6549
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 6550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6553
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 6556
    goto :goto_0
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 6592
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gt v0, v5, :cond_2

    :cond_0
    move v2, v6

    .line 6646
    :cond_1
    :goto_0
    return v2

    .line 6597
    :cond_2
    array-length v8, p0

    .line 6598
    const v4, 0x7fffffff

    move v7, v2

    move v0, v2

    move v1, v5

    move v3, v2

    .line 6604
    :goto_1
    if-ge v7, v8, :cond_4

    .line 6605
    aget-object v9, p0, v7

    if-nez v9, :cond_3

    move v3, v1

    move v4, v5

    move v1, v2

    .line 6604
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v11, v1

    move v1, v3

    move v3, v4

    move v4, v11

    goto :goto_1

    .line 6610
    :cond_3
    aget-object v1, p0, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6611
    aget-object v4, p0, v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 6616
    :cond_4
    if-nez v1, :cond_5

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    :cond_5
    move v2, v6

    .line 6617
    goto :goto_0

    .line 6621
    :cond_6
    if-eqz v4, :cond_1

    move v1, v6

    move v3, v2

    .line 6627
    :goto_3
    if-ge v3, v4, :cond_9

    .line 6628
    aget-object v7, p0, v2

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v5

    .line 6629
    :goto_4
    if-ge v7, v8, :cond_7

    .line 6630
    aget-object v10, p0, v7

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_8

    move v1, v3

    .line 6635
    :cond_7
    if-ne v1, v6, :cond_9

    .line 6636
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6629
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 6640
    if-ne v2, v6, :cond_1

    if-eq v4, v0, :cond_1

    move v2, v4

    .line 6644
    goto :goto_0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1110
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move p2, v6

    .line 1128
    :cond_1
    :goto_0
    return p2

    .line 1113
    :cond_2
    if-gez p2, :cond_3

    move p2, v4

    .line 1116
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 1117
    if-le p2, v7, :cond_4

    move p2, v6

    .line 1118
    goto :goto_0

    .line 1120
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, p2

    .line 1123
    :goto_1
    if-ge v2, v7, :cond_6

    .line 1124
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move p2, v2

    .line 1125
    goto :goto_0

    .line 1123
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move p2, v6

    .line 1128
    goto :goto_0
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6136
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6145
    :cond_0
    :goto_0
    return v0

    .line 6139
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6140
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6141
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6145
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6168
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6177
    :cond_0
    :goto_0
    return v0

    .line 6171
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6172
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6173
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5847
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5856
    :cond_0
    :goto_0
    return v0

    .line 5850
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5851
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5852
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5851
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5856
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5882
    if-nez p0, :cond_1

    .line 5891
    :cond_0
    :goto_0
    return v0

    .line 5885
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5886
    :goto_1
    if-ge v1, v2, :cond_3

    .line 5887
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5886
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5891
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5917
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5926
    :cond_0
    :goto_0
    return v0

    .line 5920
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5921
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5922
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5921
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5926
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5952
    if-nez p0, :cond_1

    .line 5961
    :cond_0
    :goto_0
    return v0

    .line 5955
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5956
    :goto_1
    if-ge v1, v2, :cond_3

    .line 5957
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5956
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5961
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, p0, v2

    .line 363
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, p0, v2

    .line 263
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5991
    if-nez p0, :cond_1

    .line 6000
    :cond_0
    :goto_0
    return v0

    .line 5994
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5995
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5996
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5995
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6000
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 316
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 311
    :goto_1
    if-ge v2, v3, :cond_3

    .line 312
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 219
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 389
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 288
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6034
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6043
    :cond_0
    :goto_0
    return v0

    .line 6037
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6038
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6039
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6038
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6043
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 6071
    if-nez p0, :cond_1

    .line 6080
    :cond_0
    :goto_0
    return v0

    .line 6074
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6075
    :goto_1
    if-ge v1, v2, :cond_3

    .line 6076
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 6075
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6080
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6104
    if-nez p0, :cond_1

    .line 6113
    :cond_0
    :goto_0
    return v0

    .line 6107
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6108
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6109
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6113
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4127
    if-nez p0, :cond_0

    .line 4128
    const/4 v0, 0x0

    .line 4130
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4148
    if-nez p0, :cond_0

    .line 4149
    const/4 v0, 0x0

    .line 4151
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4035
    if-nez p0, :cond_0

    .line 4036
    const/4 v0, 0x0

    .line 4062
    :goto_0
    return-object v0

    .line 4038
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4039
    const-string v0, ""

    goto :goto_0

    .line 4041
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4042
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4044
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4049
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4050
    if-eqz v0, :cond_3

    .line 4051
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4054
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4055
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4056
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4057
    if-eqz v0, :cond_3

    .line 4058
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4062
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4081
    if-nez p0, :cond_0

    .line 4082
    const/4 v0, 0x0

    .line 4109
    :goto_0
    return-object v0

    .line 4084
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4085
    const-string v0, ""

    goto :goto_0

    .line 4087
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4088
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4090
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4095
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4096
    if-eqz v0, :cond_3

    .line 4097
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4100
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4101
    if-eqz p1, :cond_4

    .line 4102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4105
    if-eqz v0, :cond_3

    .line 4106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4109
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([BC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3432
    if-nez p0, :cond_0

    .line 3433
    const/4 v0, 0x0

    .line 3435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([BCII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3711
    if-nez p0, :cond_0

    .line 3712
    const/4 v0, 0x0

    .line 3725
    :goto_0
    return-object v0

    .line 3714
    :cond_0
    sub-int v0, p3, p2

    .line 3715
    if-gtz v0, :cond_1

    .line 3716
    const-string v0, ""

    goto :goto_0

    .line 3718
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3719
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3720
    if-le v0, p2, :cond_2

    .line 3721
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3723
    :cond_2
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3725
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([CC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3464
    if-nez p0, :cond_0

    .line 3465
    const/4 v0, 0x0

    .line 3467
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([CCII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3809
    if-nez p0, :cond_0

    .line 3810
    const/4 v0, 0x0

    .line 3823
    :goto_0
    return-object v0

    .line 3812
    :cond_0
    sub-int v0, p3, p2

    .line 3813
    if-gtz v0, :cond_1

    .line 3814
    const-string v0, ""

    goto :goto_0

    .line 3816
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3817
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3818
    if-le v0, p2, :cond_2

    .line 3819
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3821
    :cond_2
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3823
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([DC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3528
    if-nez p0, :cond_0

    .line 3529
    const/4 v0, 0x0

    .line 3531
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([DCII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3858
    if-nez p0, :cond_0

    .line 3859
    const/4 v0, 0x0

    .line 3872
    :goto_0
    return-object v0

    .line 3861
    :cond_0
    sub-int v0, p3, p2

    .line 3862
    if-gtz v0, :cond_1

    .line 3863
    const-string v0, ""

    goto :goto_0

    .line 3865
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3866
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3867
    if-le v0, p2, :cond_2

    .line 3868
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3870
    :cond_2
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3872
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([FC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3496
    if-nez p0, :cond_0

    .line 3497
    const/4 v0, 0x0

    .line 3499
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([FCII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3907
    if-nez p0, :cond_0

    .line 3908
    const/4 v0, 0x0

    .line 3921
    :goto_0
    return-object v0

    .line 3910
    :cond_0
    sub-int v0, p3, p2

    .line 3911
    if-gtz v0, :cond_1

    .line 3912
    const-string v0, ""

    goto :goto_0

    .line 3914
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3915
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3916
    if-le v0, p2, :cond_2

    .line 3917
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3919
    :cond_2
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3921
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3368
    if-nez p0, :cond_0

    .line 3369
    const/4 v0, 0x0

    .line 3371
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([ICII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3662
    if-nez p0, :cond_0

    .line 3663
    const/4 v0, 0x0

    .line 3676
    :goto_0
    return-object v0

    .line 3665
    :cond_0
    sub-int v0, p3, p2

    .line 3666
    if-gtz v0, :cond_1

    .line 3667
    const-string v0, ""

    goto :goto_0

    .line 3669
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3670
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3671
    if-le v0, p2, :cond_2

    .line 3672
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3674
    :cond_2
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3676
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([JC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3336
    if-nez p0, :cond_0

    .line 3337
    const/4 v0, 0x0

    .line 3339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([JCII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3613
    if-nez p0, :cond_0

    .line 3614
    const/4 v0, 0x0

    .line 3627
    :goto_0
    return-object v0

    .line 3616
    :cond_0
    sub-int v0, p3, p2

    .line 3617
    if-gtz v0, :cond_1

    .line 3618
    const-string v0, ""

    goto :goto_0

    .line 3620
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3621
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3622
    if-le v0, p2, :cond_2

    .line 3623
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3625
    :cond_2
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3627
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3278
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3304
    if-nez p0, :cond_0

    .line 3305
    const/4 v0, 0x0

    .line 3307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3562
    if-nez p0, :cond_0

    .line 3563
    const/4 v0, 0x0

    .line 3578
    :goto_0
    return-object v0

    .line 3565
    :cond_0
    sub-int v0, p3, p2

    .line 3566
    if-gtz v0, :cond_1

    .line 3567
    const-string v0, ""

    goto :goto_0

    .line 3569
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3570
    :goto_1
    if-ge v0, p3, :cond_4

    .line 3571
    if-le v0, p2, :cond_2

    .line 3572
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3574
    :cond_2
    aget-object v2, p0, v0

    if-eqz v2, :cond_3

    .line 3575
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3570
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3578
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3949
    if-nez p0, :cond_0

    .line 3950
    const/4 v0, 0x0

    .line 3952
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3991
    if-nez p0, :cond_0

    .line 3992
    const/4 v0, 0x0

    .line 4015
    :goto_0
    return-object v0

    .line 3994
    :cond_0
    if-nez p1, :cond_1

    .line 3995
    const-string p1, ""

    .line 4000
    :cond_1
    sub-int v0, p3, p2

    .line 4001
    if-gtz v0, :cond_2

    .line 4002
    const-string v0, ""

    goto :goto_0

    .line 4005
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 4007
    :goto_1
    if-ge v0, p3, :cond_5

    .line 4008
    if-le v0, p2, :cond_3

    .line 4009
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    :cond_3
    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    .line 4012
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4007
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4015
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([SC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3400
    if-nez p0, :cond_0

    .line 3401
    const/4 v0, 0x0

    .line 3403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([SCII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3760
    if-nez p0, :cond_0

    .line 3761
    const/4 v0, 0x0

    .line 3774
    :goto_0
    return-object v0

    .line 3763
    :cond_0
    sub-int v0, p3, p2

    .line 3764
    if-gtz v0, :cond_1

    .line 3765
    const-string v0, ""

    goto :goto_0

    .line 3767
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3768
    :goto_1
    if-ge v0, p3, :cond_3

    .line 3769
    if-le v0, p2, :cond_2

    .line 3770
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3772
    :cond_2
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3774
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1154
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const/4 v0, -0x1

    .line 1157
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1

    .prologue
    .line 1192
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, -0x1

    .line 1195
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1222
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1223
    :cond_0
    const/4 v0, -0x1

    .line 1225
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1303
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1304
    :cond_0
    const/4 v0, -0x1

    .line 1306
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 2018
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2034
    :cond_0
    return v1

    .line 2021
    :cond_1
    array-length v3, p1

    .line 2023
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 2025
    aget-object v0, p1, v2

    .line 2026
    if-eqz v0, :cond_2

    .line 2027
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v0, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2030
    if-le v0, v1, :cond_2

    .line 2024
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1333
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1334
    :cond_0
    const/4 v0, -0x1

    .line 1336
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1372
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 1390
    :cond_1
    :goto_0
    return v2

    .line 1375
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_5

    .line 1376
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 1378
    :goto_1
    if-gez v2, :cond_3

    move v2, v6

    .line 1379
    goto :goto_0

    .line 1381
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    :goto_2
    if-ltz v2, :cond_4

    .line 1386
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1385
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    move v2, v6

    .line 1390
    goto :goto_0

    :cond_5
    move v2, p2

    goto :goto_1
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2174
    if-nez p0, :cond_1

    .line 2175
    const/4 p0, 0x0

    .line 2183
    :cond_0
    :goto_0
    return-object p0

    .line 2177
    :cond_1
    if-gez p1, :cond_2

    .line 2178
    const-string p0, ""

    goto :goto_0

    .line 2180
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2183
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5349
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5374
    if-nez p0, :cond_1

    .line 5375
    const/4 p0, 0x0

    .line 5384
    :cond_0
    :goto_0
    return-object p0

    .line 5377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5378
    if-lez v0, :cond_0

    .line 5381
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5382
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5384
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 5411
    if-nez p0, :cond_1

    .line 5412
    const/4 p0, 0x0

    .line 5437
    :cond_0
    :goto_0
    return-object p0

    .line 5414
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5415
    const-string p2, " "

    .line 5417
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5419
    sub-int v2, p1, v2

    .line 5420
    if-lez v2, :cond_0

    .line 5423
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 5424
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5427
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5428
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5429
    :cond_4
    if-ge v2, v1, :cond_5

    .line 5430
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5432
    :cond_5
    new-array v3, v2, [C

    .line 5433
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5434
    :goto_1
    if-ge v0, v2, :cond_6

    .line 5435
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 5434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5437
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 5453
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5637
    if-nez p0, :cond_0

    .line 5638
    const/4 v0, 0x0

    .line 5640
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5660
    if-nez p0, :cond_0

    .line 5661
    const/4 v0, 0x0

    .line 5663
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2245
    if-nez p0, :cond_0

    .line 2246
    const/4 v0, 0x0

    .line 2257
    :goto_0
    return-object v0

    .line 2248
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2249
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2251
    :cond_2
    if-gez p1, :cond_3

    .line 2252
    const/4 p1, 0x0

    .line 2254
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 2255
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2257
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 7364
    if-nez p0, :cond_0

    .line 7365
    const/4 v0, 0x0

    .line 7367
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1026
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v0

    .line 1029
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1030
    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1033
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1035
    :cond_4
    if-eqz p3, :cond_5

    .line 1036
    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1040
    :goto_1
    if-ltz v0, :cond_0

    .line 1043
    add-int/lit8 v1, v1, 0x1

    .line 1044
    if-lt v1, p2, :cond_4

    goto :goto_0

    .line 1038
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4938
    if-nez p0, :cond_0

    .line 4939
    const/4 v0, 0x0

    .line 4962
    :goto_0
    return-object v0

    .line 4941
    :cond_0
    if-nez p1, :cond_1

    .line 4942
    const-string p1, ""

    .line 4944
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4945
    if-gez p2, :cond_6

    move v0, v3

    .line 4948
    :goto_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 4951
    :cond_2
    if-gez p3, :cond_5

    move v1, v3

    .line 4954
    :goto_2
    if-le v1, v2, :cond_3

    move v1, v2

    .line 4957
    :cond_3
    if-le v0, v1, :cond_4

    .line 4962
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    move v0, p2

    goto :goto_1
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 7513
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7523
    :cond_0
    :goto_0
    return-object p0

    .line 7516
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    .line 7517
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 7518
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7517
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7523
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7561
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7599
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4379
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 4389
    :cond_0
    :goto_0
    return-object p0

    .line 4382
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 4384
    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_3

    .line 4385
    aget-char v3, v4, v0

    if-eq v3, p1, :cond_2

    .line 4386
    add-int/lit8 v3, v2, 0x1

    aget-char v5, v4, v0

    aput-char v5, v4, v2

    move v2, v3

    .line 4384
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4389
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4353
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4356
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4284
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4290
    :cond_0
    :goto_0
    return-object p0

    .line 4287
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4288
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4320
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4326
    :cond_0
    :goto_0
    return-object p0

    .line 4323
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4324
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4458
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4215
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4221
    :cond_0
    :goto_0
    return-object p0

    .line 4218
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4250
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4256
    :cond_0
    :goto_0
    return-object p0

    .line 4253
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5210
    new-array v1, p1, [C

    .line 5211
    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5212
    aput-char p0, v1, v0

    .line 5211
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5214
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 5122
    if-nez p0, :cond_1

    .line 5123
    const/4 p0, 0x0

    .line 5154
    :cond_0
    :goto_0
    return-object p0

    .line 5125
    :cond_1
    if-gtz p1, :cond_2

    .line 5126
    const-string p0, ""

    goto :goto_0

    .line 5128
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5129
    if-eq p1, v3, :cond_0

    if-eqz v1, :cond_0

    .line 5132
    if-ne v1, v3, :cond_3

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_3

    .line 5133
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5136
    :cond_3
    mul-int v2, v1, p1

    .line 5137
    packed-switch v1, :pswitch_data_0

    .line 5150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5151
    :goto_1
    if-ge v0, p1, :cond_5

    .line 5152
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5139
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5141
    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5143
    new-array v2, v2, [C

    .line 5144
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_4

    .line 5145
    aput-char v1, v2, v0

    .line 5146
    add-int/lit8 v4, v0, 0x1

    aput-char v3, v2, v4

    .line 5144
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 5148
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 5154
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5179
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5180
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5184
    :goto_0
    return-object v0

    .line 5183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5184
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4485
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v0, 0x40

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 4517
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4539
    :cond_0
    :goto_0
    return-object p0

    .line 4521
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 4522
    if-eq v1, v6, :cond_0

    .line 4525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 4526
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 4527
    if-gez v3, :cond_2

    move v3, v2

    .line 4528
    :cond_2
    if-gez p3, :cond_4

    const/16 v0, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v0, v3

    .line 4529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 4530
    :goto_2
    if-eq v1, v6, :cond_5

    .line 4531
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4532
    add-int v0, v1, v4

    .line 4533
    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_5

    .line 4534
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 4528
    :cond_4
    if-gt p3, v0, :cond_3

    move v0, p3

    goto :goto_1

    .line 4538
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4539
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4835
    if-nez p0, :cond_0

    .line 4836
    const/4 v0, 0x0

    .line 4838
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4878
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4903
    :cond_0
    :goto_0
    return-object p0

    .line 4881
    :cond_1
    if-nez p2, :cond_2

    .line 4882
    const-string p2, ""

    .line 4885
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 4888
    :goto_1
    if-ge v1, v3, :cond_5

    .line 4889
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4890
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4891
    if-ltz v6, :cond_4

    .line 4892
    const/4 v0, 0x1

    .line 4893
    if-ge v6, v2, :cond_3

    .line 4894
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4888
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4897
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4900
    :cond_5
    if-eqz v0, :cond_0

    .line 4901
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4582
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 10

    .prologue
    .line 4690
    move-object v4, p0

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v4

    .line 4806
    :cond_1
    :goto_1
    return-object v0

    .line 4696
    :cond_2
    if-gez p4, :cond_3

    .line 4697
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4701
    :cond_3
    array-length v6, p1

    .line 4702
    array-length v0, p2

    .line 4705
    if-eq v6, v0, :cond_4

    .line 4706
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Search and Replace array lengths don\'t match: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4713
    :cond_4
    new-array v7, v6, [Z

    .line 4716
    const/4 v2, -0x1

    .line 4717
    const/4 v0, -0x1

    .line 4718
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_8

    .line 4723
    aget-boolean v3, v7, v1

    if-nez v3, :cond_5

    aget-object v3, p1, v1

    if-eqz v3, :cond_5

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p2, v1

    if-eqz v3, :cond_5

    .line 4725
    aget-object v3, p1, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 4730
    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    .line 4731
    const/4 v3, 0x1

    aput-boolean v3, v7, v1

    .line 4722
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4733
    :cond_6
    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    if-ge v3, v2, :cond_5

    :cond_7
    move v0, v1

    move v2, v3

    .line 4735
    goto :goto_3

    .line 4742
    :cond_8
    const/4 v1, -0x1

    if-ne v2, v1, :cond_9

    move-object v0, v4

    .line 4743
    goto :goto_1

    .line 4746
    :cond_9
    const/4 v5, 0x0

    .line 4749
    const/4 v3, 0x0

    .line 4752
    const/4 v1, 0x0

    :goto_4
    array-length v8, p1

    if-ge v1, v8, :cond_b

    .line 4753
    aget-object v8, p1, v1

    if-eqz v8, :cond_a

    aget-object v8, p2, v1

    if-eqz v8, :cond_a

    .line 4754
    aget-object v8, p2, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, p1, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 4757
    if-lez v8, :cond_a

    .line 4758
    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v3, v8

    .line 4752
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4762
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4764
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    move v0, v5

    .line 4766
    :goto_5
    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 4768
    :goto_6
    if-ge v0, v2, :cond_c

    .line 4769
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4768
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4771
    :cond_c
    aget-object v0, p2, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4773
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v2, v0

    .line 4775
    const/4 v2, -0x1

    .line 4776
    const/4 v0, -0x1

    .line 4777
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_10

    .line 4781
    aget-boolean v3, v7, v1

    if-nez v3, :cond_d

    aget-object v3, p1, v1

    if-eqz v3, :cond_d

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    aget-object v3, p2, v1

    if-eqz v3, :cond_d

    .line 4783
    aget-object v3, p1, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 4788
    const/4 v9, -0x1

    if-ne v3, v9, :cond_e

    .line 4789
    const/4 v3, 0x1

    aput-boolean v3, v7, v1

    .line 4780
    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4791
    :cond_e
    const/4 v9, -0x1

    if-eq v2, v9, :cond_f

    if-ge v3, v2, :cond_d

    :cond_f
    move v0, v1

    move v2, v3

    .line 4793
    goto :goto_8

    :cond_10
    move v1, v0

    move v0, v5

    .line 4780
    goto :goto_5

    .line 4800
    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 4801
    :goto_9
    if-ge v0, v1, :cond_12

    .line 4802
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4801
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4804
    :cond_12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4805
    if-eqz p3, :cond_1

    .line 4809
    add-int/lit8 p4, p4, -0x1

    move-object v4, v0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4632
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 4633
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4632
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4418
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4442
    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6284
    if-nez p0, :cond_0

    .line 6285
    const/4 v0, 0x0

    .line 6287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6310
    if-nez p0, :cond_0

    .line 6311
    const/4 v0, 0x0

    .line 6317
    :goto_0
    return-object v0

    .line 6315
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 6316
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 6317
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2207
    if-nez p0, :cond_1

    .line 2208
    const/4 p0, 0x0

    .line 2216
    :cond_0
    :goto_0
    return-object p0

    .line 2210
    :cond_1
    if-gez p1, :cond_2

    .line 2211
    const-string p0, ""

    goto :goto_0

    .line 2213
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5237
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5262
    if-nez p0, :cond_1

    .line 5263
    const/4 p0, 0x0

    .line 5272
    :cond_0
    :goto_0
    return-object p0

    .line 5265
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5266
    if-lez v0, :cond_0

    .line 5269
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5270
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5272
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 5299
    if-nez p0, :cond_1

    .line 5300
    const/4 p0, 0x0

    .line 5325
    :cond_0
    :goto_0
    return-object p0

    .line 5302
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5303
    const-string p2, " "

    .line 5305
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5307
    sub-int v2, p1, v2

    .line 5308
    if-lez v2, :cond_0

    .line 5311
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 5312
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5315
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5316
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5317
    :cond_4
    if-ge v2, v1, :cond_5

    .line 5318
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5320
    :cond_5
    new-array v3, v2, [C

    .line 5321
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5322
    :goto_1
    if-ge v0, v2, :cond_6

    .line 5323
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 5322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5325
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static score(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 7035
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 7036
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7037
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 7044
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 7048
    invoke-static {v1, v0, v4}, Lorg/apache/commons/lang3/StringUtils;->getSetOfMatchingCharacterWithin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v5

    .line 7049
    invoke-static {v0, v1, v4}, Lorg/apache/commons/lang3/StringUtils;->getSetOfMatchingCharacterWithin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    .line 7053
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-wide v0, v2

    .line 7072
    :goto_1
    return-wide v0

    .line 7039
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7040
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7059
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_3

    move-wide v0, v2

    .line 7060
    goto :goto_1

    .line 7065
    :cond_3
    invoke-static {v5, v4}, Lorg/apache/commons/lang3/StringUtils;->transpositions(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 7068
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v8, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v8, v0

    add-double/2addr v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v2

    int-to-double v2, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    .line 7072
    goto :goto_1
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2575
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2603
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2632
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2666
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3222
    if-nez p0, :cond_0

    .line 3223
    const/4 v0, 0x0

    .line 3250
    :goto_0
    return-object v0

    .line 3225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3226
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3228
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3229
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3231
    aget-char v0, v5, v2

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v1

    .line 3232
    :goto_1
    array-length v4, v5

    if-ge v0, v4, :cond_5

    .line 3233
    aget-char v4, v5, v0

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    .line 3234
    if-eq v4, v2, :cond_3

    .line 3235
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    if-ne v2, v1, :cond_4

    .line 3238
    add-int/lit8 v2, v0, -0x1

    .line 3239
    if-eq v2, v3, :cond_2

    .line 3240
    new-instance v7, Ljava/lang/String;

    sub-int v8, v2, v3

    invoke-direct {v7, v5, v3, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :cond_2
    :goto_2
    move v2, v4

    .line 3232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3244
    :cond_4
    new-instance v2, Ljava/lang/String;

    sub-int v7, v0, v3

    invoke-direct {v2, v5, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v0

    .line 3245
    goto :goto_2

    .line 3249
    :cond_5
    new-instance v0, Ljava/lang/String;

    array-length v1, v5

    sub-int/2addr v1, v3

    invoke-direct {v0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3250
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3204
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2693
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2724
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2753
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2786
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2805
    if-nez p0, :cond_0

    .line 2866
    :goto_0
    return-object v0

    .line 2809
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2811
    if-nez v1, :cond_1

    .line 2812
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2815
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2817
    :cond_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2820
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2822
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    move v3, v2

    .line 2826
    :goto_1
    if-ge v0, v1, :cond_9

    .line 2827
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2829
    if-ltz v0, :cond_8

    .line 2830
    if-le v0, v3, :cond_5

    .line 2831
    add-int/lit8 v4, v2, 0x1

    .line 2833
    if-ne v4, p2, :cond_4

    .line 2835
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v2, v4

    goto :goto_1

    .line 2839
    :cond_4
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    add-int v2, v0, v5

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2848
    :cond_5
    if-eqz p3, :cond_6

    .line 2849
    add-int/lit8 v2, v2, 0x1

    .line 2850
    if-ne v2, p2, :cond_7

    .line 2852
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 2857
    :cond_6
    :goto_2
    add-int v3, v0, v5

    goto :goto_1

    .line 2854
    :cond_7
    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2861
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 2862
    goto :goto_1

    .line 2866
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2895
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2931
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3014
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3054
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2949
    if-nez p0, :cond_0

    .line 2950
    const/4 v0, 0x0

    .line 2977
    :goto_0
    return-object v0

    .line 2952
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2953
    if-nez v6, :cond_1

    .line 2954
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2956
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    move v2, v3

    move v4, v3

    move v5, v3

    .line 2960
    :goto_1
    if-ge v5, v6, :cond_5

    .line 2961
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, p1, :cond_4

    .line 2962
    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    .line 2963
    :cond_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v2, v3

    .line 2967
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 2968
    goto :goto_1

    .line 2972
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v2, v1

    move v5, v0

    move v0, v3

    goto :goto_1

    .line 2974
    :cond_5
    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 2975
    :cond_6
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2977
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3076
    if-nez p0, :cond_0

    .line 3077
    const/4 v0, 0x0

    .line 3153
    :goto_0
    return-object v0

    .line 3079
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3080
    if-nez v4, :cond_1

    .line 3081
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3083
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3088
    if-nez p1, :cond_4

    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    .line 3090
    :goto_1
    if-ge v0, v4, :cond_e

    .line 3091
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3092
    if-nez v5, :cond_2

    if-eqz p3, :cond_13

    .line 3094
    :cond_2
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_12

    move v0, v1

    move v3, v4

    .line 3098
    :goto_2
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3101
    :goto_3
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3102
    goto :goto_1

    .line 3106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_1

    .line 3108
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 3110
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    .line 3111
    :goto_4
    if-ge v0, v4, :cond_7

    .line 3112
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_6

    .line 3113
    if-nez v5, :cond_5

    if-eqz p3, :cond_10

    .line 3115
    :cond_5
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_f

    move v0, v1

    move v3, v4

    .line 3119
    :goto_5
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3122
    :goto_6
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3123
    goto :goto_4

    .line 3127
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_4

    :cond_7
    move v1, v0

    move v0, v7

    .line 3150
    :goto_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    if-eqz v3, :cond_9

    .line 3151
    :cond_8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3153
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    .line 3131
    :goto_8
    if-ge v0, v4, :cond_e

    .line 3132
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_b

    .line 3133
    if-nez v5, :cond_a

    if-eqz p3, :cond_d

    .line 3135
    :cond_a
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_c

    move v0, v1

    move v3, v4

    .line 3139
    :goto_9
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3142
    :goto_a
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3143
    goto :goto_8

    .line 3147
    :cond_b
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_8

    :cond_c
    move v3, v0

    move v0, v2

    goto :goto_9

    :cond_d
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto :goto_a

    :cond_e
    move v1, v0

    move v0, v7

    goto :goto_7

    :cond_f
    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_10
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto :goto_6

    :cond_11
    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    goto :goto_8

    :cond_12
    move v3, v0

    move v0, v2

    goto/16 :goto_2

    :cond_13
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_3
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 7162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 7203
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 7204
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 7209
    :cond_1
    :goto_0
    return v2

    .line 7206
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 7209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7232
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7240
    :cond_0
    :goto_0
    return v0

    .line 7235
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 7236
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7237
    const/4 v0, 0x1

    goto :goto_0

    .line 7235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 7188
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    :goto_0
    return-object p0

    .line 588
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 762
    if-nez p0, :cond_0

    .line 763
    const/4 v0, 0x0

    .line 768
    :goto_0
    return-object v0

    .line 765
    :cond_0
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 766
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 733
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-object p0

    .line 736
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 737
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 738
    aget-object v3, p0, v1

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 740
    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-object p0

    .line 667
    :cond_1
    if-nez p1, :cond_2

    .line 668
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 671
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 675
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 678
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 618
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object p0

    .line 621
    :cond_1
    const/4 v0, 0x0

    .line 622
    if-nez p1, :cond_2

    .line 623
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 633
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    if-nez p0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-object v0

    .line 528
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2064
    if-nez p0, :cond_0

    .line 2065
    const/4 v0, 0x0

    .line 2080
    :goto_0
    return-object v0

    .line 2069
    :cond_0
    if-gez p1, :cond_3

    .line 2070
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2073
    :goto_1
    if-gez v0, :cond_1

    .line 2074
    const/4 v0, 0x0

    .line 2076
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 2077
    const-string v0, ""

    goto :goto_0

    .line 2080
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2119
    if-nez p0, :cond_0

    .line 2120
    const/4 v0, 0x0

    .line 2148
    :goto_0
    return-object v0

    .line 2124
    :cond_0
    if-gez p2, :cond_6

    .line 2125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 2127
    :goto_1
    if-gez p1, :cond_1

    .line 2128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    .line 2132
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2137
    :cond_2
    if-le p1, v1, :cond_3

    .line 2138
    const-string v0, ""

    goto :goto_0

    .line 2141
    :cond_3
    if-gez p1, :cond_4

    move p1, v0

    .line 2144
    :cond_4
    if-gez v1, :cond_5

    .line 2148
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v1, p2

    goto :goto_1
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2332
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    :goto_0
    return-object p0

    .line 2335
    :cond_0
    if-nez p1, :cond_1

    .line 2336
    const-string p0, ""

    goto :goto_0

    .line 2338
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2339
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2340
    const-string p0, ""

    goto :goto_0

    .line 2342
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2413
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2423
    :goto_0
    return-object p0

    .line 2416
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    const-string p0, ""

    goto :goto_0

    .line 2419
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2420
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 2421
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 2423
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2290
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-object p0

    .line 2293
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2294
    const-string p0, ""

    goto :goto_0

    .line 2296
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2297
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2300
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2373
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    :cond_0
    :goto_0
    return-object p0

    .line 2376
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2377
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2380
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2450
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 2481
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2491
    :cond_0
    :goto_0
    return-object v0

    .line 2484
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2485
    if-eq v1, v3, :cond_0

    .line 2486
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2487
    if-eq v2, v3, :cond_0

    .line 2488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2517
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2544
    :cond_0
    :goto_0
    return-object v0

    .line 2520
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2521
    if-nez v2, :cond_2

    .line 2522
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2524
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2527
    const/4 v1, 0x0

    .line 2528
    :goto_1
    sub-int v6, v2, v3

    if-ge v1, v6, :cond_3

    .line 2529
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2530
    if-ltz v1, :cond_3

    .line 2531
    add-int/2addr v1, v4

    .line 2534
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2535
    if-ltz v6, :cond_3

    .line 2536
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2539
    add-int v1, v6, v3

    .line 2540
    goto :goto_1

    .line 2541
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2544
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 5770
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5786
    :goto_0
    return-object p0

    .line 5774
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 5776
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 5777
    aget-char v2, v1, v0

    .line 5778
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5779
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 5776
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5780
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5781
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 5782
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5783
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 5786
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7636
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7619
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private static transpositions(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7113
    move v1, v0

    .line 7114
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7115
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 7116
    add-int/lit8 v1, v1, 0x1

    .line 7114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7119
    :cond_1
    div-int/lit8 v0, v1, 0x2

    return v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5726
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5736
    :cond_0
    :goto_0
    return-object p0

    .line 5730
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5731
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5588
    if-nez p0, :cond_0

    .line 5589
    const/4 v0, 0x0

    .line 5591
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5611
    if-nez p0, :cond_0

    .line 5612
    const/4 v0, 0x0

    .line 5614
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

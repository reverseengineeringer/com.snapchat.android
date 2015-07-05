.class public Lorg/apache/commons/lang3/text/translate/OctalUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method

.method private isOctalDigit(C)Z
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x37

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZeroToThree(C)Z
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x33

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6

    .prologue
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    add-int/lit8 v2, p2, 0x1

    .line 44
    add-int/lit8 v3, p2, 0x2

    .line 45
    add-int/lit8 v4, p2, 0x3

    .line 48
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isZeroToThree(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->isOctalDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

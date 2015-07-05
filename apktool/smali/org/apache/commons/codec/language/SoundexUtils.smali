.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object p0

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 45
    new-array v5, v4, [C

    move v2, v3

    move v1, v3

    .line 47
    :goto_1
    if-ge v2, v4, :cond_2

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 47
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 52
    :cond_2
    if-ne v1, v4, :cond_3

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 85
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 120
    :cond_0
    return v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 115
    :goto_0
    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

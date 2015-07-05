.class public Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    .line 99
    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-static {v2}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-char v0, v0, v2

    invoke-static {v0}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

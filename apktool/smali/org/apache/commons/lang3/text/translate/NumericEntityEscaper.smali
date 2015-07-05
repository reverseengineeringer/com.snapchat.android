.class public Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "SourceFile"


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    .line 55
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    .line 46
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    .line 47
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    .line 48
    return-void
.end method

.method public static above(I)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 1

    .prologue
    .line 64
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-boolean v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    if-eqz v1, :cond_1

    .line 105
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_2

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_0

    .line 114
    :cond_2
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public Lorg/apache/commons/lang3/text/translate/LookupTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 47
    const v0, 0x7fffffff

    .line 49
    if-eqz p1, :cond_3

    .line 50
    array-length v5, p1

    move v4, v2

    move v1, v2

    move v3, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p1, v4

    .line 51
    iget-object v6, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v0, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 53
    if-ge v0, v3, :cond_0

    move v3, v0

    .line 56
    :cond_0
    if-le v0, v1, :cond_2

    .line 50
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 61
    :goto_2
    iput v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    .line 62
    iput v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 63
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3

    .prologue
    .line 70
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 71
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    add-int/2addr v1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    move v1, v0

    .line 75
    :goto_0
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    if-lt v1, v0, :cond_1

    .line 76
    add-int v0, p2, v1

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    :goto_1
    return v1

    .line 75
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

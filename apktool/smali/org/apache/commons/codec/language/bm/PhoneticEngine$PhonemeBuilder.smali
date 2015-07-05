.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhonemeBuilder"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    new-instance v1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v2, ""

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 91
    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final apply(Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 6

    .prologue
    .line 108
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 111
    invoke-interface {p1}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;->getPhonemes()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 112
    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->join(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-direct {v0, v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final getPhonemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-object v0
.end method

.method public final makeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

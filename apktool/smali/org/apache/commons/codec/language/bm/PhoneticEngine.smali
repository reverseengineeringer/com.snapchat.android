.class public Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$2;,
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;,
        Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    }
.end annotation


# static fields
.field private static final NAME_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final concat:Z

.field private final lang:Lorg/apache/commons/codec/language/bm/Lang;

.field private final nameType:Lorg/apache/commons/codec/language/bm/NameType;

.field private final ruleType:Lorg/apache/commons/codec/language/bm/RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 232
    sput-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "bar"

    aput-object v4, v3, v6

    const-string v4, "ben"

    aput-object v4, v3, v7

    const-string v4, "da"

    aput-object v4, v3, v8

    const-string v4, "de"

    aput-object v4, v3, v9

    const-string v4, "van"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "von"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "al"

    aput-object v4, v3, v6

    const-string v4, "el"

    aput-object v4, v3, v7

    const-string v4, "da"

    aput-object v4, v3, v8

    const-string v4, "dal"

    aput-object v4, v3, v9

    const-string v4, "de"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "del"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "dela"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "de la"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "della"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "des"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "di"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "do"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "dos"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "du"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "van"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "von"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "da"

    aput-object v4, v3, v6

    const-string v4, "dal"

    aput-object v4, v3, v7

    const-string v4, "de"

    aput-object v4, v3, v8

    const-string v4, "del"

    aput-object v4, v3, v9

    const-string v4, "dela"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "de la"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "della"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "des"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "di"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "do"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "dos"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "du"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "van"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "von"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Z)V
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    sget-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    if-ne p2, v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ruleType must not be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    .line 315
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    .line 316
    iput-boolean p3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    .line 317
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Lang;->instance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Lang;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    .line 318
    return-void
.end method

.method private applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;)",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;"
        }
    .end annotation

    .prologue
    .line 329
    if-nez p2, :cond_0

    .line 330
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "finalRules can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :goto_0
    return-object p1

    .line 336
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    sget-object v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 338
    invoke-virtual {p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 339
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v1

    .line 340
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getPhonemeText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 343
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 344
    new-instance v5, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    invoke-direct {v5, p2, v4, v1, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;I)V

    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object v5

    .line 345
    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->isFound()Z

    move-result v6

    .line 346
    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v1

    .line 348
    if-nez v6, :cond_2

    .line 350
    add-int/lit8 v6, v0, 0x1

    invoke-interface {v4, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v1

    .line 353
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v0

    goto :goto_2

    .line 360
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->getPhonemes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 363
    :cond_4
    new-instance p1, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, v2, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;)V

    goto :goto_0
.end method

.method private static cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 248
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/CharSequence;

    .line 249
    new-instance v1, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;-><init>(Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 282
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    .line 375
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 387
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    sget-object v1, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, v1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v3

    .line 389
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    const-string v4, "common"

    invoke-static {v0, v1, v4}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 391
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, v1, p2}, Lorg/apache/commons/codec/language/bm/Rule;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;Lorg/apache/commons/codec/language/bm/RuleType;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Ljava/util/List;

    move-result-object v5

    .line 398
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v6, 0x20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    sget-object v6, Lorg/apache/commons/codec/language/bm/NameType;->GENERIC:Lorg/apache/commons/codec/language/bm/NameType;

    if-ne v0, v6, :cond_2

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v7, :cond_0

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "d\'"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")-("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 406
    :cond_0
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v6, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_2
    const-string v0, "\\s+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 418
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 421
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$2;->$SwitchMap$org$apache$commons$codec$language$bm$NameType:[I

    iget-object v7, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v7}, Lorg/apache/commons/codec/language/bm/NameType;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unreachable case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 425
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v0, v0, v8

    .line 426
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_3
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v7, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v6, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 441
    :goto_2
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    if-eqz v0, :cond_4

    .line 443
    const-string v0, " "

    invoke-static {v6, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_3
    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v1

    .line 460
    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v1

    move v1, v2

    .line 461
    :goto_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 462
    new-instance v2, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    invoke-direct {v2, v3, v6, v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;-><init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;I)V

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getI()I

    move-result v1

    .line 464
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v0

    goto :goto_4

    .line 431
    :pswitch_1
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    sget-object v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->NAME_PREFIXES:Ljava/util/Map;

    iget-object v7, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v6, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 435
    :pswitch_2
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 444
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 446
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 449
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 454
    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 469
    :cond_7
    invoke-direct {p0, v0, v4}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v0

    .line 471
    invoke-direct {p0, v0, v5}, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->applyFinalRules(Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;Ljava/util/List;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->makeString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLang()Lorg/apache/commons/codec/language/bm/Lang;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->lang:Lorg/apache/commons/codec/language/bm/Lang;

    return-object v0
.end method

.method public getNameType()Lorg/apache/commons/codec/language/bm/NameType;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->nameType:Lorg/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method

.method public getRuleType()Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->ruleType:Lorg/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method

.method public isConcat()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine;->concat:Z

    return v0
.end method

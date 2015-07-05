.class public final Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;
.super Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Languages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SomeLanguages"
.end annotation


# instance fields
.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/Languages$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isSingleton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    if-ne p1, v0, :cond_1

    move-object p0, p1

    .line 127
    :cond_0
    :goto_0
    return-object p0

    .line 118
    :cond_1
    sget-object v0, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    if-eq p1, v0, :cond_0

    .line 121
    check-cast p1, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;

    .line 122
    iget-object v0, p1, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    iget-object v1, p1, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 127
    invoke-static {v0}, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object p0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Languages("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;->languages:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

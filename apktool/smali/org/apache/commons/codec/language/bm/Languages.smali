.class public Lorg/apache/commons/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Languages$SomeLanguages;,
        Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/lang/String; = "any"

.field public static final ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private static final LANGUAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/Languages;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;


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
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 141
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    .line 144
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 145
    sget-object v4, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Languages;->langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$1;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Languages$1;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 230
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages$2;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Languages$2;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
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
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    .line 264
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 156
    const-class v0, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to resolve required resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v3, Ljava/util/Scanner;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v1

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 166
    if-eqz v0, :cond_2

    .line 167
    const-string v5, "*/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 168
    goto :goto_0

    .line 173
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 176
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_4
    new-instance v0, Lorg/apache/commons/codec/language/bm/Languages;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Languages;

    return-object v0
.end method

.method private static langResourceName(Lorg/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    const-string v0, "org/apache/commons/codec/language/bm/%s_languages.txt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLanguages()Ljava/util/Set;
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
    .line 267
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-object v0
.end method

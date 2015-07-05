.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 138
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 143
    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 320
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 321
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 322
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 323
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 324
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 340
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 341
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 342
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 343
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 344
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 358
    sget-object v5, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 376
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 377
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 378
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 379
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 380
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    return-void

    .line 893
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    .line 894
    const-string v0, "Infinite loop in property interpolation of "

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 895
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 896
    const-string v0, ": "

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 897
    const-string v0, "->"

    invoke-virtual {v1, p2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 898
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 213
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 215
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    :cond_1
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v13

    .line 752
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v14

    .line 753
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v15

    .line 754
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v16

    .line 755
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v17

    .line 757
    if-nez p4, :cond_0

    const/4 v2, 0x1

    .line 758
    :goto_0
    const/4 v8, 0x0

    .line 759
    const/4 v7, 0x0

    .line 760
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 761
    add-int v5, p2, p3

    move/from16 v12, p2

    move-object/from16 v3, p4

    .line 763
    :goto_1
    if-ge v12, v5, :cond_c

    .line 764
    move/from16 v0, p2

    invoke-virtual {v13, v6, v12, v0, v5}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    .line 766
    if-nez v10, :cond_1

    .line 767
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1

    .line 757
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 770
    :cond_1
    move/from16 v0, p2

    if-le v12, v0, :cond_2

    add-int/lit8 v4, v12, -0x1

    aget-char v4, v6, v4

    if-ne v4, v15, :cond_2

    .line 772
    add-int/lit8 v4, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 773
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 774
    add-int/lit8 v7, v7, -0x1

    .line 775
    const/4 v8, 0x1

    .line 776
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 780
    :cond_2
    add-int v9, v12, v10

    .line 781
    const/4 v4, 0x0

    .line 783
    :goto_2
    if-ge v9, v5, :cond_b

    .line 784
    if-eqz v17, :cond_3

    move/from16 v0, p2

    invoke-virtual {v13, v6, v9, v0, v5}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    if-eqz v11, :cond_3

    .line 788
    add-int/lit8 v4, v4, 0x1

    .line 789
    add-int/2addr v9, v11

    .line 790
    goto :goto_2

    .line 793
    :cond_3
    move/from16 v0, p2

    invoke-virtual {v14, v6, v9, v0, v5}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    .line 795
    if-nez v18, :cond_4

    .line 796
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 799
    :cond_4
    if-nez v4, :cond_a

    .line 800
    new-instance v11, Ljava/lang/String;

    add-int v4, v12, v10

    sub-int v19, v9, v12

    sub-int v10, v19, v10

    invoke-direct {v11, v6, v4, v10}, Ljava/lang/String;-><init>([CII)V

    .line 803
    if-eqz v17, :cond_5

    .line 804
    new-instance v4, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v4, v11}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 806
    invoke-virtual {v4}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 808
    :cond_5
    add-int v4, v9, v18

    .line 812
    const/4 v10, 0x0

    .line 814
    if-eqz v16, :cond_f

    .line 815
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    .line 816
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_f

    .line 819
    if-nez v17, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v9, v9, v1}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v19

    if-nez v19, :cond_f

    .line 821
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v19

    if-eqz v19, :cond_9

    .line 824
    const/4 v10, 0x0

    invoke-virtual {v11, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 825
    add-int v9, v9, v19

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 832
    :goto_4
    if-nez v3, :cond_7

    .line 833
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 834
    new-instance v11, Ljava/lang/String;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v11, v6, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 840
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1, v12, v4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v10

    .line 845
    if-nez v10, :cond_10

    .line 848
    :goto_5
    if-eqz v9, :cond_8

    .line 850
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 851
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4, v9}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 852
    const/4 v8, 0x1

    .line 853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v6, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v9

    .line 855
    add-int/2addr v6, v9

    sub-int v9, v4, v12

    sub-int/2addr v6, v9

    .line 857
    add-int/2addr v4, v6

    .line 858
    add-int/2addr v5, v6

    .line 859
    add-int/2addr v7, v6

    .line 860
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 865
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v12, v4

    .line 867
    goto/16 :goto_1

    .line 817
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 869
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 870
    add-int v9, v9, v18

    goto/16 :goto_2

    :cond_b
    move v12, v9

    .line 876
    goto/16 :goto_1

    .line 877
    :cond_c
    if-eqz v2, :cond_d

    .line 878
    if-eqz v8, :cond_e

    const/4 v7, 0x1

    .line 880
    :cond_d
    :goto_6
    return v7

    .line 878
    :cond_e
    const/4 v7, 0x0

    goto :goto_6

    :cond_f
    move-object v9, v10

    move-object v10, v11

    goto :goto_4

    :cond_10
    move-object v9, v10

    goto :goto_5
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .prologue
    .line 934
    iget-char v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 538
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 539
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 540
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    if-nez p1, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    .line 596
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 597
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 598
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    if-nez p1, :cond_1

    .line 392
    const/4 p1, 0x0

    .line 398
    :cond_0
    :goto_0
    return-object p1

    .line 394
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 417
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 418
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    .line 477
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 479
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 501
    :goto_0
    return-object v0

    .line 499
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 500
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 501
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 558
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 578
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 579
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 580
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 439
    :goto_0
    return-object v0

    .line 437
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 438
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 439
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    .line 459
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 460
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 461
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 611
    if-nez p1, :cond_0

    .line 614
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 631
    if-nez p1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 635
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 653
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 674
    if-nez p1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 678
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    if-nez p1, :cond_0

    .line 697
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    .line 920
    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0

    .prologue
    .line 1195
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 1196
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0

    .prologue
    .line 945
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    .line 946
    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1

    .prologue
    .line 1127
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1

    .prologue
    .line 1145
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 1149
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object p0

    goto :goto_0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1112
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1

    .prologue
    .line 993
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2

    .prologue
    .line 1007
    if-nez p1, :cond_0

    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 979
    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1169
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    .line 1170
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1

    .prologue
    .line 1058
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2

    .prologue
    .line 1072
    if-nez p1, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 2

    .prologue
    .line 1040
    if-nez p1, :cond_0

    .line 1041
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1044
    return-object p0
.end method

.method protected substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

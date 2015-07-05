.class public Lorg/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    }
.end annotation


# static fields
.field public static final WILDCARD_ALL:Ljava/lang/reflect/WildcardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->WILDCARD_ALL:Ljava/lang/reflect/WildcardType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method static synthetic access$100(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method private static varargs appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 1838
    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1839
    array-length v0, p2

    if-lez v0, :cond_0

    .line 1840
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const/4 v0, 0x1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1842
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1845
    :cond_0
    return-object p0
.end method

.method private static classToString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1745
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1746
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1751
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1752
    const-string v1, ", "

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    .line 1753
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1755
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1748
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static containsTypeVariables(Ljava/lang/reflect/Type;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1428
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v0

    .line 1431
    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 1432
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1434
    :cond_2
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_4

    .line 1435
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 1436
    invoke-static {v5}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1440
    goto :goto_0

    .line 1442
    :cond_4
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_5

    .line 1443
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 1444
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1447
    goto :goto_0
.end method

.method public static determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 959
    :goto_0
    const-string v0, "cls is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v0, "superType is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 965
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 989
    :goto_1
    return-object v0

    .line 969
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 970
    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 974
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 977
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 978
    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    goto :goto_0

    .line 981
    :cond_2
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 982
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    .line 985
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v1

    .line 987
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    move-object v0, v1

    .line 989
    goto :goto_1
.end method

.method private static equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    .line 1612
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    .line 1595
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1596
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1597
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 1601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 1572
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x1

    .line 1584
    :goto_0
    return v0

    .line 1575
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1576
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1578
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 1579
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1581
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 1582
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1584
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1624
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 1625
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 1626
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return v0

    .line 1626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1640
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 1641
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1642
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1648
    :cond_0
    :goto_1
    return v1

    .line 1641
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1646
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1532
    array-length v0, p1

    new-array v5, v0, [Ljava/lang/reflect/Type;

    .line 1534
    array-length v6, p1

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v0, p1, v1

    .line 1535
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "missing argument mapping for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4, v7, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    aput-object v0, v5, v3

    .line 1534
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_0

    .line 1538
    :cond_0
    return-object v5
.end method

.method public static genericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 3

    .prologue
    .line 1559
    new-instance v1, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;

    const-string v0, "componentType is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v1
.end method

.method private static genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1826
    const-string v0, "%s[]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1345
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1346
    check-cast p0, Ljava/lang/Class;

    .line 1347
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1352
    :cond_0
    :goto_0
    return-object v0

    .line 1349
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_0

    .line 1350
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method private static getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1053
    const/4 v2, 0x0

    .line 1056
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 1057
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1060
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 1070
    :goto_1
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1056
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, v1

    goto :goto_0

    .line 1061
    :cond_0
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1062
    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    .line 1064
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected generic interface type found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_2
    if-eqz v2, :cond_3

    .line 1084
    :goto_3
    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method public static getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1162
    const-string v0, "typeVariable is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1165
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1195
    const-string v0, "wildcardType is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1198
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_0
    return-object v0
.end method

.method public static getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1179
    const-string v0, "wildcardType is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1182
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1240
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1247
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 1248
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wait... What!? Type of rawType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1251
    :cond_0
    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1267
    move-object v0, p0

    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1269
    check-cast v0, Ljava/lang/Class;

    .line 1324
    :goto_0
    return-object v0

    .line 1272
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 1274
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1277
    :cond_2
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_6

    .line 1278
    if-nez p1, :cond_3

    move-object v0, v2

    .line 1279
    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 1283
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    .line 1287
    instance-of v3, v1, Ljava/lang/Class;

    if-nez v3, :cond_4

    move-object v0, v2

    .line 1288
    goto :goto_0

    .line 1293
    :cond_4
    check-cast v1, Ljava/lang/Class;

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 1298
    if-nez v1, :cond_5

    move-object v0, v2

    .line 1299
    goto :goto_0

    .line 1303
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1305
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1306
    goto :goto_0

    .line 1313
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_7

    .line 1315
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1319
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1323
    :cond_7
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_8

    move-object v0, v2

    .line 1324
    goto :goto_0

    .line 1327
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 901
    const/4 v0, 0x0

    .line 927
    :cond_0
    :goto_0
    return-object v0

    .line 905
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 907
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 914
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 918
    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 922
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 918
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    .line 850
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    const/4 v1, 0x0

    .line 886
    :cond_0
    :goto_0
    return-object v1

    .line 854
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 857
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 859
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 860
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .line 869
    :goto_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 871
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 874
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    array-length v0, v5

    if-ge v2, v0, :cond_5

    .line 875
    aget-object v0, v4, v2

    .line 876
    aget-object v6, v5, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    :cond_2
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 864
    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    goto :goto_1

    .line 880
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    invoke-static {v3, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 797
    move-object v0, p0

    :cond_0
    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 798
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 831
    :goto_1
    return-object v0

    .line 801
    :cond_1
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    .line 802
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 805
    :cond_2
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_3

    .line 806
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 812
    :cond_3
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_5

    .line 813
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 815
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 813
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 820
    goto :goto_1

    .line 823
    :cond_5
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_7

    .line 824
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_3
    if-ge v2, v5, :cond_6

    aget-object v0, v4, v2

    .line 826
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 824
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 831
    goto :goto_1

    .line 833
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found an unhandled type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayType(Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 1336
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_2

    .line 360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 409
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 360
    goto :goto_1

    .line 365
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 366
    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 371
    goto :goto_1

    .line 374
    :cond_4
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 376
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1

    .line 379
    :cond_5
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_6

    .line 381
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_6
    instance-of v3, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_9

    .line 388
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_8

    aget-object v5, v3, v0

    .line 389
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    .line 390
    goto :goto_1

    .line 388
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 394
    goto :goto_1

    .line 399
    :cond_9
    instance-of v3, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_c

    .line 400
    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_b

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_1

    .line 408
    :cond_c
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_d

    move v0, v1

    .line 409
    goto :goto_1

    .line 412
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found an unhandled type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    if-nez p0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 521
    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 531
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 532
    check-cast p0, Ljava/lang/Class;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 539
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_5

    .line 541
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 545
    :cond_5
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_7

    .line 547
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 548
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 553
    goto :goto_0

    .line 556
    :cond_7
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_9

    .line 559
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 560
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 565
    goto :goto_0

    .line 568
    :cond_9
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_a

    move v0, v1

    .line 572
    goto :goto_0

    .line 575
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found an unhandled type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 426
    if-nez p0, :cond_0

    move v0, v1

    .line 478
    :goto_0
    return v0

    .line 432
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 433
    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 438
    goto :goto_0

    .line 442
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 445
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 448
    if-nez v3, :cond_3

    move v0, v2

    .line 449
    goto :goto_0

    .line 455
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 456
    goto :goto_0

    .line 460
    :cond_4
    invoke-static {p1, v0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 464
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 465
    invoke-static {v0, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 466
    invoke-static {v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    instance-of v7, v6, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_6

    invoke-static {v0, v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    move v0, v2

    .line 475
    goto :goto_0

    :cond_7
    move v0, v1

    .line 478
    goto :goto_0
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 326
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    .line 330
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 331
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 334
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 335
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 339
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 342
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 343
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 346
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found an unhandled type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 677
    if-nez p0, :cond_0

    move v0, v1

    .line 707
    :goto_0
    return v0

    .line 683
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 684
    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 689
    goto :goto_0

    .line 692
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 696
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 698
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 699
    invoke-static {v5, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 700
    goto :goto_0

    .line 698
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :cond_4
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    .line 707
    goto :goto_0

    .line 710
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found an unhandled type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 590
    if-nez p0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 597
    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 606
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 608
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_8

    .line 609
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 610
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 611
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 613
    array-length v8, v4

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_5

    aget-object v2, v4, v3

    .line 616
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 621
    array-length v10, v6

    move v2, v1

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v11, v6, v2

    .line 622
    invoke-static {v11, v9, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_3

    move v0, v1

    .line 623
    goto :goto_0

    .line 621
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 613
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 628
    :cond_5
    array-length v4, v5

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_0

    aget-object v3, v5, v2

    .line 631
    invoke-static {v3, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 636
    array-length v8, v7

    move v3, v1

    :goto_4
    if-ge v3, v8, :cond_7

    aget-object v9, v7, v3

    .line 637
    invoke-static {v6, v9, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_6

    move v0, v1

    .line 638
    goto :goto_0

    .line 636
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 628
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 645
    :cond_8
    array-length v3, v4

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_a

    aget-object v6, v4, v2

    .line 648
    invoke-static {v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {p0, v6, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_9

    move v0, v1

    .line 650
    goto :goto_0

    .line 645
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 654
    :cond_a
    array-length v3, v5

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_0

    aget-object v4, v5, v2

    .line 657
    invoke-static {v4, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_b

    move v0, v1

    .line 659
    goto/16 :goto_0

    .line 654
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1096
    if-nez p1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_3

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

.method private static mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1005
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 1007
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    .line 1014
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1018
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1024
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 1025
    aget-object v5, v3, v1

    .line 1026
    aget-object v0, v2, v1

    .line 1029
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1034
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1037
    :cond_2
    return-void
.end method

.method public static normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1126
    const-string v0, "null value specified for bounds array"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1149
    :goto_0
    return-object p0

    .line 1132
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1134
    array-length v4, p0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    .line 1137
    array-length v6, p0

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_4

    aget-object v7, p0, v0

    .line 1138
    if-eq v5, v7, :cond_2

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1139
    const/4 v0, 0x1

    .line 1144
    :goto_3
    if-nez v0, :cond_1

    .line 1145
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1149
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    move-object p0, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public static final parameterize(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1472
    const-string v0, "raw class is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    const-string v0, "typeArgMappings is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterize(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1520
    const-string v0, "raw class is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const-string v0, "typeArgMappings is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1489
    const-string v0, "raw class is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1492
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "no owner allowed for top-level %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v3

    .line 1499
    :goto_1
    const-string v0, "null type argument at index %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v4}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1502
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    array-length v4, p2

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_2
    const-string v4, "invalid number of type parameters specified: expected %s, got %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1506
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;

    invoke-direct {v0, p1, p0, p2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 1492
    goto :goto_0

    .line 1494
    :cond_1
    if-nez p0, :cond_2

    .line 1495
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 1497
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "%s is invalid owner type for parameterized %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1502
    goto :goto_2
.end method

.method private static parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1784
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1785
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1786
    if-nez v1, :cond_0

    .line 1787
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    :goto_0
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v0, v1, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1798
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1789
    :cond_0
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1790
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    :goto_1
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1792
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 722
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 723
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 725
    if-nez v0, :cond_1

    .line 726
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing assignment type for type variable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    .line 731
    :cond_1
    return-object v0
.end method

.method public static toLongString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1686
    const-string v0, "var is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1688
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 1689
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1690
    check-cast v0, Ljava/lang/Class;

    .line 1692
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1693
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    :goto_1
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1696
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1699
    :cond_1
    instance-of v2, v0, Ljava/lang/reflect/Type;

    if-eqz v2, :cond_2

    .line 1700
    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1702
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1659
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1661
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1673
    :goto_0
    return-object v0

    .line 1663
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1664
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1666
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 1667
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1669
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 1670
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1672
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    .line 1673
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1675
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1766
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1767
    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1768
    :cond_0
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    const-string v1, " & "

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    .line 1771
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static typesSatisfyVariables(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1215
    const-string v0, "typeVarAssigns is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 1220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 1222
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 1223
    invoke-static {v6, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v0, v6, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v2

    .line 1229
    :goto_1
    return v0

    .line 1222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1229
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1407
    const/4 v0, 0x0

    .line 1409
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1410
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1411
    if-nez v1, :cond_0

    .line 1412
    add-int/lit8 v1, v0, -0x1

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    move-object p1, v0

    move v0, v1

    .line 1409
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    :cond_0
    aput-object v1, p1, v0

    goto :goto_1

    .line 1417
    :cond_1
    return-object p1
.end method

.method private static unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 492
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 493
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object p0, v0

    .line 495
    goto :goto_0

    .line 499
    :cond_0
    return-object v0
.end method

.method public static unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1364
    move-object v0, p1

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_0

    .line 1365
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 1367
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1368
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_1

    .line 1369
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0

    .line 1371
    :cond_1
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 1372
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1374
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1375
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1378
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v1, v2

    .line 1380
    :cond_2
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1381
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 1382
    aget-object v4, v3, v2

    invoke-static {v1, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1383
    if-eqz v4, :cond_3

    .line 1384
    aput-object v4, v3, v2

    .line 1381
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1387
    :cond_4
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 1395
    :cond_5
    :goto_2
    return-object v0

    .line 1389
    :cond_6
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_5

    .line 1390
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1391
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withLowerBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_2
.end method

.method public static wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 2

    .prologue
    .line 1547
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method private static wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1809
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1810
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1811
    array-length v3, v1

    if-lez v3, :cond_1

    .line 1812
    const-string v2, " super "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & "

    invoke-static {v2, v3, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    .line 1816
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_1
    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-class v1, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1814
    :cond_2
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " & "

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Class;)Lorg/apache/commons/lang3/reflect/Typed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1733
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1716
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$1;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

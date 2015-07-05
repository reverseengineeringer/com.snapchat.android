.class final Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final EMPTY_BOUNDS:[Ljava/lang/reflect/Type;


# instance fields
.field private final lowerBounds:[Ljava/lang/reflect/Type;

.field private final upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->EMPTY_BOUNDS:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->EMPTY_BOUNDS:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    .line 236
    sget-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->EMPTY_BOUNDS:[Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    .line 237
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 268
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/WildcardType;

    # invokes: Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

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

.method public final getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v0, v0, 0x4900

    .line 278
    shl-int/lit8 v0, v0, 0x8

    .line 279
    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 280
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

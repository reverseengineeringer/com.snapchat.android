.class final Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GenericArrayTypeImpl"
.end annotation


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 128
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    # invokes: Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$100(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

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

.method public final getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    or-int/lit16 v0, v0, 0x430

    .line 138
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

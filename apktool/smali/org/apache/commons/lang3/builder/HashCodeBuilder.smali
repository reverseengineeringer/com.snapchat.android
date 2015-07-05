.class public Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 517
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 518
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 519
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 539
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 546
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 547
    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 179
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 180
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 181
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 186
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    invoke-virtual {p2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 238
    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6

    .prologue
    .line 282
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 339
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 340
    invoke-static {p2, v0, v1, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v0, p4, :cond_1

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 343
    invoke-static {p2, v0, v1, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6

    .prologue
    .line 381
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 455
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 467
    const-class v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    .line 468
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 471
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    return-void

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_1

    .line 490
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    const-class v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    .line 493
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 497
    :cond_0
    monitor-exit v1

    .line 499
    :cond_1
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 608
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 644
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 677
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 710
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 711
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 745
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 5

    .prologue
    .line 782
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 783
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 847
    :goto_0
    return-object p0

    .line 820
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 823
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 824
    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 825
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 826
    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 827
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 828
    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 829
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 830
    check-cast p1, [C

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 831
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 832
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 833
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 834
    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 835
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 836
    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 837
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 838
    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 841
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 844
    :cond_9
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0
.end method

.method public append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 881
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 571
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 572
    return-object p0

    .line 571
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 623
    if-nez p1, :cond_1

    .line 624
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 630
    :cond_0
    return-object p0

    .line 626
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    .line 627
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 657
    if-nez p1, :cond_1

    .line 658
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 664
    :cond_0
    return-object p0

    .line 660
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 661
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    .prologue
    .line 690
    if-nez p1, :cond_1

    .line 691
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 697
    :cond_0
    return-object p0

    .line 693
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 694
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 724
    if-nez p1, :cond_1

    .line 725
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 731
    :cond_0
    return-object p0

    .line 727
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 728
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 758
    if-nez p1, :cond_1

    .line 759
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 765
    :cond_0
    return-object p0

    .line 761
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 762
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4

    .prologue
    .line 796
    if-nez p1, :cond_1

    .line 797
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 803
    :cond_0
    return-object p0

    .line 799
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    .line 800
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 860
    if-nez p1, :cond_1

    .line 861
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 867
    :cond_0
    return-object p0

    .line 863
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 864
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 894
    if-nez p1, :cond_1

    .line 895
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 901
    :cond_0
    return-object p0

    .line 897
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 898
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3

    .prologue
    .line 585
    if-nez p1, :cond_1

    .line 586
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 592
    :cond_0
    return-object p0

    .line 588
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-boolean v2, p1, v0

    .line 589
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2

    .prologue
    .line 915
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 916
    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 953
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method

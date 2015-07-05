.class public Lorg/apache/commons/lang3/builder/EqualsBuilder;
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
        "Ljava/lang/Boolean;",
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
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isEquals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 224
    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 137
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v0

    return-object v0
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 155
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v2

    .line 158
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 401
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 403
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 404
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-boolean v2, p3, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v2, :cond_3

    .line 405
    aget-object v2, v1, v0

    .line 406
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 411
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p2}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 326
    if-ne p0, p1, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 329
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v6

    .line 330
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 339
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 355
    :cond_3
    :goto_1
    new-instance v3, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    .line 357
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    invoke-virtual {v3, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0

    .line 345
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 349
    goto :goto_1

    :cond_6
    move v0, v6

    .line 353
    goto :goto_0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 360
    :try_start_1
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    .line 362
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 372
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    :cond_7
    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 172
    const-class v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    monitor-enter v1

    .line 173
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 176
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 179
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/Pair;

    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    const-class v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    monitor-enter v1

    .line 202
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 206
    :cond_0
    monitor-exit v1

    .line 208
    :cond_1
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-object p0

    .line 570
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-object p0

    .line 555
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 5

    .prologue
    .line 588
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-object p0

    .line 525
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-object p0

    .line 510
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-object p0

    .line 455
    :cond_1
    if-eq p1, p2, :cond_0

    .line 458
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 459
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 468
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 472
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    .line 473
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 474
    :cond_6
    instance-of v0, p1, [I

    if-eqz v0, :cond_7

    .line 475
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 476
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    .line 477
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 478
    :cond_8
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    .line 479
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 480
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 481
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 482
    :cond_a
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 483
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 484
    :cond_b
    instance-of v0, p1, [F

    if-eqz v0, :cond_c

    .line 485
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 486
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 487
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 490
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-object p0

    .line 540
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-object p0

    .line 625
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 795
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-object p0

    .line 798
    :cond_1
    if-eq p1, p2, :cond_0

    .line 801
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 802
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 805
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 806
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 809
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 810
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-object p0

    .line 767
    :cond_1
    if-eq p1, p2, :cond_0

    .line 770
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 771
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 774
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 775
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 778
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 779
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 826
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-object p0

    .line 829
    :cond_1
    if-eq p1, p2, :cond_0

    .line 832
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 833
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 836
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 837
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 840
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 841
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 857
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-object p0

    .line 860
    :cond_1
    if-eq p1, p2, :cond_0

    .line 863
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 864
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 867
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 868
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 871
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 872
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 702
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-object p0

    .line 705
    :cond_1
    if-eq p1, p2, :cond_0

    .line 708
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 709
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 712
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 713
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 716
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 717
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object p0

    .line 674
    :cond_1
    if-eq p1, p2, :cond_0

    .line 677
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 678
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 681
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 682
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 685
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 686
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 640
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object p0

    .line 643
    :cond_1
    if-eq p1, p2, :cond_0

    .line 646
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 647
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 650
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 651
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 654
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 655
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 733
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-object p0

    .line 736
    :cond_1
    if-eq p1, p2, :cond_0

    .line 739
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 740
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 743
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 744
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 747
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 748
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 888
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-object p0

    .line 891
    :cond_1
    if-eq p1, p2, :cond_0

    .line 894
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 895
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 898
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 899
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 902
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 903
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang3/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-object p0

    .line 437
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0
.end method

.method public build()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 948
    return-void
.end method

.method protected setEquals(Z)V
    .locals 0

    .prologue
    .line 939
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 940
    return-void
.end method

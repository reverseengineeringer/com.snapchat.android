.class public Lorg/apache/commons/lang3/reflect/FieldUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "The class must not be null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    :goto_1
    if-eqz p0, :cond_2

    .line 216
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 217
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 218
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 222
    :cond_2
    return-object v2
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    if-eqz p0, :cond_1

    :goto_0
    const-string v3, "The class must not be null"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "The field name must not be blank/empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    if-eqz p2, :cond_2

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 167
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 176
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z

    .line 64
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "The class must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "The field name must not be blank/empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    .line 101
    :goto_1
    if-eqz v0, :cond_3

    .line 103
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    if-eqz p2, :cond_2

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    .line 85
    goto :goto_0

    :catch_0
    move-exception v3

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_3
    const/4 v0, 0x0

    .line 122
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 124
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 125
    if-nez v3, :cond_4

    move v4, v1

    :goto_3
    const-string v6, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-static {v4, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 130
    goto :goto_2

    :cond_4
    move v4, v2

    .line 125
    goto :goto_3

    .line 131
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "target object must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 470
    invoke-static {v3, p1, p2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 471
    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Cannot locate declared field %s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object p1, v6, v1

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-static {v4, p0, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 468
    goto :goto_0

    :cond_1
    move v0, v2

    .line 471
    goto :goto_1
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 342
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Cannot locate declared field %s.%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-static {v3, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 342
    goto :goto_0
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "target object must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 427
    invoke-static {v3, p1, p2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 428
    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Cannot locate field %s on %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v3, v6, v1

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-static {v4, p0, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 425
    goto :goto_0

    :cond_1
    move v0, v2

    .line 428
    goto :goto_1
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The field must not be null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 382
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 387
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 381
    goto :goto_0

    .line 385
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z

    goto :goto_1
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 298
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Cannot locate field \'%s\' on %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p0, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {v3, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 298
    goto :goto_0
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The field must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const-string v3, "The field \'%s\' is not static"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0
.end method

.method public static removeFinalModifier(Ljava/lang/reflect/Field;)V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->removeFinalModifier(Ljava/lang/reflect/Field;Z)V

    .line 663
    return-void
.end method

.method public static removeFinalModifier(Ljava/lang/reflect/Field;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 679
    if-eqz p0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "The field must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    const-class v0, Ljava/lang/reflect/Field;

    const-string v3, "modifiers"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 685
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 686
    :goto_1
    if-eqz v1, :cond_0

    .line 687
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 690
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    if-eqz v1, :cond_1

    .line 693
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 702
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 679
    goto :goto_0

    :cond_3
    move v1, v2

    .line 685
    goto :goto_1

    .line 692
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 693
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    throw v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 701
    :catch_0
    move-exception v0

    goto :goto_2

    .line 702
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 769
    return-void
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "target object must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 794
    invoke-static {v3, p1, p3}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 795
    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Cannot locate declared field %s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object p1, v6, v1

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 797
    invoke-static {v4, p0, p2, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 798
    return-void

    :cond_0
    move v0, v2

    .line 792
    goto :goto_0

    :cond_1
    move v0, v2

    .line 795
    goto :goto_1
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 578
    return-void
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 601
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Cannot locate declared field %s.%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 603
    const/4 v0, 0x0

    invoke-static {v3, v0, p2, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 604
    return-void

    :cond_0
    move v0, v2

    .line 601
    goto :goto_0
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 721
    return-void
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 744
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "target object must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 746
    invoke-static {v3, p1, p3}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 747
    if-eqz v4, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Cannot locate declared field %s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object p1, v6, v1

    invoke-static {v0, v5, v6}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-static {v4, p0, p2, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 750
    return-void

    :cond_0
    move v0, v2

    .line 744
    goto :goto_0

    :cond_1
    move v0, v2

    .line 747
    goto :goto_1
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 621
    return-void
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The field must not be null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 649
    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 650
    return-void

    :cond_0
    move v0, v2

    .line 643
    goto :goto_0

    .line 647
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Z

    goto :goto_1
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 532
    return-void
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 555
    invoke-static {p0, p1, p3}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 556
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Cannot locate field %s on %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p0, v5, v1

    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {v3, p2, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    .line 559
    return-void

    :cond_0
    move v0, v2

    .line 556
    goto :goto_0
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    .line 490
    return-void
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The field must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const-string v3, "The field %s.%s is not static"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 512
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 513
    return-void

    :cond_0
    move v0, v2

    .line 509
    goto :goto_0
.end method

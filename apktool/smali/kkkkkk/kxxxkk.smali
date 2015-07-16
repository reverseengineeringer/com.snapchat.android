.class public final Lkkkkkk/kxxxkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkkkkkk/xkkkkk;,
        Lkkkkkk/kxxkkk;,
        Lkkkkkk/xxxkkk;
    }
.end annotation


# static fields
.field public static b044E044Eююю044E:I = 0x0

.field public static b044Eю044Eюю044E:I = 0x2

.field public static bю044Eююю044E:I = 0x3e

.field public static bюю044Eюю044E:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    sget v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v1, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2f

    sput v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x41

    :try_start_1
    sput v0, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    sget v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v1, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x5d

    sput v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :pswitch_1
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static b041E041E041EООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00a6\u00c9\u00c5\u00cc\u00c4\u0080"

    const/16 v3, 0x30

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D\u0092\u0093\u0098D\u008a\u0093\u0099\u0092\u0088D\u008d\u0092D"

    const/16 v3, 0x9a

    sget v4, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->bОО041EООО()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v4, v5, :cond_2

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v4

    sput v4, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v4

    sput v4, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    sget v4, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v5, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v4, v5, :cond_2

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v4

    sput v4, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    const/16 v4, 0x56

    sput v4, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :cond_2
    :pswitch_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x76

    invoke-static {v2, v3, v4, v6}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b041E041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    sget v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->bОО041EООО()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lkkkkkk/kxxxkk;->bООО041EОО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static b041EО041EООО()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public static b041EОО041EОО(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    if-eqz v4, :cond_0

    :goto_0
    :try_start_1
    new-array v6, v3, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :pswitch_0
    packed-switch v8, :pswitch_data_0

    :goto_2
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :cond_0
    :goto_3
    :pswitch_1
    return-object v0

    :cond_1
    const/16 v1, 0x80

    :try_start_2
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v1

    sput v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    if-nez v5, :cond_1

    goto :goto_3

    :catch_2
    move-exception v6

    const/16 v6, 0x5d

    sput v6, Lkkkkkk/kxxxkk;->bю044Eююю044E:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_4
    :try_start_4
    div-int/2addr v1, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    sget v6, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v7, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v6, v7

    sget v7, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v6, v7

    sget v7, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v6, v7

    sget v7, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v6, v7, :cond_2

    const/16 v6, 0x1b

    sput v6, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v6

    sput v6, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    goto :goto_4

    :catch_3
    move-exception v1

    const/16 v1, 0x5d

    :try_start_5
    sput v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    new-array v1, v3, [I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b041EООООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-static {p0, p1}, Lkkkkkk/kxxxkk;->b041E041E041EООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :pswitch_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static bО041E041EООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lkkkkkk/kxxxkk;->b041E041E041EООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v3, v0

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sget v3, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v4, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0x5e

    sput v3, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v3

    sput v3, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :cond_0
    :pswitch_0
    const/4 v3, 0x1

    packed-switch v3, :pswitch_data_0

    :goto_0
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, p2

    invoke-static {p2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bО041EО041EОО(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {p0, p2, p1}, Lkkkkkk/xxxkkk;->b041DН041DН041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    invoke-static {p0, p2, p1}, Lkkkkkk/kxxkkk;->b041D041D041D041DН041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    :try_start_1
    sget v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lkkkkkk/kxxxkk;->bОО041EООО()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sget v2, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->bОО041EООО()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    if-eq v2, v3, :cond_2

    const/16 v2, 0x35

    sput v2, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    const/16 v2, 0x21

    sput v2, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :cond_2
    add-int/2addr v0, v1

    :try_start_3
    sget v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v0, v1, :cond_0

    :try_start_4
    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_5
    invoke-static {p0, p2}, Lkkkkkk/xkkkkk;->bН041DН041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v1, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    sget v2, Lkkkkkk/kxxxkk;->bюю044Eюю044E:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v1

    sput v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    const/16 v1, 0x1a

    sput v1, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :pswitch_2
    sget v1, Lkkkkkk/kxxxkk;->b044Eю044Eюю044E:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_3

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v0

    sput v0, Lkkkkkk/kxxxkk;->b044E044Eююю044E:I

    :pswitch_3
    :try_start_0
    invoke-static {p0, p1, p2}, Lkkkkkk/kxxxkk;->bО041E041EООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static bОО041EООО()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static varargs bООО041EОО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x51

    sput v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    return-object v1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {}, Lkkkkkk/kxxxkk;->b041EО041EООО()I

    move-result v1

    sput v1, Lkkkkkk/kxxxkk;->bю044Eююю044E:I

    goto :goto_1

    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v2, "\u00ec\u0104\u0113\u0107\u010e\u0103\u00bf"

    const/16 v3, 0x9f

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v1

    :try_start_7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0104\u015b\u014d\u0158\u014c\u0104\u0154\u0145\u0156\u0145\u0151\u0149\u0158\u0149\u0156\u0157\u0104"

    const/16 v3, 0x72

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v1

    :try_start_8
    const-string v2, "\u0218\u0266\u0267\u026c\u0218\u025e\u0267\u026d\u0266\u025c\u0218\u0261\u0266\u0218"

    const/16 v3, 0xfc

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    :pswitch_0
    packed-switch v5, :pswitch_data_0

    :goto_3
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lkkkkkk/kxxkkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kxxxkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1b
    name = "kxxkkk"
.end annotation


# static fields
.field public static b043A043Aк043A043A043A:I = 0x50

.field public static b043Aк043A043A043A043A:I = 0x2

.field public static bк043A043A043A043A043A:I = 0x0

.field public static bкк043A043A043A043A:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    sget v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    sget v1, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b041D041D041D041DН041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    sget v1, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    sget v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->bНННН041D041D()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    const/16 v0, 0x1c

    sput v0, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :cond_0
    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :pswitch_2
    :try_start_0
    invoke-static {p0, p1, p2}, Lkkkkkk/kxxkkk;->b041D041DНН041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static b041D041DНН041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    :try_start_0
    const-string v0, "\u008f\u0080\u0093\u0087k\u0088\u0092\u0093"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xb8

    const/16 v2, 0x99

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v1, v2, v3}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkkkkkk/kxxxkk;->b041EООООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget v1, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    sget v2, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v1, v2, :cond_0

    :try_start_2
    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v1

    sput v1, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v1

    sput v1, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\uff9a\uff9b\uffae\uff7b\uffa2\uff9b\uffa3\uff9b\uffa4\uffaa\uffa9"

    const/16 v2, 0x65

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, p2}, Lkkkkkk/kxxkkk;->bНН041DН041D041D(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    sget v3, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    sget v4, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v3

    sput v3, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v3

    sput v3, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :pswitch_0
    :try_start_3
    invoke-static {v0, v1, v2}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041DННН041D041D()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public static bН041DНН041D041D()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static bНН041DН041D041D(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "\uff65\uff59\uff63\uff5d\uff3c\uff5d\uff70\uff3d\uff64\uff5d\uff65\uff5d\uff66\uff6c\uff6b"

    const/16 v1, 0x58

    invoke-static {v0, v1, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    aput-object v2, v1, v4

    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-class v2, Ljava/io/File;

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lkkkkkk/kxxxkk;->b041E041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    sget v2, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    sget v3, Lkkkkkk/kxxkkk;->bкк043A043A043A043A:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_2

    const/16 v2, 0x63

    sput v2, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->b041DННН041D041D()I

    move-result v2

    sput v2, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :pswitch_2
    sget v2, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    invoke-static {}, Lkkkkkk/kxxkkk;->bНННН041D041D()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kxxkkk;->b043Aк043A043A043A043A:I

    rem-int/2addr v2, v3

    invoke-static {}, Lkkkkkk/kxxkkk;->bН041DНН041D041D()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f

    sput v2, Lkkkkkk/kxxkkk;->b043A043Aк043A043A043A:I

    const/16 v2, 0x4e

    sput v2, Lkkkkkk/kxxkkk;->bк043A043A043A043A043A:I

    :cond_0
    :pswitch_3
    packed-switch v5, :pswitch_data_3

    :goto_1
    packed-switch v4, :pswitch_data_4

    goto :goto_1

    :pswitch_4
    aput-object p2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
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
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static bНННН041D041D()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

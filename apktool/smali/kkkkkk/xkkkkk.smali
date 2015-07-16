.class public final Lkkkkkk/xkkkkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kxxxkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1b
    name = "xkkkkk"
.end annotation


# static fields
.field public static b043A043A043Aкк043A:I = 0x2

.field public static b043Aк043Aкк043A:I = 0xb

.field public static bк043A043Aкк043A:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    sget v1, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    :pswitch_0
    packed-switch v2, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    sget v1, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_3

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    const/16 v0, 0x26

    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    :pswitch_2
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static b041D041DН041D041D041D()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public static b041DН041D041D041D041D()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static bН041D041D041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
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
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v0, "VGZN"

    const/16 v2, 0x1d

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkkkkkk/kxxxkk;->b041EООООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/String;

    new-array v5, v1, [Ljava/io/File;

    new-array v6, v1, [Ljava/util/zip/ZipFile;

    new-array v1, v1, [Ldalvik/system/DexFile;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3a

    :pswitch_1
    const/4 v10, 0x1

    packed-switch v10, :pswitch_data_0

    :goto_1
    const/4 v10, 0x0

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/ListIterator;->previousIndex()I

    move-result v9

    aput-object v8, v4, v9

    aput-object v0, v5, v9

    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v10, v6, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\uff62\uff98\uff99\uffac"

    const/16 v11, 0xcc

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v8, v0, v10}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    aput-object v0, v1, v9

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    sget v8, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    add-int/2addr v8, v0

    mul-int/2addr v0, v8

    sget v8, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v8

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x63

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    const/16 v0, 0x28

    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    sget v8, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    add-int/2addr v0, v8

    sget v8, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    mul-int/2addr v0, v8

    sget v8, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v8

    invoke-static {}, Lkkkkkk/xkkkkk;->b041DН041D041D041D041D()I

    move-result v8

    if-eq v0, v8, :cond_0

    const/4 v0, 0x2

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "\'\n\u001b.\"-"

    const/16 v2, 0x46

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\u0238\u0211\u0234\u0237\u0230\u023e"

    const/16 v2, 0x99

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\u00dc\u00c9\u00d8\u00df\u00e2"

    const/16 v2, 0x6f

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\uff1c\ufef3\uff14\uff27\uff22"

    const/16 v2, 0xd3

    const/16 v3, 0x7e

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic bН041DН041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    invoke-static {}, Lkkkkkk/xkkkkk;->bНН041D041D041D041D()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    const/16 v0, 0x1e

    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    sget v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    sget v1, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkkk;->b043A043A043Aкк043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lkkkkkk/xkkkkk;->b041D041DН041D041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xkkkkk;->b043Aк043Aкк043A:I

    const/16 v0, 0x53

    sput v0, Lkkkkkk/xkkkkk;->bк043A043Aкк043A:I

    :pswitch_0
    :try_start_0
    invoke-static {p0, p1}, Lkkkkkk/xkkkkk;->bН041D041D041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static bНН041D041D041D041D()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

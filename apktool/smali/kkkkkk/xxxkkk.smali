.class public final Lkkkkkk/xxxkkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kxxxkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1b
    name = "xxxkkk"
.end annotation


# static fields
.field public static b044E044Eюююю:I = 0x41

.field public static b044Eююююю:I = 0x1

.field public static bю044Eюююю:I = 0x2

.field public static bюю044Eююю:I


# direct methods
.method private constructor <init>()V
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v0

    sget v1, Lkkkkkk/xxxkkk;->b044Eююююю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xxxkkk;->bю044Eюююю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xxxkkk;->b044Eююююю:I

    :pswitch_2
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
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
.end method

.method public static b041D041D041DН041D041D()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public static synthetic b041DН041DН041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkkkkkk/xxxkkk;->bННН041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private static b041DНН041D041D041D(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
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

    const/4 v5, 0x0

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v0

    sget v1, Lkkkkkk/xxxkkk;->b044Eююююю:I

    add-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xxxkkk;->bю044Eюююю:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v0

    sput v0, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    const/16 v0, 0x51

    sput v0, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    :cond_0
    :try_start_0
    const-string v0, "\u0149\u013d\u0147\u0141\u0120\u0141\u0154\u0121\u0148\u0141\u0149\u0141\u014a\u0150\u014f"

    const/16 v1, 0x6e

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/File;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    sget v3, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    sget v4, Lkkkkkk/xxxkkk;->b044Eююююю:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    mul-int/2addr v3, v4

    invoke-static {}, Lkkkkkk/xxxkkk;->bН041D041DН041D041D()I

    move-result v4

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    if-eq v3, v4, :cond_1

    :pswitch_0
    packed-switch v5, :pswitch_data_0

    :goto_0
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v3

    sput v3, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v3

    sput v3, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    :cond_1
    :try_start_1
    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {p0, v0, v1}, Lkkkkkk/kxxxkk;->b041E041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    :try_start_3
    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

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
.end method

.method public static bН041D041DН041D041D()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static bННН041D041D041D(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 8
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

    const/4 v7, 0x1

    :try_start_0
    const-string v0, "\uff7d\uff6e\uff81\uff75\uff59\uff76\uff80\uff81"

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkkkkkk/kxxxkk;->b041EООООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "\u0157\u0158\u016b\u0138\u015f\u0158\u0160\u0158\u0161\u0167\u0166"

    const/16 v3, 0xf3

    const/4 v4, 0x3

    invoke-static {v1, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3, p2, v2}, Lkkkkkk/xxxkkk;->b041DНН041D041D041D(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lkkkkkk/kxxxkk;->bО041EОООО(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    const-string v3, "\uffd5\u0003\uffef\u0000\ufff2"

    const/16 v4, 0x72

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0096\u00c9\u00b4\u00b6\u00c1\u00c5\u00ba\u00c0\u00bfq\u00ba\u00bfq\u00be\u00b2\u00bc\u00b6\u0095\u00b6\u00c9\u0096\u00bd\u00b6\u00be\u00b6\u00bf\u00c5"

    const/16 v5, 0x51

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    sget v5, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    :pswitch_0
    packed-switch v7, :pswitch_data_0

    :goto_1
    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v6, Lkkkkkk/xxxkkk;->b044Eююююю:I

    add-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    mul-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->bю044Eюююю:I

    rem-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    if-eq v5, v6, :cond_0

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v5

    sput v5, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v5

    sput v5, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    sget v5, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    sget v6, Lkkkkkk/xxxkkk;->b044Eююююю:I

    add-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    mul-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->bю044Eюююю:I

    rem-int/2addr v5, v6

    sget v6, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    if-eq v5, v6, :cond_0

    const/16 v5, 0x32

    sput v5, Lkkkkkk/xxxkkk;->b044E044Eюююю:I

    invoke-static {}, Lkkkkkk/xxxkkk;->b041D041D041DН041D041D()I

    move-result v5

    sput v5, Lkkkkkk/xxxkkk;->bюю044Eююю:I

    :cond_0
    :try_start_3
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_4
    const-string v0, "\uffaa\uffab\uffbe\uff8b\uffb2\uffab\uffb3\uffab\uffb4\uffba\uffb9\uff99\uffbb\uffb6\uffb6\uffb8\uffab\uffb9\uffb9\uffab\uffaa\uff8b\uffbe\uffa9\uffab\uffb6\uffba\uffaf\uffb5\uffb4\uffb9"

    const/16 v1, 0xba

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkkkkkk/kxxxkk;->b041EООООО(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    check-cast v0, [Ljava/io/IOException;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/IOException;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    :goto_2
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    return-void

    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v4, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/2addr v1, v4

    :try_start_7
    new-array v1, v1, [Ljava/io/IOException;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result v2

    :try_start_9
    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

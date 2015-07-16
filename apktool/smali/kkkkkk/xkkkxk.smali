.class public Lkkkkkk/xkkkxk;
.super Ljava/lang/Object;


# static fields
.field public static b044E044E044E044Eю044E:I = 0x5a

.field private static b044E044Eю044Eю044E:Landroid/content/Context; = null

.field private static b044Eю044E044Eю044E:Ljava/lang/String; = null

.field public static b044Eююю044E044E:I = 0x1

.field private static bю044E044E044Eю044E:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static bю044Eюю044E044E:I = 0x2

.field private static bюю044E044Eю044E:Ljava/lang/String;

.field public static bюююю044E044E:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v0

    sget v1, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xkkkxk;->b041EОО041E041EО()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v1, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x45

    sput v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v0

    sput v0, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :pswitch_0
    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v0

    sput v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v0

    sput v0, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :pswitch_1
    :try_start_0
    invoke-static {}, Lkkkkkk/xkkkxk;->b041EО041E041E041EО()V

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041E041E041E041EО()V

    invoke-static {}, Lkkkkkk/xkkkxk;->b041E041E041E041E041EО()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v3, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v2, v3, :cond_0

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v2

    sput v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v2

    sput v2, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_0
    :goto_1
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static b041E041E041E041E041EО()V
    .locals 3

    const-string v0, "\u00be\u00f1\u00fe\u00b9\u00fa\u00f1\u00fe\u00fe\u00e9\u00fa\u00f6\u0101\u00e9\u00f5\u00ff\u00f3"

    const/16 v1, 0x87

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkkkkkk/xkkkxk;->b044Eю044E044Eю044E:Ljava/lang/String;

    return-void
.end method

.method public static b041E041EО041E041EО()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b041E041EООО041E(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x4

    const/4 v4, 0x0

    :pswitch_0
    packed-switch v5, :pswitch_data_0

    :goto_0
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    packed-switch v5, :pswitch_data_2

    :goto_1
    packed-switch v6, :pswitch_data_3

    goto :goto_1

    :pswitch_2
    sput-object p0, Lkkkkkk/xkkkxk;->b044E044Eю044Eю044E:Landroid/content/Context;

    :goto_2
    :try_start_0
    div-int/2addr v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    new-array v5, v3, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v0, 0x2b

    sput v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    return-void

    :catch_1
    move-exception v5

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v5

    sput v5, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    :goto_4
    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    const/16 v5, 0x5c

    sput v5, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    goto :goto_2

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b041EО041E041E041EО()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "\u0162\u0161\u0167\u016b\u0150\u014e\u014f\u0152\u014e\u0151\u0150\u014f\u014e\u014f\u014e\u014f\u014e\u014f\u014c\u0172\u0165\u015f"

    const/16 v2, 0x77

    const/16 v3, 0xa7

    invoke-static {v1, v2, v3, v5}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u02ae\u02ad\u02b3\u02b7\u029c\u029a\u029b\u029e\u029b\u029c\u029c\u02a1\u029a\u029b\u029a\u029b\u029a\u029b\u0298\u02ba\u02b8\u02b1"

    const/16 v2, 0xce

    invoke-static {v1, v2, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u017a\u0179\u017f\u0183\u016c\u0164\u0186\u0184\u017d"

    const/16 v2, 0xb1

    const/16 v3, 0x85

    invoke-static {v1, v2, v3, v5}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\ufff3\ufff7\ufff1\uffda\uffe3\uffd8\ufffa\ufff8\ufff1"

    const/16 v2, 0x6a

    const/16 v3, 0xc0

    invoke-static {v1, v2, v3, v6}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u0170\u016d\u0180\u016d\u013d\u013a\u0144\u0186"

    const/16 v2, 0xf0

    const/16 v3, 0x1c

    invoke-static {v1, v2, v3, v5}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u01e4\u01e2\u01ec\u01aa\u01ae\u01ab\u01e0\u01ea\u01ed"

    const/16 v2, 0x7f

    invoke-static {v1, v2, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u001e\u001a\u0016\u0010\u0012G@Y\u0007\u0019\u0010"

    const/16 v2, 0x77

    invoke-static {v1, v2, v8}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u0368\u0360\u0369\u0328\u035e\u035b\u036e"

    const/16 v2, 0xfe

    invoke-static {v1, v2, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\uff8a\uff80\uff8b\uff7c\uff45\uff7b\uff78\uff8b"

    const/16 v2, 0xe9

    invoke-static {v1, v2, v7}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lkkkkkk/xkkkxk;->bю044E044E044Eю044E:Ljava/util/Map;

    return-void
.end method

.method public static b041EОО041E041EО()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b041EОООО041E(Landroid/content/res/AssetManager;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v1, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x51

    sput v0, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v0

    sput v0, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lkkkkkk/xkkkxk;->bю044E044E044Eю044E:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :pswitch_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v1, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v2, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x59

    sput v1, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v1

    sput v1, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :pswitch_2
    sget-object v1, Lkkkkkk/xkkkxk;->bюю044E044Eю044E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lkkkkkk/xkkkxk;->b044Eю044E044Eю044E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkkkkkk/xxxkxk;->b041E041E041EОО041E(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    return-object v0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static bО041E041E041E041EО()V
    .locals 3

    const-string v0, "\ufda6\ufd9e\ufd9b\ufd99\ufd66\ufd60\ufd66\ufda3\ufd9d\ufd90\ufd93\ufd9f\ufd60\ufd98\ufd66\ufd63"

    const/16 v1, 0xf1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkkkkkk/xkkkxk;->bюю044E044Eю044E:Ljava/lang/String;

    return-void
.end method

.method public static bО041EО041E041EО()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public static bО041EООО041E(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    sget-object v0, Lkkkkkk/xkkkxk;->bю044E044E044Eю044E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sget v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v3, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x53

    sput v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    const/16 v2, 0x3c

    sput v2, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_0
    if-eqz v0, :cond_2

    new-instance v0, Lkkkkkk/kkxkxk;

    sget-object v2, Lkkkkkk/xkkkxk;->b044E044Eю044Eю044E:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lkkkkkk/kkxkxk;-><init>(Landroid/content/res/AssetFileDescriptor;Landroid/content/Context;)V

    sget-object v1, Lkkkkkk/xkkkxk;->bюю044E044Eю044E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lkkkkkk/xkkkxk;->b044Eю044E044Eю044E:Ljava/lang/String;

    sget v3, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    sget v4, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v3, v4, :cond_1

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v3

    sput v3, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v3

    sput v3, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkkkkkk/kkxkxk;->bООО041E041EО([B[B)V

    :goto_0
    return-object v0

    :cond_2
    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_1
    packed-switch v4, :pswitch_data_1

    :goto_2
    packed-switch v4, :pswitch_data_2

    goto :goto_2

    :pswitch_2
    packed-switch v4, :pswitch_data_3

    goto :goto_1

    :pswitch_3
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static bОО041E041E041EО()V
    .locals 0

    return-void
.end method

.method public static bООООО041E(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget v1, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->b041E041EО041E041EО()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v1

    sput v1, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v1

    sput v1, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_0
    :try_start_1
    sget-object v1, Lkkkkkk/xkkkxk;->bю044E044E044Eю044E:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v2

    sget v3, Lkkkkkk/xkkkxk;->b044Eююю044E044E:I

    add-int/2addr v2, v3

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bю044Eюю044E044E:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lkkkkkk/xkkkxk;->bО041EО041E041EО()I

    move-result v2

    sput v2, Lkkkkkk/xkkkxk;->b044E044E044E044Eю044E:I

    const/16 v2, 0x47

    sput v2, Lkkkkkk/xkkkxk;->bюююю044E044E:I

    :cond_1
    :try_start_2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lkkkkkk/xkkkxk;->bюю044E044Eю044E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lkkkkkk/xkkkxk;->b044Eю044E044Eю044E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lkkkkkk/xxxkxk;->b041E041E041EОО041E(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :pswitch_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    :pswitch_1
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

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
.end method

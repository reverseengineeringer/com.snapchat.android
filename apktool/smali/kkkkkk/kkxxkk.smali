.class public Lkkkkkk/kkxxkk;
.super Ljava/lang/Object;


# static fields
.field private static final b044E044E044Eю044Eю:I = 0x4

.field public static b044E044Eю044E044Eю:I = 0x1

.field public static b044Eю044E044E044Eю:I = 0x0

.field private static b044Eю044Eю044Eю:[Ljava/lang/String; = null

.field private static final b044Eюю044E044Eю:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bю044E044Eю044Eю:I = 0x2000

.field public static bю044Eю044E044Eю:I = 0xc

.field public static bюю044E044E044Eю:I = 0x2

.field private static bюю044Eю044Eю:Ljava/lang/String; = null

# The value of this static final field might be set in the static constructor
.field private static final bююю044E044Eю:Ljava/lang/String; = "\u00d8\u00d5\u00e8\u00d5\u00e3\u00e9\u00e8"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lkkkkkk/kkxxkk;->bююю044E044Eю:Ljava/lang/String;

    const/16 v1, 0x3a

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkkkkkk/kkxxkk;->bююю044E044Eю:Ljava/lang/String;

    invoke-static {}, Lkkkkkk/kkxxkk;->bОООО041EО()V

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v1

    sget v2, Lkkkkkk/kkxxkk;->b044E044Eю044E044Eю:I

    add-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxxkk;->bюю044E044E044Eю:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxxkk;->b044Eю044E044E044Eю:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v1

    sput v1, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v1

    sput v1, Lkkkkkk/kkxxkk;->b044Eю044E044E044Eю:I

    :cond_0
    :pswitch_0
    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_1
    packed-switch v4, :pswitch_data_1

    :goto_1
    packed-switch v4, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    packed-switch v3, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget v1, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    invoke-static {}, Lkkkkkk/kkxxkk;->bОО041E041EОО()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxxkk;->bюю044E044E044Eю:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_4

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v1

    sput v1, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v1

    sput v1, Lkkkkkk/kkxxkk;->b044Eю044E044E044Eю:I

    :pswitch_4
    sput-object v0, Lkkkkkk/kkxxkk;->b044Eюю044E044Eю:Ljava/util/Set;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
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
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget v0, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    sget v1, Lkkkkkk/kkxxkk;->b044E044Eю044E044Eю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxxkk;->bюю044E044E044Eю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lkkkkkk/kkxxkk;->b041E041EО041EОО()I

    move-result v0

    sput v0, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    const/16 v0, 0x8

    sput v0, Lkkkkkk/kkxxkk;->b044E044Eю044E044Eю:I

    :pswitch_1
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    sget v0, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    sget v1, Lkkkkkk/kkxxkk;->b044E044Eю044E044Eю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxxkk;->bюю044E044E044Eю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_3

    const/16 v0, 0x58

    sput v0, Lkkkkkk/kkxxkk;->bю044Eю044E044Eю:I

    const/16 v0, 0x5a

    sput v0, Lkkkkkk/kkxxkk;->b044E044Eю044E044Eю:I

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
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

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private static b041E041E041E041EОО()V
    .locals 0

    return-void
.end method

.method public static b041E041EО041EОО()I
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public static b041E041EОО041EО(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lkkkkkk/kkxxkk;->b044Eюю044E044Eю:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    :pswitch_0
    packed-switch v8, :pswitch_data_0

    :goto_1
    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    if-nez v4, :cond_5

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v5, Lkkkkkk/kkxxkk;->b044Eюю044E044Eю:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v5, "\u00a7\u00a4\u00b7\u00a4\u00b2\u00b8\u00b7"

    const/16 v6, 0x43

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    packed-switch v8, :pswitch_data_2

    :goto_2
    packed-switch v0, :pswitch_data_3

    goto :goto_2

    :pswitch_3
    :try_start_2
    sget-object v1, Lkkkkkk/kkxxkk;->b044Eю044Eю044Eю:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lkkkkkk/xkkxxk;->bНН041D041DН041D(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v3, v1}, Lkkkkkk/kxxxkk;->bО041EО041EОО(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v3, v1

    :goto_4
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    invoke-static {p0}, Lkkkkkk/kxxxkk;->b041EОО041EОО(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_4
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :cond_5
    sget-object v5, Lkkkkkk/kkxxkk;->b044Eюю044E044Eю:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static b041EО041E041EОО()V
    .locals 0

    return-void
.end method

.method private static b041EООО041EО()V
    .locals 0

    return-void
.end method

.method private static bО041E041E041EОО()V
    .locals 0

    return-void
.end method

.method private static bО041EОО041EО()V
    .locals 0

    return-void
.end method

.method public static bОО041E041EОО()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static bОООО041EО()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u00fa\u00fe\u00f2\u00f8\u00f6\u00c1\u00c8\u00bf\u0101\u00ff\u00f8"

    const/16 v2, 0xef

    const/16 v3, 0x5e

    invoke-static {v1, v2, v3, v4}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lkkkkkk/kkxxkk;->b044Eю044Eю044Eю:[Ljava/lang/String;

    return-void
.end method

.class public Lkkkkkk/kxkxxk;
.super Ljava/lang/Object;


# static fields
.field public static b041D041D041D041D041DН:I = 0x0

.field private static b041DН041D041D041DН:[J = null

.field public static b041DНННН041D:I = 0x2

.field public static bН041D041D041D041DН:I = 0x14

.field private static bНН041D041D041DН:[[C = null

.field public static bННННН041D:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041E041E041EО041E()V

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kxkxxk;->b041EО041E041EО041E()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_0
    :pswitch_0
    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041E041E041EО041E()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 2

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kxkxxk;->b041EО041E041EО041E()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    const/16 v0, 0xb

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method private static b041E041E041E041EО041E()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [[C

    const/4 v1, 0x0

    const/16 v2, 0x1e

    new-array v2, v2, [C

    invoke-static {v2}, Lkkkkkk/kxkxxk;->b041EООО041E041E([C)V

    aput-object v2, v0, v1

    sput-object v0, Lkkkkkk/kxkxxk;->bНН041D041D041DН:[[C

    return-void
.end method

.method public static b041E041EО041EО041E()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static b041E041EОО041E041E()V
    .locals 3

    :try_start_0
    invoke-static {}, Lkkkkkk/kkkkxk;->bООО041E041E041E()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_3

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :pswitch_2
    const/16 v0, 0x18

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    const/16 v0, 0x37

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :pswitch_3
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
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static b041EО041E041EО041E()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private static b041EООО041E041E([C)V
    .locals 4

    const/16 v3, 0x2f

    const/4 v0, 0x0

    const/16 v1, 0x6c

    :try_start_0
    aput-char v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    const/16 v1, 0x69

    :try_start_1
    aput-char v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x62

    aput-char v1, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x2f

    aput-char v1, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x61

    aput-char v1, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x72

    aput-char v1, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x6d

    aput-char v1, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0x65

    aput-char v1, p0, v0

    const/16 v0, 0x8

    const/16 v1, 0x61

    aput-char v1, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0x62

    aput-char v1, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0x69

    aput-char v1, p0, v0

    const/16 v0, 0xb

    const/16 v1, 0x2d

    aput-char v1, p0, v0

    const/16 v0, 0xc

    const/16 v1, 0x76

    aput-char v1, p0, v0

    const/16 v0, 0xd

    const/16 v1, 0x37

    aput-char v1, p0, v0

    const/16 v0, 0xe

    const/16 v1, 0x61

    aput-char v1, p0, v0

    const/16 v0, 0xf

    const/16 v1, 0x2f

    aput-char v1, p0, v0

    const/16 v0, 0x10

    const/16 v1, 0x6c

    aput-char v1, p0, v0

    const/16 v0, 0x11

    const/16 v1, 0x69

    aput-char v1, p0, v0

    const/16 v0, 0x12

    const/16 v1, 0x62

    aput-char v1, p0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x13

    const/16 v1, 0x73

    :try_start_2
    aput-char v1, p0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v1, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    const/16 v0, 0x5e

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_0
    const/16 v0, 0x14

    const/16 v1, 0x63

    :try_start_3
    aput-char v1, p0, v0

    const/16 v0, 0x15

    const/16 v1, 0x70

    aput-char v1, p0, v0

    const/16 v0, 0x16

    const/16 v1, 0x6c

    aput-char v1, p0, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v0, 0x17

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v1

    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EО041EО041E()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/kxkxxk;->bОО041E041EО041E()I

    move-result v2

    if-eq v1, v2, :cond_1

    sput v3, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v1

    sput v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_1
    const/16 v1, 0x75

    :try_start_4
    aput-char v1, p0, v0

    const/16 v0, 0x18

    const/16 v1, 0x67

    aput-char v1, p0, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v0, 0x19

    const/16 v1, 0x69

    :try_start_5
    aput-char v1, p0, v0

    const/16 v0, 0x1a

    const/16 v1, 0x6e

    aput-char v1, p0, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v0, 0x1b

    const/16 v1, 0x2e

    :try_start_6
    aput-char v1, p0, v0

    const/16 v0, 0x1c

    const/16 v1, 0x73

    aput-char v1, p0, v0

    const/16 v0, 0x1d

    const/16 v1, 0x6f

    aput-char v1, p0, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static bО041E041E041EО041E()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-static {v0}, Lkkkkkk/kxkxxk;->bОООО041E041E([J)V

    sput-object v0, Lkkkkkk/kxkxxk;->b041DН041D041D041DН:[J

    return-void
.end method

.method public static bО041EО041EО041E()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method private static bО041EОО041E041E()V
    .locals 3

    const/4 v2, 0x0

    :pswitch_0
    sget v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EО041EО041E()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    const/16 v0, 0x1c

    sput v0, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-void

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

.method public static bОО041E041EО041E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static bОО041EО041E041E(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    :try_start_1
    sget-object v3, Lkkkkkk/kxkxxk;->bНН041D041D041DН:[[C

    array-length v3, v3

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkkkkkk/kxkxxk;->bНН041D041D041DН:[[C

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    sget v4, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    sget v5, Lkkkkkk/kxkxxk;->bННННН041D:I

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkxxk;->b041DНННН041D:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    if-eq v4, v5, :cond_0

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v4

    sput v4, Lkkkkkk/kxkxxk;->bН041D041D041D041DН:I

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EО041EО041E()I

    move-result v4

    sput v4, Lkkkkkk/kxkxxk;->b041D041D041D041D041DН:I

    :cond_0
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v3, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    const/16 v3, 0x80

    new-array v3, v3, [B

    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    sget-object v3, Lkkkkkk/kxkxxk;->b041DН041D041D041DН:[J

    aget-wide v6, v3, v1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EОО041E041E()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EОО041E041E()V

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {}, Lkkkkkk/kxkxxk;->bО041EОО041E041E()V

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EОО041E041E()V
    :try_end_5
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_5
    invoke-static {}, Lkkkkkk/kxkxxk;->b041E041EОО041E041E()V

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method private static bОООО041E041E([J)V
    .locals 4

    const/4 v0, 0x0

    const-wide v2, 0x1736742d

    aput-wide v2, p0, v0

    return-void
.end method

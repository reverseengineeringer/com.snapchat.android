.class public Lkkkkkk/xkxkxk;
.super Ljavax/crypto/CipherInputStream;


# static fields
.field public static b041D041DН041DНН:I = 0x0

.field public static b041DНН041DНН:I = 0x1

.field public static bН041DН041DНН:I = 0x2

.field public static bННН041DНН:I = 0xb


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lkkkkkk/xkxkxk;->bННН041DНН:I

    sget v1, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkxkxk;->bН041DН041DНН:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1b

    sput v0, Lkkkkkk/xkxkxk;->bННН041DНН:I

    invoke-static {}, Lkkkkkk/xkxkxk;->bООО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    :pswitch_0
    packed-switch v2, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    packed-switch v2, :pswitch_data_3

    :goto_1
    packed-switch v2, :pswitch_data_4

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    sget v0, Lkkkkkk/xkxkxk;->bННН041DНН:I

    sget v1, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xkxkxk;->b041EОО041EО041E()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_5

    invoke-static {}, Lkkkkkk/xkxkxk;->bООО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/xkxkxk;->bННН041DНН:I

    const/16 v0, 0x5e

    sput v0, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static b041EОО041EО041E()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bООО041EО041E()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lkkkkkk/xkxkxk;->bООО041EО041E()I

    move-result v0

    sget v1, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkxkxk;->bН041DН041DНН:I

    rem-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5a

    :try_start_1
    sput v0, Lkkkkkk/xkxkxk;->bННН041DНН:I

    invoke-static {}, Lkkkkkk/xkxkxk;->bООО041EО041E()I

    move-result v0

    sput v0, Lkkkkkk/xkxkxk;->b041DНН041DНН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lkkkkkk/xkxkxk;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    :pswitch_1
    sget v1, Lkkkkkk/xkxkxk;->bННН041DНН:I

    sget v2, Lkkkkkk/xkxkxk;->b041DНН041DНН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xkxkxk;->bННН041DНН:I

    mul-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/xkxkxk;->b041EОО041EО041E()I

    move-result v2

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xkxkxk;->b041D041DН041DНН:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x4c

    sput v1, Lkkkkkk/xkxkxk;->bННН041DНН:I

    invoke-static {}, Lkkkkkk/xkxkxk;->bООО041EО041E()I

    move-result v1

    sput v1, Lkkkkkk/xkxkxk;->b041D041DН041DНН:I

    :cond_0
    packed-switch v3, :pswitch_data_1

    :goto_0
    packed-switch v3, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return v0

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

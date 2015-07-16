.class public Lkkkkkk/xxxkxk;
.super Ljava/lang/Object;


# static fields
.field public static b041D041DНН041DН:I = 0x0

.field public static b041DННН041DН:I = 0x1

.field public static bН041DНН041DН:I = 0x2

.field public static bНННН041DН:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 2

    :try_start_0
    sget v0, Lkkkkkk/xxxkxk;->bНННН041DН:I

    sget v1, Lkkkkkk/xxxkxk;->b041DННН041DН:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xxxkxk;->bОО041EОО041E()I

    move-result v1

    rem-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    sget v0, Lkkkkkk/xxxkxk;->bНННН041DН:I

    sget v1, Lkkkkkk/xxxkxk;->b041DННН041DН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/xxxkxk;->bНННН041DН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xxxkxk;->bН041DНН041DН:I

    rem-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xxxkxk;->bО041E041EОО041E()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/xxxkxk;->b041EО041EОО041E()I

    move-result v0

    sput v0, Lkkkkkk/xxxkxk;->bНННН041DН:I

    const/16 v0, 0x49

    sput v0, Lkkkkkk/xxxkxk;->b041DННН041DН:I

    :cond_0
    const/16 v0, 0x3c

    :try_start_1
    sput v0, Lkkkkkk/xxxkxk;->bНННН041DН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x6

    :try_start_2
    sput v0, Lkkkkkk/xxxkxk;->b041DННН041DН:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b041E041E041EОО041E(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "\ufea3\ufea7\ufeb5"

    const/16 v3, 0xcf

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lkkkkkk/kkxkkk;->bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "\uff64\uff68\uff76\uff52\uff66\uff65\uff66\uff52\uff73\uff6e\uff66\uff76\uff58\uff73\uff64\uff67\uff67\uff6c\uff71\uff6a"

    const/16 v3, 0x4d

    const/16 v4, 0x90

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {}, Lkkkkkk/xxxkxk;->b041EО041EОО041E()I

    move-result v3

    sget v4, Lkkkkkk/xxxkxk;->b041DННН041DН:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    invoke-static {}, Lkkkkkk/xxxkxk;->bОО041EОО041E()I

    move-result v4

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x2c

    sput v3, Lkkkkkk/xxxkxk;->bНННН041DН:I

    const/16 v3, 0x58

    sput v3, Lkkkkkk/xxxkxk;->b041D041DНН041DН:I

    :pswitch_0
    :try_start_1
    const-string v3, ";<"

    const/16 v4, 0x18

    const/16 v5, 0x11

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lkkkkkk/kkxkkk;->b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Lkkkkkk/xkxkxk;

    invoke-direct {v0, p0, v2}, Lkkkkkk/xkxkxk;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget v1, Lkkkkkk/xxxkxk;->bНННН041DН:I

    sget v2, Lkkkkkk/xxxkxk;->b041DННН041DН:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xxxkxk;->bНННН041DН:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    mul-int/2addr v1, v2

    :try_start_3
    sget v2, Lkkkkkk/xxxkxk;->bН041DНН041DН:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xxxkxk;->b041D041DНН041DН:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x10

    sput v1, Lkkkkkk/xxxkxk;->bНННН041DН:I

    invoke-static {}, Lkkkkkk/xxxkxk;->b041EО041EОО041E()I

    move-result v1

    sput v1, Lkkkkkk/xxxkxk;->b041D041DНН041DН:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041EО041EОО041E()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public static bО041E041EОО041E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static bОО041EОО041E()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

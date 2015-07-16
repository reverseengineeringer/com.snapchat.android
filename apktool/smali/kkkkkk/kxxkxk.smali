.class public Lkkkkkk/kxxkxk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kxxkxk"
.end annotation


# static fields
.field public static b041D041D041D041DНН:I = 0x2

.field public static b041DН041D041DНН:I = 0x0

.field public static bН041D041D041DНН:I = 0x1

.field public static bНН041D041DНН:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 2

    :try_start_0
    sget v0, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    sget v1, Lkkkkkk/kxxkxk;->bН041D041D041DНН:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkxk;->b041D041D041D041DНН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v1, :cond_0

    :try_start_1
    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v0

    sput v0, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    const/16 v0, 0x3c

    sput v0, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v0

    sget v1, Lkkkkkk/kxxkxk;->bН041D041D041DНН:I

    add-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkxk;->b041D041D041D041DНН:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x5c

    sput v0, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v0

    sput v0, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public static bК041AК041A041AК()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-char v3, v1, v0

    sget v4, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    sget v5, Lkkkkkk/kxxkxk;->bН041D041D041DНН:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxkxk;->b041D041D041D041DНН:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v4

    sput v4, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v4

    sput v4, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v4, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    sget v5, Lkkkkkk/kxxkxk;->bН041D041D041DНН:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxxkxk;->b041D041D041D041DНН:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v4

    sput v4, Lkkkkkk/kxxkxk;->bНН041D041DНН:I

    invoke-static {}, Lkkkkkk/kxxkxk;->bК041AК041A041AК()I

    move-result v4

    sput v4, Lkkkkkk/kxxkxk;->b041DН041D041DНН:I

    :pswitch_0
    xor-int/2addr v3, p2

    int-to-char v3, v3

    :try_start_1
    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

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

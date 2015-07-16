.class public Lkkkkkk/kxkxkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kxkxkk"
.end annotation


# static fields
.field public static b044E044E044E044Eюю:I = 0x0

.field public static b044Eю044E044Eюю:I = 0x1

.field public static bю044E044E044Eюю:I = 0x2

.field public static bюю044E044Eюю:I = 0x58


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    sget v1, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    invoke-static {}, Lkkkkkk/kxkxkk;->bО041E041E041E041E041E()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kxkxkk;->bю044E044E044Eюю:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x4a

    sput v1, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v1

    sput v1, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    :pswitch_0
    sget v1, Lkkkkkk/kxkxkk;->bю044E044E044Eюю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x5

    sput v0, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v0

    sput v0, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    :pswitch_1
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V

    :pswitch_2
    packed-switch v3, :pswitch_data_2

    :goto_0
    packed-switch v3, :pswitch_data_3

    goto :goto_0

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static b041EО041E041E041E041E()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public static bО041E041E041E041E041E()I
    .locals 1

    const/4 v0, 0x1

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

    :cond_0
    :goto_0
    :pswitch_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v3, p2

    int-to-char v3, v3

    :try_start_1
    aput-char v3, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    sget v3, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    sget v4, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkxkk;->bю044E044E044Eюю:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v3

    sput v3, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v3

    sput v3, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    sget v3, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    sget v4, Lkkkkkk/kxkxkk;->b044Eю044E044Eюю:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkxkk;->bю044E044E044Eюю:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkxkk;->b044E044E044E044Eюю:I

    if-eq v3, v4, :cond_0

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v3

    sput v3, Lkkkkkk/kxkxkk;->bюю044E044Eюю:I

    invoke-static {}, Lkkkkkk/kxkxkk;->b041EО041E041E041E041E()I

    move-result v3

    sput v3, Lkkkkkk/kxkxkk;->b044E044E044E044Eюю:I

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

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
.end method

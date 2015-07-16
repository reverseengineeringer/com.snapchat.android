.class public Lkkkkkk/xxkkxk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xxkkxk"
.end annotation


# static fields
.field public static b044E044E044Eю044E044E:I = 0x5c

.field public static b044Eюю044E044E044E:I = 0x0

.field public static bю044Eю044E044E044E:I = 0x2

.field public static bююю044E044E044E:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    sget v1, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    sget v2, Lkkkkkk/xxkkxk;->bююю044E044E044E:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/xxkkxk;->bю044Eю044E044E044E:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/xxkkxk;->b044Eюю044E044E044E:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x1f

    sput v1, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    invoke-static {}, Lkkkkkk/xxkkxk;->b041A041AК041A041AК()I

    move-result v1

    sput v1, Lkkkkkk/xxkkxk;->b044Eюю044E044E044E:I

    :cond_0
    sget v1, Lkkkkkk/xxkkxk;->bююю044E044E044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xxkkxk;->bКК041A041A041AК()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    invoke-static {}, Lkkkkkk/xxkkxk;->b041A041AК041A041AК()I

    move-result v0

    sput v0, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    const/16 v0, 0x2b

    sput v0, Lkkkkkk/xxkkxk;->bююю044E044E044E:I

    :pswitch_2
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static b041A041AК041A041AК()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public static bКК041A041A041AК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 11

    const/16 v1, 0x101

    const/16 v10, 0xff

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [I

    new-array v5, v1, [I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v2

    :goto_0
    if-gt v1, v10, :cond_1

    rem-int v7, v1, v6

    rem-int v8, v1, v6

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aget-char v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v8, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    sget v9, Lkkkkkk/xxkkxk;->bююю044E044E044E:I

    add-int/2addr v8, v9

    sget v9, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    mul-int/2addr v8, v9

    sget v9, Lkkkkkk/xxkkxk;->bю044Eю044E044E044E:I

    rem-int/2addr v8, v9

    sget v9, Lkkkkkk/xxkkxk;->b044Eюю044E044E044E:I

    if-eq v8, v9, :cond_0

    sget v8, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    sget v9, Lkkkkkk/xxkkxk;->bююю044E044E044E:I

    add-int/2addr v9, v8

    mul-int/2addr v8, v9

    sget v9, Lkkkkkk/xxkkxk;->bю044Eю044E044E044E:I

    rem-int/2addr v8, v9

    packed-switch v8, :pswitch_data_2

    sput v0, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    const/16 v8, 0x1c

    sput v8, Lkkkkkk/xxkkxk;->b044Eюю044E044E044E:I

    :pswitch_2
    const/16 v8, 0x54

    sput v8, Lkkkkkk/xxkkxk;->b044E044E044Eю044E044E:I

    const/16 v8, 0x40

    sput v8, Lkkkkkk/xxkkxk;->b044Eюю044E044E044E:I

    :cond_0
    aput v7, v5, v1

    aput v1, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    move v3, v2

    :goto_2
    if-gt v1, v10, :cond_2

    aget v6, v4, v1

    add-int/2addr v3, v6

    aget v6, v5, v1

    add-int/2addr v3, v6

    rem-int/lit16 v3, v3, 0x100

    aget v6, v4, v1

    aget v7, v4, v3

    aput v7, v4, v1

    aput v6, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move v3, v2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v0, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit16 v3, v3, 0x100

    aget v6, v4, v3

    add-int/2addr v1, v6

    rem-int/lit16 v1, v1, 0x100

    aget v6, v4, v3

    aget v7, v4, v1

    aput v7, v4, v3

    aput v6, v4, v1

    aget v6, v4, v3

    aget v7, v4, v1

    add-int/2addr v6, v7

    rem-int/lit16 v6, v6, 0x100

    aget v6, v4, v6

    add-int/lit8 v7, v0, -0x1

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aget-char v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0

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

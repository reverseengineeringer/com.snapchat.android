.class public Lkkkkkk/xxxxkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xxxxkk"
.end annotation


# static fields
.field public static b044E044E044Eюю044E:I = 0x0

.field public static b044Eюю044Eю044E:I = 0x2

.field public static bю044E044Eюю044E:I = 0x4d

.field public static bююю044Eю044E:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

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

.method public static b041E041EО041E041E041E()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public static bО041EО041E041E041E()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bОО041E041E041E041E()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    array-length v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v3, :cond_0

    :pswitch_1
    packed-switch v5, :pswitch_data_0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    :try_start_1
    aget-char v3, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v3, p2

    int-to-char v3, v3

    :try_start_2
    aput-char v3, v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v0, 0x1

    sget v3, Lkkkkkk/xxxxkk;->bю044E044Eюю044E:I

    invoke-static {}, Lkkkkkk/xxxxkk;->bО041EО041E041E041E()I

    move-result v4

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    invoke-static {}, Lkkkkkk/xxxxkk;->bОО041E041E041E041E()I

    move-result v4

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_2

    invoke-static {}, Lkkkkkk/xxxxkk;->b041E041EО041E041E041E()I

    move-result v3

    sget v4, Lkkkkkk/xxxxkk;->bююю044Eю044E:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xxxxkk;->b044Eюю044Eю044E:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_3

    invoke-static {}, Lkkkkkk/xxxxkk;->b041E041EО041E041E041E()I

    move-result v3

    sput v3, Lkkkkkk/xxxxkk;->bю044E044Eюю044E:I

    const/16 v3, 0x4a

    sput v3, Lkkkkkk/xxxxkk;->b044E044E044Eюю044E:I

    :pswitch_3
    const/16 v3, 0x53

    sput v3, Lkkkkkk/xxxxkk;->bю044E044Eюю044E:I

    const/16 v3, 0x50

    sput v3, Lkkkkkk/xxxxkk;->b044E044E044Eюю044E:I

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
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
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.class public Lkkkkkk/kxkkxk;
.super Lkkkkkk/xxkxxk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kxkkxk"
.end annotation


# static fields
.field public static b044E044Eюю044E044E:I = 0x28

.field public static b044Eю044Eю044E044E:I = 0x0

.field public static bю044E044Eю044E044E:I = 0x1

.field public static bюю044Eю044E044E:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    :pswitch_0
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lkkkkkk/kxkkxk;->b044E044Eюю044E044E:I

    invoke-static {}, Lkkkkkk/kxkkxk;->bК041A041AК041AК()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kxkkxk;->bюю044Eю044E044E:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kxkkxk;->b041A041A041AК041AК()I

    move-result v2

    sput v2, Lkkkkkk/kxkkxk;->b044E044Eюю044E044E:I

    invoke-static {}, Lkkkkkk/kxkkxk;->b041A041A041AК041AК()I

    move-result v2

    sput v2, Lkkkkkk/kxkkxk;->bюю044Eю044E044E:I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lkkkkkk/xxkxxk;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041A041A041AК041AК()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public static bК041A041AК041AК()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bК041A041A041A041AК(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [C

    :cond_0
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0

    add-int/2addr v3, p2

    sub-int/2addr v3, p3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    sget v3, Lkkkkkk/kxkkxk;->b044E044Eюю044E044E:I

    sget v4, Lkkkkkk/kxkkxk;->bю044E044Eю044E044E:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkkxk;->b044E044Eюю044E044E:I

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkkxk;->bюю044Eю044E044E:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/kxkkxk;->b044Eю044Eю044E044E:I

    if-eq v3, v4, :cond_0

    invoke-static {}, Lkkkkkk/kxkkxk;->b041A041A041AК041AК()I

    move-result v3

    sput v3, Lkkkkkk/kxkkxk;->b044E044Eюю044E044E:I

    const/16 v3, 0x4c

    sput v3, Lkkkkkk/kxkkxk;->b044Eю044Eю044E044E:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

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

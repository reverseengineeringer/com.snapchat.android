.class public Lkkkkkk/xxkkkk;
.super Lkkkkkk/xxkxxk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xxkkkk"
.end annotation


# static fields
.field public static b043Aк043A043Aк043A:I = 0x1

.field public static bк043A043A043Aк043A:I = 0x2

.field public static bкк043A043Aк043A:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkkkkkk/xxkxxk;-><init>()V

    sget v0, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    sget v1, Lkkkkkk/xxkkkk;->b043Aк043A043Aк043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xxkkkk;->bк043A043A043Aк043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    sput v0, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    const/16 v0, 0x40

    sput v0, Lkkkkkk/xxkkkk;->b043Aк043A043Aк043A:I

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041A041A041A041A041AК()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b041AК041A041A041AК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bККККК041A()I
    .locals 1

    const/16 v0, 0x37

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

    :pswitch_2
    packed-switch v0, :pswitch_data_2

    :goto_1
    const/4 v3, 0x1

    packed-switch v3, :pswitch_data_3

    goto :goto_1

    :goto_2
    :pswitch_3
    sget v3, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    sget v4, Lkkkkkk/xxkkkk;->b043Aк043A043Aк043A:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xxkkkk;->bк043A043A043Aк043A:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_4

    invoke-static {}, Lkkkkkk/xxkkkk;->bККККК041A()I

    move-result v3

    sput v3, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    invoke-static {}, Lkkkkkk/xxkkkk;->bККККК041A()I

    move-result v3

    sput v3, Lkkkkkk/xxkkkk;->b043Aк043A043Aк043A:I

    :pswitch_4
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-char v3, v1, v0

    add-int/2addr v3, p2

    add-int/2addr v3, p3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    sget v3, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    invoke-static {}, Lkkkkkk/xxkkkk;->b041A041A041A041A041AК()I

    move-result v4

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    invoke-static {}, Lkkkkkk/xxkkkk;->b041AК041A041A041AК()I

    move-result v4

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_5

    invoke-static {}, Lkkkkkk/xxkkkk;->bККККК041A()I

    move-result v3

    sput v3, Lkkkkkk/xxkkkk;->bкк043A043Aк043A:I

    invoke-static {}, Lkkkkkk/xxkkkk;->bККККК041A()I

    move-result v3

    sput v3, Lkkkkkk/xxkkkk;->b043Aк043A043Aк043A:I

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

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
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

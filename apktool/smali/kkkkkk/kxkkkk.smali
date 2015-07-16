.class public Lkkkkkk/kxkkkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kxkkkk"
.end annotation


# static fields
.field public static b043A043Aк043Aк043A:I = 0x0

.field public static b043Aкк043Aк043A:I = 0x1

.field public static bк043Aк043Aк043A:I = 0x2

.field public static bккк043Aк043A:I = 0x63


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
    const/4 v0, -0x1

    sget v1, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    sget v2, Lkkkkkk/kxkkkk;->b043Aкк043Aк043A:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kxkkkk;->bк043Aк043Aк043A:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lkkkkkk/kxkkkk;->b041AК041AККК()I

    move-result v1

    sput v1, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    invoke-static {}, Lkkkkkk/kxkkkk;->b041AК041AККК()I

    move-result v1

    sput v1, Lkkkkkk/kxkkkk;->b043Aкк043Aк043A:I

    :goto_1
    :pswitch_2
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    throw v0

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

.method public static b041AК041AККК()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [C

    sget v4, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    sget v5, Lkkkkkk/kxkkkk;->b043Aкк043Aк043A:I

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkkkk;->bк043Aк043Aк043A:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/kxkkkk;->b043A043Aк043Aк043A:I

    if-eq v4, v5, :cond_0

    sput v0, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    const/16 v4, 0x18

    sput v4, Lkkkkkk/kxkkkk;->b043A043Aк043Aк043A:I

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-char v4, v2, v0

    sub-int/2addr v4, p2

    sub-int/2addr v4, p2

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    :try_start_0
    new-array v4, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :catch_0
    move-exception v4

    invoke-static {}, Lkkkkkk/kxkkkk;->b041AК041AККК()I

    move-result v4

    sput v4, Lkkkkkk/kxkkkk;->bккк043Aк043A:I

    goto :goto_0

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
.end method

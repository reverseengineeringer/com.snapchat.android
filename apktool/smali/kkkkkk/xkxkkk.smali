.class public Lkkkkkk/xkxkkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xkxkkk"
.end annotation


# static fields
.field public static b043A043A043Aк043A043A:I = 0x17

.field public static b043Aкк043A043A043A:I = 0x1

.field public static bк043Aк043A043A043A:I = 0x2

.field public static bккк043A043A043A:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V

    return-void
.end method

.method public static b041A041AКККК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static bК041AКККК()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bКК041AККК()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget v0, Lkkkkkk/xkxkkk;->b043A043A043Aк043A043A:I

    invoke-static {}, Lkkkkkk/xkxkkk;->bК041AКККК()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v0, v2

    sget v2, Lkkkkkk/xkxkkk;->bк043Aк043A043A043A:I

    rem-int/2addr v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x11

    :try_start_2
    sput v0, Lkkkkkk/xkxkkk;->b043A043A043Aк043A043A:I

    const/16 v0, 0x18

    sput v0, Lkkkkkk/xkxkkk;->bккк043A043A043A:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget v0, Lkkkkkk/xkxkkk;->b043A043A043Aк043A043A:I

    invoke-static {}, Lkkkkkk/xkxkkk;->bК041AКККК()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v0, v2

    invoke-static {}, Lkkkkkk/xkxkkk;->b041A041AКККК()I

    move-result v2

    rem-int/2addr v0, v2

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lkkkkkk/xkxkkk;->bКК041AККК()I

    move-result v0

    sput v0, Lkkkkkk/xkxkkk;->b043A043A043Aк043A043A:I

    const/16 v0, 0x45

    sput v0, Lkkkkkk/xkxkkk;->bккк043A043A043A:I

    :pswitch_0
    :try_start_3
    array-length v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-array v2, v0, [C
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v0, 0x0

    :goto_0
    :try_start_5
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-char v3, v1, v0

    add-int/2addr v3, p2

    add-int/2addr v3, p2

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

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
        :pswitch_0
    .end packed-switch
.end method

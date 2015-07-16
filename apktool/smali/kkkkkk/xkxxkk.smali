.class public Lkkkkkk/xkxxkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xkxxkk"
.end annotation


# static fields
.field public static b044E044E044E044E044Eю:I = 0x0

.field public static b044Eюююю044E:I = 0x2

.field public static bю044E044E044E044Eю:I = 0x12

.field public static bююююю044E:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    sget v1, Lkkkkkk/xkxxkk;->bююююю044E:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xkxxkk;->bК041AКК041AК()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5c

    sput v0, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    const/16 v0, 0x3f

    sput v0, Lkkkkkk/xkxxkk;->b044E044E044E044E044Eю:I

    :pswitch_0
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041A041AКК041AК()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static bК041AКК041AК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [C

    move v0, v1

    :goto_0
    :pswitch_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-char v4, v2, v0

    add-int/2addr v4, p2

    add-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    sget v4, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    sget v5, Lkkkkkk/xkxxkk;->bююююю044E:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    :pswitch_1
    packed-switch v6, :pswitch_data_0

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    sget v5, Lkkkkkk/xkxxkk;->b044Eюююю044E:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_2

    invoke-static {}, Lkkkkkk/xkxxkk;->b041A041AКК041AК()I

    move-result v4

    sput v4, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    invoke-static {}, Lkkkkkk/xkxxkk;->b041A041AКК041AК()I

    move-result v4

    sput v4, Lkkkkkk/xkxxkk;->b044E044E044E044E044Eю:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget v2, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    sget v4, Lkkkkkk/xkxxkk;->bююююю044E:I

    add-int/2addr v4, v2

    mul-int/2addr v2, v4

    sget v4, Lkkkkkk/xkxxkk;->b044Eюююю044E:I

    rem-int/2addr v2, v4

    packed-switch v2, :pswitch_data_3

    invoke-static {}, Lkkkkkk/xkxxkk;->b041A041AКК041AК()I

    move-result v2

    sput v2, Lkkkkkk/xkxxkk;->bю044E044E044E044Eю:I

    sput v1, Lkkkkkk/xkxxkk;->b044E044E044E044E044Eю:I

    :pswitch_3
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

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

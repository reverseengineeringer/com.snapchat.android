.class public Lkkkkkk/xxkxkk;
.super Lkkkkkk/xkkxkk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "xxkxkk"
.end annotation


# static fields
.field public static b044E044Eюю044Eю:I = 0x0

.field public static b044Eююю044Eю:I = 0x2

.field public static bю044Eюю044Eю:I = 0x45

.field public static bюююю044Eю:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v0

    sget v1, Lkkkkkk/xxkxkk;->bюююю044Eю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xxkxkk;->b044Eююю044Eю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v0

    sput v0, Lkkkkkk/xxkxkk;->bюююю044Eю:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lkkkkkk/xkkxkk;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v0, Lkkkkkk/xxkxkk;->bю044Eюю044Eю:I

    sget v1, Lkkkkkk/xxkxkk;->bюююю044Eю:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/xxkxkk;->bю044Eюю044Eю:I

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/xxkxkk;->bКК041AК041AК()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/xxkxkk;->b044E044Eюю044Eю:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v0

    sput v0, Lkkkkkk/xxkxkk;->bю044Eюю044Eю:I

    const/16 v0, 0x15

    sput v0, Lkkkkkk/xxkxkk;->b044E044Eюю044Eю:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

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

.method public static b041AК041AК041AК()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public static bКК041AК041AК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :cond_0
    :goto_0
    :try_start_0
    new-array v3, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v3

    sget v4, Lkkkkkk/xxkxkk;->bюююю044Eю:I

    add-int/2addr v3, v4

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v4

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/xxkxkk;->b044Eююю044Eю:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/xxkxkk;->b044E044Eюю044Eю:I

    if-eq v3, v4, :cond_0

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v3

    sput v3, Lkkkkkk/xxkxkk;->bю044Eюю044Eю:I

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v3

    sput v3, Lkkkkkk/xxkxkk;->b044E044Eюю044Eю:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    :pswitch_0
    packed-switch v5, :pswitch_data_0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lkkkkkk/xxkxkk;->b041AК041AК041AК()I

    move-result v0

    sput v0, Lkkkkkk/xxkxkk;->bю044Eюю044Eю:I

    array-length v0, v2

    new-array v3, v0, [C

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    :goto_2
    packed-switch v5, :pswitch_data_3

    goto :goto_2

    :pswitch_3
    move v0, v1

    :goto_3
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-char v4, v2, v0

    sub-int/2addr v4, p2

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    nop

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
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

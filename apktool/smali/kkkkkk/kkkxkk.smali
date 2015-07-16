.class public Lkkkkkk/kkkxkk;
.super Lkkkkkk/xxkxxk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kkkxkk"
.end annotation


# static fields
.field public static b044E044E044Eююю:I = 0x2

.field public static b044Eю044Eююю:I = 0x1

.field public static bю044E044Eююю:I = 0x1

.field public static bююю044Eюю:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_1
    new-array v0, v1, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget v0, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    sget v1, Lkkkkkk/kkkxkk;->bю044E044Eююю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkkxkk;->b044E044E044Eююю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x39

    sput v0, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    const/16 v0, 0x47

    sput v0, Lkkkkkk/kkkxkk;->bю044E044Eююю:I

    :pswitch_0
    invoke-direct {p0}, Lkkkkkk/xxkxxk;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041A041A041AККК()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bККК041AКК()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method


# virtual methods
.method public bК041A041A041A041AК(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    array-length v2, v1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-array v2, v2, [C

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-char v3, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v3, p2

    sub-int/2addr v3, p3

    sget v4, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    sget v5, Lkkkkkk/kkkxkk;->bю044E044Eююю:I

    add-int/2addr v4, v5

    sget v5, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    mul-int/2addr v4, v5

    sget v5, Lkkkkkk/kkkxkk;->b044E044E044Eююю:I

    rem-int/2addr v4, v5

    sget v5, Lkkkkkk/kkkxkk;->bююю044Eюю:I

    if-eq v4, v5, :cond_0

    invoke-static {}, Lkkkkkk/kkkxkk;->bККК041AКК()I

    move-result v4

    sput v4, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    const/4 v4, 0x5

    sput v4, Lkkkkkk/kkkxkk;->bююю044Eюю:I

    :cond_0
    int-to-char v3, v3

    :try_start_2
    aput-char v3, v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    sget v1, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    invoke-static {}, Lkkkkkk/kkkxkk;->b041A041A041AККК()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v1, v3

    sget v3, Lkkkkkk/kkkxkk;->b044E044E044Eююю:I

    rem-int/2addr v1, v3

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lkkkkkk/kkkxkk;->bККК041AКК()I

    move-result v1

    sput v1, Lkkkkkk/kkkxkk;->b044Eю044Eююю:I

    const/16 v1, 0xf

    sput v1, Lkkkkkk/kkkxkk;->bююю044Eюю:I

    :pswitch_2
    :try_start_4
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    throw v0

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

.class public abstract Lkkkkkk/xkkxkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkkkkk/kkxkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "xkkxkk"
.end annotation


# static fields
.field public static b044E044Eю044Eюю:I = 0x2

.field public static b044Eюю044Eюю:I = 0x33

.field public static bю044Eю044Eюю:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget v0, Lkkkkkk/xkkxkk;->b044Eюю044Eюю:I

    sget v1, Lkkkkkk/xkkxkk;->bю044Eю044Eюю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxkk;->b044E044Eю044Eюю:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    const/16 v0, 0x54

    sput v0, Lkkkkkk/xkkxkk;->b044Eюю044Eюю:I

    const/16 v0, 0x3f

    sput v0, Lkkkkkk/xkkxkk;->bю044Eю044Eюю:I

    :pswitch_1
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    :try_start_0
    sget v0, Lkkkkkk/xkkxkk;->b044Eюю044Eюю:I

    sget v1, Lkkkkkk/xkkxkk;->bю044Eю044Eюю:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/xkkxkk;->b044E044Eю044Eюю:I

    rem-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_3

    :try_start_1
    invoke-static {}, Lkkkkkk/xkkxkk;->b041AККККК()I

    move-result v0

    sput v0, Lkkkkkk/xkkxkk;->b044Eюю044Eюю:I

    const/16 v0, 0x42

    sput v0, Lkkkkkk/xkkxkk;->bю044Eю044Eюю:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_3
    :try_start_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

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
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static b041AККККК()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method


# virtual methods
.method public abstract bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
.end method

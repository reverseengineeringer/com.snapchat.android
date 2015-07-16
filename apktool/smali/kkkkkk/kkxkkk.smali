.class public Lkkkkkk/kkxkkk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkkkkkk/xxkkkk;,
        Lkkkkkk/kkkxkk;,
        Lkkkkkk/kxkkxk;,
        Lkkkkkk/kkkxxk;,
        Lkkkkkk/xxkxxk;,
        Lkkkkkk/kxxkxk;,
        Lkkkkkk/xkxkkk;,
        Lkkkkkk/xkxxkk;,
        Lkkkkkk/xxxxkk;,
        Lkkkkkk/xxkkxk;,
        Lkkkkkk/kxkkkk;,
        Lkkkkkk/xxkxkk;,
        Lkkkkkk/kxkxkk;,
        Lkkkkkk/xkkxkk;
    }
.end annotation


# static fields
.field private static b043A043A043A043Aк043A:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkkkkkk/xkkxkk;",
            ">;"
        }
    .end annotation
.end field

.field public static b043A043Aкк043A043A:I = 0x2f

.field public static b043Aк043Aк043A043A:I = 0x1

.field private static b043Aккк043A043A:I = 0x0

.field public static bк043A043Aк043A043A:I = 0x2

.field private static bк043Aкк043A043A:Z

.field public static bкк043Aк043A043A:I

.field private static bкккк043A043A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkkkkkk/xxkxxk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v1, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lkkkkkk/kkxkkk;->bКККК041AК()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v0

    sput v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/16 v0, 0x59

    sput v0, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :pswitch_0
    const/16 v0, 0x18

    sput v0, Lkkkkkk/kkxkkk;->b043Aккк043A043A:I

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lkkkkkk/kkxkkk;->bк043Aкк043A043A:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized b041A041A041A041AКК()V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    const-class v1, Lkkkkkk/kkxkkk;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :try_start_0
    sget-boolean v5, Lkkkkkk/kkxkkk;->bк043Aкк043A043A:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    sput-boolean v5, Lkkkkkk/kkxkkk;->bк043Aкк043A043A:Z

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    :try_start_1
    new-array v5, v4, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget v5, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v6, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v6, v5

    mul-int/2addr v5, v6

    sget v6, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v5, v6

    packed-switch v5, :pswitch_data_2

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v5

    sput v5, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v5

    sput v5, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    :try_start_3
    sput v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kxkxkk;

    invoke-direct {v2}, Lkkkkkk/kxkxkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/xxkxkk;

    invoke-direct {v2}, Lkkkkkk/xxkxkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kxkkkk;

    invoke-direct {v2}, Lkkkkkk/kxkkkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v2, Lkkkkkk/xxxxkk;

    invoke-direct {v2}, Lkkkkkk/xxxxkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/xkxxkk;

    invoke-direct {v2}, Lkkkkkk/xkxxkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/xkxkkk;

    invoke-direct {v2}, Lkkkkkk/xkxkkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kxxkxk;

    invoke-direct {v2}, Lkkkkkk/kxxkxk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kkkxxk;

    invoke-direct {v2}, Lkkkkkk/kkkxxk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kxkkxk;

    invoke-direct {v2}, Lkkkkkk/kxkkxk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;

    new-instance v2, Lkkkkkk/kkkxkk;

    invoke-direct {v2}, Lkkkkkk/kkkxkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v2, Lkkkkkk/xxkkkk;

    invoke-direct {v2}, Lkkkkkk/xxkkkk;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Random;

    sget v3, Lkkkkkk/kkxkkk;->b043Aккк043A043A:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Random;

    sget v3, Lkkkkkk/kkxkkk;->b043Aккк043A043A:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catch_1
    move-exception v0

    :try_start_a
    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v4

    const/16 v4, 0x32

    sput v4, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v3

    :try_start_c
    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v3

    sput v3, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    :try_start_d
    div-int/2addr v0, v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

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
        :pswitch_0
    .end packed-switch
.end method

.method public static b041A041AК041AКК(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-gt p0, v1, :cond_1

    if-gez p0, :cond_2

    sget v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v2, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    sget v3, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v4, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v3, v4

    sget v4, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v3, v4

    sget v4, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v3, v4

    sget v4, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0x50

    sput v3, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/16 v3, 0x2c

    sput v3, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_0
    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0xb

    sput v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/16 v1, 0x18

    sput v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_1
    move p0, v0

    :cond_2
    :try_start_0
    sput p0, Lkkkkkk/kkxkkk;->b043Aккк043A043A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b041AК041A041AКК(Ljava/lang/String;CCC)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lkkkkkk/kkxkkk;->b041A041A041A041AКК()V

    :try_start_0
    sget-object v0, Lkkkkkk/kkxkkk;->bкккк043A043A:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkkkkk/xxkxxk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bКК041A041AКК()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2a

    sput v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/4 v1, 0x3

    sput v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    sget v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v2, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x35

    sput v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v1

    sput v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_0
    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lkkkkkk/xxkxxk;->bК041A041A041A041AК(Ljava/lang/String;CC)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :pswitch_1
    packed-switch v3, :pswitch_data_1

    :goto_0
    packed-switch v3, :pswitch_data_2

    goto :goto_0

    :goto_1
    :pswitch_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b041AКК041AКК(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lkkkkkk/kkxkkk;->b041A041A041A041AКК()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lkkkkkk/kkxkkk;->b043A043A043A043Aк043A:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkkkkk/xkkxkk;

    new-instance v1, Ljava/lang/Character;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v3, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v2, v3

    sget v3, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v2, v3, :cond_0

    sget v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v3, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    invoke-static {}, Lkkkkkk/kkxkkk;->bКККК041AК()I

    move-result v3

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v2

    sput v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v2

    sput v2, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :pswitch_0
    const/16 v2, 0xb

    sput v2, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/16 v2, 0x48

    sput v2, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_0
    :try_start_2
    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, p0, v1}, Lkkkkkk/xkkxkk;->bК041A041AККК(Ljava/lang/String;C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b041AККК041AК(Ljava/lang/String;CCC)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v1, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v0, v1

    :try_start_1
    sget v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1b

    sput v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    const/4 v0, 0x1

    sput v0, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lkkkkkk/kkxkkk;->b041AК041A041AКК(Ljava/lang/String;CCC)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v1

    sget v2, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v1, v2

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v1, v2

    sget v2, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0xd

    sput v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v1

    sput v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public static bК041A041A041AКК(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 2

    sget v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v1, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    if-eq v0, v1, :cond_0

    sget v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    sget v1, Lkkkkkk/kkxkkk;->b043Aк043Aк043A043A:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lkkkkkk/kkxkkk;->bк043A043Aк043A043A:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v0

    sput v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v0

    sput v0, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :pswitch_0
    const/16 v0, 0x48

    sput v0, Lkkkkkk/kkxkkk;->b043A043Aкк043A043A:I

    invoke-static {}, Lkkkkkk/kkxkkk;->bК041AК041AКК()I

    move-result v0

    sput v0, Lkkkkkk/kkxkkk;->bкк043Aк043A043A:I

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lkkkkkk/kkxkkk;->b041AКК041AКК(Ljava/lang/String;CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

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
.end method

.method public static bК041AК041AКК()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public static bКК041A041AКК()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static bКККК041AК()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

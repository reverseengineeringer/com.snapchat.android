.class final Lchj$a;
.super Lchj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:B

.field private final transient c:Lcho;

.field private final transient d:Lcho;


# direct methods
.method constructor <init>(Ljava/lang/String;BLcho;Lcho;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lchj;-><init>(Ljava/lang/String;)V

    .line 445
    iput-byte p2, p0, Lchj$a;->b:B

    .line 446
    iput-object p3, p0, Lchj$a;->c:Lcho;

    .line 447
    iput-object p4, p0, Lchj$a;->d:Lcho;

    .line 448
    return-void
.end method


# virtual methods
.method public final a(Lchg;)Lchi;
    .locals 2

    .prologue
    .line 480
    invoke-static {p1}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    .line 482
    iget-byte v1, p0, Lchj$a;->b:B

    packed-switch v1, :pswitch_data_0

    .line 531
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 484
    :pswitch_0
    invoke-virtual {v0}, Lchg;->K()Lchi;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 486
    :pswitch_1
    invoke-virtual {v0}, Lchg;->F()Lchi;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_2
    invoke-virtual {v0}, Lchg;->I()Lchi;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-virtual {v0}, Lchg;->G()Lchi;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_4
    invoke-virtual {v0}, Lchg;->E()Lchi;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_5
    invoke-virtual {v0}, Lchg;->v()Lchi;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_6
    invoke-virtual {v0}, Lchg;->C()Lchi;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_7
    invoke-virtual {v0}, Lchg;->u()Lchi;

    move-result-object v0

    goto :goto_0

    .line 500
    :pswitch_8
    invoke-virtual {v0}, Lchg;->A()Lchi;

    move-result-object v0

    goto :goto_0

    .line 502
    :pswitch_9
    invoke-virtual {v0}, Lchg;->z()Lchi;

    move-result-object v0

    goto :goto_0

    .line 504
    :pswitch_a
    invoke-virtual {v0}, Lchg;->x()Lchi;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_b
    invoke-virtual {v0}, Lchg;->t()Lchi;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_c
    invoke-virtual {v0}, Lchg;->r()Lchi;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_d
    invoke-virtual {v0}, Lchg;->p()Lchi;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_e
    invoke-virtual {v0}, Lchg;->q()Lchi;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_f
    invoke-virtual {v0}, Lchg;->n()Lchi;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_10
    invoke-virtual {v0}, Lchg;->m()Lchi;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_11
    invoke-virtual {v0}, Lchg;->k()Lchi;

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_12
    invoke-virtual {v0}, Lchg;->j()Lchi;

    move-result-object v0

    goto :goto_0

    .line 522
    :pswitch_13
    invoke-virtual {v0}, Lchg;->h()Lchi;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_14
    invoke-virtual {v0}, Lchg;->g()Lchi;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_15
    invoke-virtual {v0}, Lchg;->e()Lchi;

    move-result-object v0

    goto :goto_0

    .line 528
    :pswitch_16
    invoke-virtual {v0}, Lchg;->d()Lchi;

    move-result-object v0

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    if-ne p0, p1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    instance-of v2, p1, Lchj$a;

    if-eqz v2, :cond_2

    .line 467
    iget-byte v2, p0, Lchj$a;->b:B

    check-cast p1, Lchj$a;

    iget-byte v3, p1, Lchj$a;->b:B

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 469
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x1

    iget-byte v1, p0, Lchj$a;->b:B

    shl-int/2addr v0, v1

    return v0
.end method

.method public final x()Lcho;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lchj$a;->c:Lcho;

    return-object v0
.end method

.method public final y()Lcho;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lchj$a;->d:Lcho;

    return-object v0
.end method

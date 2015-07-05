.class final Lcgi$a;
.super Lcgi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:B

.field private final transient c:Lcgn;

.field private final transient d:Lcgn;


# direct methods
.method constructor <init>(Ljava/lang/String;BLcgn;Lcgn;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcgi;-><init>(Ljava/lang/String;)V

    .line 445
    iput-byte p2, p0, Lcgi$a;->b:B

    .line 446
    iput-object p3, p0, Lcgi$a;->c:Lcgn;

    .line 447
    iput-object p4, p0, Lcgi$a;->d:Lcgn;

    .line 448
    return-void
.end method


# virtual methods
.method public final a(Lcgf;)Lcgh;
    .locals 2

    .prologue
    .line 480
    invoke-static {p1}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 482
    iget-byte v1, p0, Lcgi$a;->b:B

    packed-switch v1, :pswitch_data_0

    .line 531
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 484
    :pswitch_0
    invoke-virtual {v0}, Lcgf;->K()Lcgh;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 486
    :pswitch_1
    invoke-virtual {v0}, Lcgf;->F()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 488
    :pswitch_2
    invoke-virtual {v0}, Lcgf;->I()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-virtual {v0}, Lcgf;->G()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_4
    invoke-virtual {v0}, Lcgf;->E()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_5
    invoke-virtual {v0}, Lcgf;->v()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_6
    invoke-virtual {v0}, Lcgf;->C()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 498
    :pswitch_7
    invoke-virtual {v0}, Lcgf;->u()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 500
    :pswitch_8
    invoke-virtual {v0}, Lcgf;->A()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 502
    :pswitch_9
    invoke-virtual {v0}, Lcgf;->z()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 504
    :pswitch_a
    invoke-virtual {v0}, Lcgf;->x()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_b
    invoke-virtual {v0}, Lcgf;->t()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_c
    invoke-virtual {v0}, Lcgf;->r()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_d
    invoke-virtual {v0}, Lcgf;->p()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_e
    invoke-virtual {v0}, Lcgf;->q()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_f
    invoke-virtual {v0}, Lcgf;->n()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_10
    invoke-virtual {v0}, Lcgf;->m()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_11
    invoke-virtual {v0}, Lcgf;->k()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_12
    invoke-virtual {v0}, Lcgf;->j()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 522
    :pswitch_13
    invoke-virtual {v0}, Lcgf;->h()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_14
    invoke-virtual {v0}, Lcgf;->g()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_15
    invoke-virtual {v0}, Lcgf;->e()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 528
    :pswitch_16
    invoke-virtual {v0}, Lcgf;->d()Lcgh;

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
    instance-of v2, p1, Lcgi$a;

    if-eqz v2, :cond_2

    .line 467
    iget-byte v2, p0, Lcgi$a;->b:B

    check-cast p1, Lcgi$a;

    iget-byte v3, p1, Lcgi$a;->b:B

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

    iget-byte v1, p0, Lcgi$a;->b:B

    shl-int/2addr v0, v1

    return v0
.end method

.method public final x()Lcgn;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcgi$a;->c:Lcgn;

    return-object v0
.end method

.method public final y()Lcgn;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcgi$a;->d:Lcgn;

    return-object v0
.end method

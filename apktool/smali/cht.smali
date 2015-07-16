.class public final Lcht;
.super Lcii;
.source "SourceFile"

# interfaces
.implements Lcic;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:Lchg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lchk;->a()J

    move-result-wide v0

    invoke-static {}, Lcjd;->M()Lcjd;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcht;-><init>(JLchg;)V

    .line 265
    return-void
.end method

.method public constructor <init>(B)V
    .locals 3

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    invoke-static {}, Lcjd;->M()Lcjd;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcht;-><init>(JLchg;)V

    .line 306
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .prologue
    .line 481
    invoke-static {}, Lcjd;->L()Lcjd;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcht;-><init>(IIIIIIILchg;)V

    .line 483
    return-void
.end method

.method private constructor <init>(IIIIIIILchg;)V
    .locals 8

    .prologue
    .line 509
    invoke-direct {p0}, Lcii;-><init>()V

    .line 510
    invoke-static/range {p8 .. p8}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    invoke-virtual {v0}, Lchg;->b()Lchg;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 511
    invoke-virtual/range {v0 .. v7}, Lchg;->a(IIIIIII)J

    move-result-wide v2

    .line 513
    iput-object v0, p0, Lcht;->b:Lchg;

    .line 514
    iput-wide v2, p0, Lcht;->a:J

    .line 515
    return-void
.end method

.method private constructor <init>(JLchg;)V
    .locals 5

    .prologue
    .line 332
    invoke-direct {p0}, Lcii;-><init>()V

    .line 333
    invoke-static {p3}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lchg;->a()Lchl;

    move-result-object v1

    sget-object v2, Lchl;->a:Lchl;

    invoke-virtual {v1, v2, p1, p2}, Lchl;->a(Lchl;J)J

    move-result-wide v2

    .line 336
    iput-wide v2, p0, Lcht;->a:J

    .line 337
    invoke-virtual {v0}, Lchg;->b()Lchg;

    move-result-object v0

    iput-object v0, p0, Lcht;->b:Lchg;

    .line 338
    return-void
.end method

.method public static c()Lcht;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcht;

    invoke-direct {v0}, Lcht;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x4

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 577
    packed-switch p1, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :pswitch_0
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->E()Lchi;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    .line 585
    :goto_0
    return v0

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->C()Lchi;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->u()Lchi;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    goto :goto_0

    .line 585
    :pswitch_3
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->e()Lchi;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lchj;)I
    .locals 4

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {p1, v0}, Lchj;->a(Lchg;)Lchi;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Lcic;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 703
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 714
    :goto_0
    return v0

    .line 706
    :cond_0
    instance-of v0, p1, Lcht;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 707
    check-cast v0, Lcht;

    .line 708
    iget-object v2, p0, Lcht;->b:Lchg;

    iget-object v3, v0, Lcht;->b:Lchg;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 709
    iget-wide v2, p0, Lcht;->a:J

    iget-wide v4, v0, Lcht;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcht;->a:J

    iget-wide v4, v0, Lcht;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_3
    invoke-super {p0, p1}, Lcii;->a(Lcic;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(ILchg;)Lchi;
    .locals 3

    .prologue
    .line 552
    packed-switch p1, :pswitch_data_0

    .line 562
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :pswitch_0
    invoke-virtual {p2}, Lchg;->E()Lchi;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 556
    :pswitch_1
    invoke-virtual {p2}, Lchg;->C()Lchi;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_2
    invoke-virtual {p2}, Lchg;->u()Lchi;

    move-result-object v0

    goto :goto_0

    .line 560
    :pswitch_3
    invoke-virtual {p2}, Lchg;->e()Lchi;

    move-result-object v0

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(J)Lcht;
    .locals 3

    .prologue
    .line 881
    iget-wide v0, p0, Lcht;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcht;

    iget-object v1, p0, Lcht;->b:Lchg;

    invoke-direct {v0, p1, p2, v1}, Lcht;-><init>(JLchg;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final b()Lchg;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcht;->b:Lchg;

    return-object v0
.end method

.method public final b(I)Lcht;
    .locals 4

    .prologue
    .line 1222
    if-nez p1, :cond_0

    .line 1226
    :goto_0
    return-object p0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->i()Lchn;

    move-result-object v0

    iget-wide v2, p0, Lcht;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lchn;->a(JI)J

    move-result-wide v0

    .line 1226
    invoke-virtual {p0, v0, v1}, Lcht;->a(J)Lcht;

    move-result-object p0

    goto :goto_0
.end method

.method public final b(Lchj;)Z
    .locals 1

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 625
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcht;->b:Lchg;

    invoke-virtual {p1, v0}, Lchj;->a(Lchg;)Lchi;

    move-result-object v0

    invoke-virtual {v0}, Lchi;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcic;

    invoke-virtual {p0, p1}, Lcht;->a(Lcic;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 673
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 682
    :goto_0
    return v0

    .line 676
    :cond_0
    instance-of v0, p1, Lcht;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 677
    check-cast v0, Lcht;

    .line 678
    iget-object v2, p0, Lcht;->b:Lchg;

    iget-object v3, v0, Lcht;->b:Lchg;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    iget-wide v2, p0, Lcht;->a:J

    iget-wide v4, v0, Lcht;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :cond_2
    invoke-super {p0, p1}, Lcii;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 2079
    invoke-static {}, Lcld$a;->b()Lckx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lckx;->a(Lcic;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

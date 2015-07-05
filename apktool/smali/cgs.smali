.class public final Lcgs;
.super Lchh;
.source "SourceFile"

# interfaces
.implements Lchb;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:Lcgf;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcgj;->a()J

    move-result-wide v0

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcgs;-><init>(JLcgf;)V

    .line 265
    return-void
.end method

.method public constructor <init>(B)V
    .locals 3

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcgs;-><init>(JLcgf;)V

    .line 306
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    .prologue
    .line 481
    invoke-static {}, Lcic;->L()Lcic;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcgs;-><init>(IIIIIIILcgf;)V

    .line 483
    return-void
.end method

.method private constructor <init>(IIIIIIILcgf;)V
    .locals 8

    .prologue
    .line 509
    invoke-direct {p0}, Lchh;-><init>()V

    .line 510
    invoke-static/range {p8 .. p8}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    invoke-virtual {v0}, Lcgf;->b()Lcgf;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 511
    invoke-virtual/range {v0 .. v7}, Lcgf;->a(IIIIIII)J

    move-result-wide v2

    .line 513
    iput-object v0, p0, Lcgs;->b:Lcgf;

    .line 514
    iput-wide v2, p0, Lcgs;->a:J

    .line 515
    return-void
.end method

.method private constructor <init>(JLcgf;)V
    .locals 5

    .prologue
    .line 332
    invoke-direct {p0}, Lchh;-><init>()V

    .line 333
    invoke-static {p3}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcgf;->a()Lcgk;

    move-result-object v1

    sget-object v2, Lcgk;->a:Lcgk;

    invoke-virtual {v1, v2, p1, p2}, Lcgk;->a(Lcgk;J)J

    move-result-wide v2

    .line 336
    iput-wide v2, p0, Lcgs;->a:J

    .line 337
    invoke-virtual {v0}, Lcgf;->b()Lcgf;

    move-result-object v0

    iput-object v0, p0, Lcgs;->b:Lcgf;

    .line 338
    return-void
.end method

.method public static c()Lcgs;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcgs;

    invoke-direct {v0}, Lcgs;-><init>()V

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
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->E()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    .line 585
    :goto_0
    return v0

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->C()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->u()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0

    .line 585
    :pswitch_3
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->e()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

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

.method public final a(Lcgi;)I
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
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {p1, v0}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Lchb;)I
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
    instance-of v0, p1, Lcgs;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 707
    check-cast v0, Lcgs;

    .line 708
    iget-object v2, p0, Lcgs;->b:Lcgf;

    iget-object v3, v0, Lcgs;->b:Lcgf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 709
    iget-wide v2, p0, Lcgs;->a:J

    iget-wide v4, v0, Lcgs;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcgs;->a:J

    iget-wide v4, v0, Lcgs;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_3
    invoke-super {p0, p1}, Lchh;->a(Lchb;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(ILcgf;)Lcgh;
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
    invoke-virtual {p2}, Lcgf;->E()Lcgh;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 556
    :pswitch_1
    invoke-virtual {p2}, Lcgf;->C()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_2
    invoke-virtual {p2}, Lcgf;->u()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 560
    :pswitch_3
    invoke-virtual {p2}, Lcgf;->e()Lcgh;

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

.method public final a(J)Lcgs;
    .locals 3

    .prologue
    .line 881
    iget-wide v0, p0, Lcgs;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Lcgf;

    invoke-direct {v0, p1, p2, v1}, Lcgs;-><init>(JLcgf;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcgs;->b:Lcgf;

    return-object v0
.end method

.method public final b(I)Lcgs;
    .locals 4

    .prologue
    .line 1222
    if-nez p1, :cond_0

    .line 1226
    :goto_0
    return-object p0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->i()Lcgm;

    move-result-object v0

    iget-wide v2, p0, Lcgs;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lcgm;->a(JI)J

    move-result-wide v0

    .line 1226
    invoke-virtual {p0, v0, v1}, Lcgs;->a(J)Lcgs;

    move-result-object p0

    goto :goto_0
.end method

.method public final b(Lcgi;)Z
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
    iget-object v0, p0, Lcgs;->b:Lcgf;

    invoke-virtual {p1, v0}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    invoke-virtual {v0}, Lcgh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lchb;

    invoke-virtual {p0, p1}, Lcgs;->a(Lchb;)I

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
    instance-of v0, p1, Lcgs;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 677
    check-cast v0, Lcgs;

    .line 678
    iget-object v2, p0, Lcgs;->b:Lcgf;

    iget-object v3, v0, Lcgs;->b:Lcgf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    iget-wide v2, p0, Lcgs;->a:J

    iget-wide v4, v0, Lcgs;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :cond_2
    invoke-super {p0, p1}, Lchh;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 2079
    invoke-static {}, Lckc$a;->b()Lcjw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcjw;->a(Lchb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

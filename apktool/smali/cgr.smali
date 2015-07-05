.class public final Lcgr;
.super Lchh;
.source "SourceFile"

# interfaces
.implements Lchb;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcgn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:Lcgf;

.field private volatile transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 98
    sput-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->g()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->i()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->h()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->k()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcgr;->c:Ljava/util/Set;

    invoke-static {}, Lcgn;->l()Lcgn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcgj;->a()J

    move-result-wide v0

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcgr;-><init>(JLcgf;)V

    .line 268
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcgr;-><init>(JLcgf;)V

    .line 309
    return-void
.end method

.method public constructor <init>(JLcgf;)V
    .locals 5

    .prologue
    .line 335
    invoke-direct {p0}, Lchh;-><init>()V

    .line 336
    invoke-static {p3}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcgf;->a()Lcgk;

    move-result-object v1

    sget-object v2, Lcgk;->a:Lcgk;

    invoke-virtual {v1, v2, p1, p2}, Lcgk;->a(Lcgk;J)J

    move-result-wide v2

    .line 339
    invoke-virtual {v0}, Lcgf;->b()Lcgf;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcgf;->u()Lcgh;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcgh;->d(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcgr;->a:J

    .line 341
    iput-object v0, p0, Lcgr;->b:Lcgf;

    .line 342
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x3

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 524
    packed-switch p1, :pswitch_data_0

    .line 532
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

    .line 526
    :pswitch_0
    iget-object v0, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->E()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgr;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    .line 530
    :goto_0
    return v0

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->C()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgr;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v0, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v0}, Lcgf;->u()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgr;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcgi;)I
    .locals 4

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    invoke-virtual {p0, p1}, Lcgr;->b(Lcgi;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    iget-object v0, p0, Lcgr;->b:Lcgf;

    invoke-virtual {p1, v0}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lcgr;->a:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Lchb;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 676
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 687
    :goto_0
    return v0

    .line 679
    :cond_0
    instance-of v0, p1, Lcgr;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 680
    check-cast v0, Lcgr;

    .line 681
    iget-object v2, p0, Lcgr;->b:Lcgf;

    iget-object v3, v0, Lcgr;->b:Lcgf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 682
    iget-wide v2, p0, Lcgr;->a:J

    iget-wide v4, v0, Lcgr;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcgr;->a:J

    iget-wide v4, v0, Lcgr;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 687
    :cond_3
    invoke-super {p0, p1}, Lchh;->a(Lchb;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcgk;)Lcgg;
    .locals 6

    .prologue
    .line 728
    invoke-static {p1}, Lcgj;->a(Lcgk;)Lcgk;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v1, v0}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v1

    .line 730
    iget-wide v2, p0, Lcgr;->a:J

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 731
    invoke-virtual {v0, v2, v3}, Lcgk;->e(J)J

    move-result-wide v2

    .line 732
    invoke-virtual {v1}, Lcgf;->u()Lcgh;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcgh;->d(J)J

    move-result-wide v2

    .line 733
    new-instance v0, Lcgg;

    invoke-direct {v0, v2, v3, v1}, Lcgg;-><init>(JLcgf;)V

    return-object v0
.end method

.method protected final a(ILcgf;)Lcgh;
    .locals 3

    .prologue
    .line 499
    packed-switch p1, :pswitch_data_0

    .line 507
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

    .line 501
    :pswitch_0
    invoke-virtual {p2}, Lcgf;->E()Lcgh;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 503
    :pswitch_1
    invoke-virtual {p2}, Lcgf;->C()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 505
    :pswitch_2
    invoke-virtual {p2}, Lcgf;->u()Lcgh;

    move-result-object v0

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcgr;->b:Lcgf;

    return-object v0
.end method

.method public final b(Lcgi;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 570
    if-nez p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    invoke-virtual {p1}, Lcgi;->x()Lcgn;

    move-result-object v1

    .line 574
    sget-object v2, Lcgr;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v1, v2}, Lcgn;->a(Lcgf;)Lcgm;

    move-result-object v1

    invoke-virtual {v1}, Lcgm;->d()J

    move-result-wide v2

    iget-object v1, p0, Lcgr;->b:Lcgf;

    invoke-virtual {v1}, Lcgf;->s()Lcgm;

    move-result-object v1

    invoke-virtual {v1}, Lcgm;->d()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcgr;->b:Lcgf;

    invoke-virtual {p1, v0}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    invoke-virtual {v0}, Lcgh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lchb;

    invoke-virtual {p0, p1}, Lcgr;->a(Lchb;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 632
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 641
    :goto_0
    return v0

    .line 635
    :cond_0
    instance-of v0, p1, Lcgr;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 636
    check-cast v0, Lcgr;

    .line 637
    iget-object v2, p0, Lcgr;->b:Lcgf;

    iget-object v3, v0, Lcgr;->b:Lcgf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    iget-wide v2, p0, Lcgr;->a:J

    iget-wide v4, v0, Lcgr;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :cond_2
    invoke-super {p0, p1}, Lchh;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcgr;->d:I

    .line 652
    if-nez v0, :cond_0

    .line 653
    invoke-super {p0}, Lchh;->hashCode()I

    move-result v0

    iput v0, p0, Lcgr;->d:I

    .line 655
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 1819
    invoke-static {}, Lckc$a;->c()Lcjw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcjw;->a(Lchb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

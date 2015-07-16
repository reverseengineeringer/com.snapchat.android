.class Lciw$a;
.super Lckc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lchi;

.field final b:Lchi;

.field final c:J

.field final d:Z

.field protected e:Lchn;

.field protected f:Lchn;

.field final synthetic g:Lciw;


# direct methods
.method constructor <init>(Lciw;Lchi;Lchi;J)V
    .locals 8

    .prologue
    .line 626
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lciw$a;-><init>(Lciw;Lchi;Lchi;JZ)V

    .line 627
    return-void
.end method

.method constructor <init>(Lciw;Lchi;Lchi;JZ)V
    .locals 2

    .prologue
    .line 636
    iput-object p1, p0, Lciw$a;->g:Lciw;

    .line 637
    invoke-virtual {p3}, Lchi;->a()Lchj;

    move-result-object v0

    invoke-direct {p0, v0}, Lckc;-><init>(Lchj;)V

    .line 638
    iput-object p2, p0, Lciw$a;->a:Lchi;

    .line 639
    iput-object p3, p0, Lciw$a;->b:Lchi;

    .line 640
    iput-wide p4, p0, Lciw$a;->c:J

    .line 641
    iput-boolean p6, p0, Lciw$a;->d:Z

    .line 644
    invoke-virtual {p3}, Lchi;->d()Lchn;

    move-result-object v0

    iput-object v0, p0, Lciw$a;->e:Lchn;

    .line 646
    invoke-virtual {p3}, Lchi;->e()Lchn;

    move-result-object v0

    .line 647
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lchi;->e()Lchn;

    move-result-object v0

    .line 650
    :cond_0
    iput-object v0, p0, Lciw$a;->f:Lchn;

    .line 651
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 658
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 659
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(J)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1}, Lchi;->a(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v1, p1}, Lchi;->a(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7

    .prologue
    .line 755
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 756
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 757
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 759
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 760
    invoke-virtual {p0, v0, v1}, Lciw$a;->k(J)J

    move-result-wide v0

    .line 774
    :cond_0
    :goto_0
    return-wide v0

    .line 765
    :cond_1
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 766
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 768
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 769
    invoke-virtual {p0, v0, v1}, Lciw$a;->j(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 667
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(JJ)I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 724
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 725
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JI)J

    move-result-wide v0

    .line 726
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 728
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 729
    invoke-virtual {p0, v0, v1}, Lciw$a;->k(J)J

    move-result-wide v0

    .line 732
    :cond_0
    invoke-virtual {p0, v0, v1}, Lciw$a;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 733
    new-instance v0, Lchp;

    iget-object v1, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v1}, Lchi;->a()Lchj;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lchp;-><init>(Lchj;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 738
    :cond_1
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JI)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 741
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 742
    invoke-virtual {p0, v0, v1}, Lciw$a;->j(J)J

    move-result-wide v0

    .line 745
    :cond_2
    invoke-virtual {p0, v0, v1}, Lciw$a;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 746
    new-instance v0, Lchp;

    iget-object v1, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v1}, Lchi;->a()Lchj;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lchp;-><init>(Lchj;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 751
    :cond_3
    return-wide v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 679
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 3

    .prologue
    .line 786
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 787
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(J)Z

    move-result v0

    .line 789
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(J)Z

    move-result v0

    goto :goto_0
.end method

.method public c(J)I
    .locals 7

    .prologue
    .line 844
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 845
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->c(J)I

    move-result v0

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 848
    :cond_1
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->c(J)I

    move-result v0

    .line 852
    iget-object v1, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v1, p1, p2, v0}, Lchi;->b(JI)J

    move-result-wide v2

    .line 853
    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 854
    iget-object v0, p0, Lciw$a;->a:Lchi;

    iget-object v1, p0, Lciw$a;->a:Lchi;

    iget-wide v2, p0, Lciw$a;->c:J

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lchi;->a(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public c(JJ)J
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 7

    .prologue
    .line 878
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 879
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->d(J)J

    move-result-wide v0

    .line 880
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 882
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 883
    invoke-virtual {p0, v0, v1}, Lciw$a;->k(J)J

    move-result-wide v0

    .line 889
    :cond_0
    :goto_0
    return-wide v0

    .line 887
    :cond_1
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->d(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Lchn;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lciw$a;->e:Lchn;

    return-object v0
.end method

.method public final e(J)J
    .locals 7

    .prologue
    .line 893
    iget-wide v0, p0, Lciw$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 894
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->e(J)J

    move-result-wide v0

    .line 904
    :cond_0
    :goto_0
    return-wide v0

    .line 896
    :cond_1
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->e(J)J

    move-result-wide v0

    .line 897
    iget-wide v2, p0, Lciw$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 899
    iget-object v2, p0, Lciw$a;->g:Lciw;

    invoke-static {v2}, Lciw;->a(Lciw;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lciw$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 900
    invoke-virtual {p0, v0, v1}, Lciw$a;->j(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lciw$a;->f:Lchn;

    return-object v0
.end method

.method public final f()Lchn;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0}, Lchi;->f()Lchn;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lciw$a;->a:Lchi;

    invoke-virtual {v0}, Lchi;->g()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lciw$a;->b:Lchi;

    invoke-virtual {v0}, Lchi;->h()I

    move-result v0

    return v0
.end method

.method protected final j(J)J
    .locals 3

    .prologue
    .line 918
    iget-boolean v0, p0, Lciw$a;->d:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lciw$a;->g:Lciw;

    iget-object v1, v0, Lciw;->F:Lcjf;

    iget-object v0, v0, Lciw;->G:Lcjc;

    invoke-static {p1, p2, v1, v0}, Lciw;->b(JLchg;Lchg;)J

    move-result-wide v0

    .line 921
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lciw$a;->g:Lciw;

    invoke-virtual {v0, p1, p2}, Lciw;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final k(J)J
    .locals 3

    .prologue
    .line 926
    iget-boolean v0, p0, Lciw$a;->d:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lciw$a;->g:Lciw;

    iget-object v1, v0, Lciw;->G:Lcjc;

    iget-object v0, v0, Lciw;->F:Lcjf;

    invoke-static {p1, p2, v1, v0}, Lciw;->b(JLchg;Lchg;)J

    move-result-wide v0

    .line 929
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lciw$a;->g:Lciw;

    iget-object v1, v0, Lciw;->G:Lcjc;

    iget-object v0, v0, Lciw;->F:Lcjf;

    invoke-static {p1, p2, v1, v0}, Lciw;->a(JLchg;Lchg;)J

    move-result-wide v0

    goto :goto_0
.end method

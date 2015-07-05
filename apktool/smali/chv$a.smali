.class Lchv$a;
.super Lcjb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcgh;

.field final b:Lcgh;

.field final c:J

.field final d:Z

.field protected e:Lcgm;

.field protected f:Lcgm;

.field final synthetic g:Lchv;


# direct methods
.method constructor <init>(Lchv;Lcgh;Lcgh;J)V
    .locals 8

    .prologue
    .line 626
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;JZ)V

    .line 627
    return-void
.end method

.method constructor <init>(Lchv;Lcgh;Lcgh;JZ)V
    .locals 2

    .prologue
    .line 636
    iput-object p1, p0, Lchv$a;->g:Lchv;

    .line 637
    invoke-virtual {p3}, Lcgh;->a()Lcgi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcjb;-><init>(Lcgi;)V

    .line 638
    iput-object p2, p0, Lchv$a;->a:Lcgh;

    .line 639
    iput-object p3, p0, Lchv$a;->b:Lcgh;

    .line 640
    iput-wide p4, p0, Lchv$a;->c:J

    .line 641
    iput-boolean p6, p0, Lchv$a;->d:Z

    .line 644
    invoke-virtual {p3}, Lcgh;->d()Lcgm;

    move-result-object v0

    iput-object v0, p0, Lchv$a;->e:Lcgm;

    .line 646
    invoke-virtual {p3}, Lcgh;->e()Lcgm;

    move-result-object v0

    .line 647
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lcgh;->e()Lcgm;

    move-result-object v0

    .line 650
    :cond_0
    iput-object v0, p0, Lchv$a;->f:Lcgm;

    .line 651
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 658
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 659
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1}, Lcgh;->a(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v1, p1}, Lcgh;->a(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7

    .prologue
    .line 755
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 756
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 757
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 759
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 760
    invoke-virtual {p0, v0, v1}, Lchv$a;->k(J)J

    move-result-wide v0

    .line 774
    :cond_0
    :goto_0
    return-wide v0

    .line 765
    :cond_1
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 766
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 768
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 769
    invoke-virtual {p0, v0, v1}, Lchv$a;->j(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 667
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(JJ)I
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 724
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 725
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 726
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 728
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 729
    invoke-virtual {p0, v0, v1}, Lchv$a;->k(J)J

    move-result-wide v0

    .line 732
    :cond_0
    invoke-virtual {p0, v0, v1}, Lchv$a;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 733
    new-instance v0, Lcgo;

    iget-object v1, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v1}, Lcgh;->a()Lcgi;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lcgo;-><init>(Lcgi;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 738
    :cond_1
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 741
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 742
    invoke-virtual {p0, v0, v1}, Lchv$a;->j(J)J

    move-result-wide v0

    .line 745
    :cond_2
    invoke-virtual {p0, v0, v1}, Lchv$a;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 746
    new-instance v0, Lcgo;

    iget-object v1, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v1}, Lcgh;->a()Lcgi;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lcgo;-><init>(Lcgi;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 751
    :cond_3
    return-wide v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 679
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 3

    .prologue
    .line 786
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 787
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->b(J)Z

    move-result v0

    .line 789
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->b(J)Z

    move-result v0

    goto :goto_0
.end method

.method public c(J)I
    .locals 7

    .prologue
    .line 844
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 845
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->c(J)I

    move-result v0

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 848
    :cond_1
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->c(J)I

    move-result v0

    .line 852
    iget-object v1, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v1, p1, p2, v0}, Lcgh;->b(JI)J

    move-result-wide v2

    .line 853
    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 854
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    iget-object v1, p0, Lchv$a;->a:Lcgh;

    iget-wide v2, p0, Lchv$a;->c:J

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcgh;->a(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public c(JJ)J
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 7

    .prologue
    .line 878
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 879
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    .line 880
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 882
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 883
    invoke-virtual {p0, v0, v1}, Lchv$a;->k(J)J

    move-result-wide v0

    .line 889
    :cond_0
    :goto_0
    return-wide v0

    .line 887
    :cond_1
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Lcgm;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lchv$a;->e:Lcgm;

    return-object v0
.end method

.method public final e(J)J
    .locals 7

    .prologue
    .line 893
    iget-wide v0, p0, Lchv$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 894
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    .line 904
    :cond_0
    :goto_0
    return-wide v0

    .line 896
    :cond_1
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    .line 897
    iget-wide v2, p0, Lchv$a;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 899
    iget-object v2, p0, Lchv$a;->g:Lchv;

    invoke-static {v2}, Lchv;->a(Lchv;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lchv$a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 900
    invoke-virtual {p0, v0, v1}, Lchv$a;->j(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lchv$a;->f:Lcgm;

    return-object v0
.end method

.method public final f()Lcgm;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->f()Lcgm;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lchv$a;->a:Lcgh;

    invoke-virtual {v0}, Lcgh;->g()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lchv$a;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->h()I

    move-result v0

    return v0
.end method

.method protected final j(J)J
    .locals 3

    .prologue
    .line 918
    iget-boolean v0, p0, Lchv$a;->d:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lchv$a;->g:Lchv;

    iget-object v1, v0, Lchv;->F:Lcie;

    iget-object v0, v0, Lchv;->G:Lcib;

    invoke-static {p1, p2, v1, v0}, Lchv;->b(JLcgf;Lcgf;)J

    move-result-wide v0

    .line 921
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lchv$a;->g:Lchv;

    invoke-virtual {v0, p1, p2}, Lchv;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final k(J)J
    .locals 3

    .prologue
    .line 926
    iget-boolean v0, p0, Lchv$a;->d:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lchv$a;->g:Lchv;

    iget-object v1, v0, Lchv;->G:Lcib;

    iget-object v0, v0, Lchv;->F:Lcie;

    invoke-static {p1, p2, v1, v0}, Lchv;->b(JLcgf;Lcgf;)J

    move-result-wide v0

    .line 929
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lchv$a;->g:Lchv;

    iget-object v1, v0, Lchv;->G:Lcib;

    iget-object v0, v0, Lchv;->F:Lcie;

    invoke-static {p1, p2, v1, v0}, Lchv;->a(JLcgf;Lcgf;)J

    move-result-wide v0

    goto :goto_0
.end method

.class final Lciy;
.super Lckc;
.source "SourceFile"


# instance fields
.field private final a:Lcim;


# direct methods
.method constructor <init>(Lcim;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lchj;->w()Lchj;

    move-result-object v0

    invoke-direct {p0, v0}, Lckc;-><init>(Lchj;)V

    .line 48
    iput-object p1, p0, Lciy;->a:Lcim;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lciy;->a:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget v0, v0, Lciz;->j:I

    return v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 93
    invoke-static {p4}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget-object v0, v0, Lciz;->g:Ljava/util/TreeMap;

    invoke-virtual {v0, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lciy;->b(JI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lchp;

    invoke-static {}, Lchj;->w()Lchj;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lchp;-><init>(Lchj;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p2}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget-object v0, v0, Lciz;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lcki;->a(Lchi;III)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lciy;->a(J)I

    move-result v0

    .line 84
    if-eq v0, p3, :cond_0

    .line 85
    iget-object v0, p0, Lciy;->a:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->a(J)I

    move-result v0

    .line 86
    iget-object v1, p0, Lciy;->a:Lcim;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lcim;->d(JI)J

    move-result-wide p1

    .line 88
    :cond_0
    return-wide p1
.end method

.method public final d(J)J
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, p1, p2}, Lciy;->a(J)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lciy;->a:Lcim;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcim;->d(JI)J

    move-result-wide v0

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public final d()Lchn;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcho;->l()Lcho;

    move-result-object v0

    invoke-static {v0}, Lcku;->a(Lcho;)Lcku;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)J
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lciy;->a(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lciy;->a:Lcim;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcim;->d(JI)J

    move-result-wide v0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(J)J
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lciy;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final g(J)J
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lciy;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)J
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lciy;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

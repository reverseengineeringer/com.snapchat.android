.class final Lcir;
.super Lckc;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lchj;->w()Lchj;

    move-result-object v0

    invoke-direct {p0, v0}, Lckc;-><init>(Lchj;)V

    .line 52
    iput-object p1, p0, Lcir;->a:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcir;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcir;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lchp;

    invoke-static {}, Lchj;->w()Lchj;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lchp;-><init>(Lchj;Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    return-wide p1
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcir;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(JI)J
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-static {p0, p3, v0, v0}, Lcki;->a(Lchi;III)V

    .line 68
    return-wide p1
.end method

.method public final d(J)J
    .locals 2

    .prologue
    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final d()Lchn;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcho;->l()Lcho;

    move-result-object v0

    invoke-static {v0}, Lcku;->a(Lcho;)Lcku;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)J
    .locals 2

    .prologue
    .line 86
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(J)J
    .locals 2

    .prologue
    .line 91
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public final g(J)J
    .locals 2

    .prologue
    .line 96
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)J
    .locals 2

    .prologue
    .line 101
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.class final Lcje;
.super Lcke;
.source "SourceFile"


# static fields
.field static final a:Lchi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcje;

    invoke-direct {v0}, Lcje;-><init>()V

    sput-object v0, Lcje;->a:Lchi;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcjc;->W()Lcjc;

    move-result-object v0

    iget-object v0, v0, Lcik;->z:Lchi;

    invoke-static {}, Lchj;->t()Lchj;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcke;-><init>(Lchi;Lchj;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(J)I

    move-result v0

    .line 52
    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    iget-object v1, p0, Lcke;->b:Lchi;

    invoke-virtual {v1}, Lchi;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lcki;->a(Lchi;III)V

    .line 81
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 82
    neg-int p3, p3

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcke;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0}, Lchi;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcke;->b:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

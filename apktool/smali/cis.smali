.class final Lcis;
.super Lckn;
.source "SourceFile"


# instance fields
.field private final b:Lcim;


# direct methods
.method constructor <init>(Lcim;Lchn;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lchj;->o()Lchj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lckn;-><init>(Lchj;Lchn;)V

    .line 44
    iput-object p1, p0, Lcis;->b:Lcim;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcis;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->c(J)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcis;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->b(J)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcis;->b:Lcim;

    invoke-virtual {v1, v0}, Lcim;->a(I)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 1

    .prologue
    const/16 v0, 0x34

    .line 112
    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcis;->c(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final d(J)J
    .locals 5

    .prologue
    const-wide/32 v2, 0xf731400

    .line 66
    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lckn;->d(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(J)J
    .locals 5

    .prologue
    const-wide/32 v2, 0xf731400

    .line 71
    add-long v0, p1, v2

    invoke-super {p0, v0, v1}, Lckn;->e(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcis;->b:Lcim;

    iget-object v0, v0, Lcik;->e:Lchn;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x35

    return v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 76
    const-wide/32 v0, 0xf731400

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Lckn;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

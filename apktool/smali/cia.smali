.class final Lcia;
.super Lcjd;
.source "SourceFile"


# instance fields
.field private final a:Lchl;


# direct methods
.method constructor <init>(Lcgh;Lchl;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcgi;->t()Lcgi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 42
    iput-object p2, p0, Lcia;->a:Lchl;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 47
    if-gtz v0, :cond_0

    .line 48
    rsub-int/lit8 v0, v0, 0x1

    .line 50
    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    iget-object v1, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v1}, Lcgh;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lcjh;->a(Lcgh;III)V

    .line 87
    iget-object v0, p0, Lcia;->a:Lchl;

    invoke-virtual {v0, p1, p2}, Lchl;->a(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 88
    rsub-int/lit8 p3, p3, 0x1

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcjd;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

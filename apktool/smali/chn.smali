.class final Lchn;
.super Lcjm;
.source "SourceFile"


# instance fields
.field private final b:Lchl;


# direct methods
.method constructor <init>(Lchl;Lcgm;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcgi;->n()Lcgi;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcjm;-><init>(Lcgi;Lcgm;)V

    .line 43
    iput-object p1, p0, Lchn;->b:Lchl;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lchn;->b:Lchl;

    invoke-virtual {v0, p1, p2}, Lchl;->a(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lchl;->b(JI)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lchn;->b:Lchl;

    invoke-virtual {v0, p1, p2}, Lchl;->a(J)I

    move-result v0

    .line 70
    iget-object v1, p0, Lchn;->b:Lchl;

    invoke-virtual {v1, v0}, Lchl;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method protected final c(JI)I
    .locals 1

    .prologue
    const/16 v0, 0x16d

    .line 93
    invoke-static {}, Lchl;->L()I

    .line 94
    if-gt p3, v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lchn;->c(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lchn;->b:Lchl;

    iget-object v0, v0, Lchj;->g:Lcgm;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lchl;->L()I

    move-result v0

    return v0
.end method

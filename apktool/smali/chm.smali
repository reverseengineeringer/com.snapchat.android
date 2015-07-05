.class final Lchm;
.super Lcjm;
.source "SourceFile"


# instance fields
.field private final b:Lchl;


# direct methods
.method constructor <init>(Lchl;Lcgm;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcgi;->m()Lcgi;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcjm;-><init>(Lcgi;Lcgm;)V

    .line 43
    iput-object p1, p0, Lchm;->b:Lchl;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lchm;->b:Lchl;

    invoke-virtual {v0, p1, p2}, Lchl;->a(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lchl;->a(JI)I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lchl;->a(JII)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lchm;->b:Lchl;

    invoke-virtual {v0, p1, p2}, Lchl;->f(J)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lchm;->b:Lchl;

    invoke-virtual {v0, p1, p2, p3}, Lchl;->c(JI)I

    move-result v0

    return v0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lchm;->b:Lchl;

    iget-object v0, v0, Lchj;->f:Lcgm;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lchl;->M()I

    move-result v0

    return v0
.end method

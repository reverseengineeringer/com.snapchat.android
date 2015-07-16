.class final Lcio;
.super Lckn;
.source "SourceFile"


# instance fields
.field private final b:Lcim;


# direct methods
.method constructor <init>(Lcim;Lchn;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lchj;->n()Lchj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lckn;-><init>(Lchj;Lchn;)V

    .line 43
    iput-object p1, p0, Lcio;->b:Lcim;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcio;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->a(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcim;->b(JI)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcio;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->a(J)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcio;->b:Lcim;

    invoke-virtual {v1, v0}, Lcim;->c(I)Z

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
    invoke-static {}, Lcim;->L()I

    .line 94
    if-gt p3, v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcio;->c(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcio;->b:Lcim;

    iget-object v0, v0, Lcik;->g:Lchn;

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
    invoke-static {}, Lcim;->L()I

    move-result v0

    return v0
.end method

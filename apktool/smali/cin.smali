.class final Lcin;
.super Lckn;
.source "SourceFile"


# instance fields
.field private final b:Lcim;


# direct methods
.method constructor <init>(Lcim;Lchn;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lchj;->m()Lchj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lckn;-><init>(Lchj;Lchn;)V

    .line 43
    iput-object p1, p0, Lcin;->b:Lcim;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcin;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->a(J)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcim;->a(JI)I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcim;->a(JII)I

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcin;->b:Lcim;

    invoke-virtual {v0, p1, p2}, Lcim;->f(J)I

    move-result v0

    return v0
.end method

.method protected final c(JI)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcin;->b:Lcim;

    invoke-virtual {v0, p1, p2, p3}, Lcim;->c(JI)I

    move-result v0

    return v0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcin;->b:Lcim;

    iget-object v0, v0, Lcik;->f:Lchn;

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
    invoke-static {}, Lcim;->M()I

    move-result v0

    return v0
.end method

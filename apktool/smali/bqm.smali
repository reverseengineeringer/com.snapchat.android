.class public final Lbqm;
.super Lbqk;


# direct methods
.method public constructor <init>(Lbqf;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lbqk;-><init>(Lbqf;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final g()Lbqf;
    .locals 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lbqk;->f:Z

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lbqi;

    invoke-direct {v0, p0}, Lbqi;-><init>(Lbqf;)V

    .line 38
    :goto_0
    return-object v0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lbqk;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lbqk;->e:I

    if-lez v0, :cond_1

    .line 23
    new-instance v0, Lbqg;

    iget v1, p0, Lbqk;->e:I

    invoke-direct {v0, p0, v1}, Lbqg;-><init>(Lbqf;I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lbqf;->a:Lbql;

    invoke-virtual {p0}, Lbqm;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbql;->b(I)V

    .line 35
    iget-object v0, p0, Lbqf;->a:Lbql;

    invoke-interface {v0}, Lbql;->b()Lbqf;

    move-result-object v0

    goto :goto_0
.end method

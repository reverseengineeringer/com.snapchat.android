.class public final Lbrn;
.super Lbrl;


# direct methods
.method public constructor <init>(Lbrg;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lbrl;-><init>(Lbrg;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final g()Lbrg;
    .locals 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lbrl;->f:Z

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lbrj;

    invoke-direct {v0, p0}, Lbrj;-><init>(Lbrg;)V

    .line 38
    :goto_0
    return-object v0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lbrl;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lbrl;->e:I

    if-lez v0, :cond_1

    .line 23
    new-instance v0, Lbrh;

    iget v1, p0, Lbrl;->e:I

    invoke-direct {v0, p0, v1}, Lbrh;-><init>(Lbrg;I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrn;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 35
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-interface {v0}, Lbrm;->b()Lbrg;

    move-result-object v0

    goto :goto_0
.end method

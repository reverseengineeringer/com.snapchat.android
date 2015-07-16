.class public final Lbrk;
.super Lbrg;


# direct methods
.method public constructor <init>(Lbrg;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lbrg;-><init>(Lbrg;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .prologue
    .line 29
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrk;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 31
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v1, Lbrt;->d:Lbrt;

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    .line 32
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 35
    :cond_0
    iget v0, p0, Lbrk;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbrk;->c:I

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 49
    if-ne p3, v0, :cond_0

    .line 51
    iget-object v1, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrk;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lbrm;->b(I)V

    .line 52
    iget-object v1, p0, Lbrg;->a:Lbrm;

    sget-object v2, Lbrt;->d:Lbrt;

    invoke-interface {v1, v2}, Lbrm;->a(Lbrg;)V

    move p3, v0

    .line 57
    :goto_0
    return p3

    .line 56
    :cond_0
    iget v0, p0, Lbrk;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lbrk;->c:I

    goto :goto_0
.end method

.method public final b()Lbrg;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lbrt;->d:Lbrt;

    return-object v0
.end method

.method public final c()Lbrg;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lbrt;->d:Lbrt;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7fffffff

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrk;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 67
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v1, Lbrt;->d:Lbrt;

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    .line 68
    return-void
.end method

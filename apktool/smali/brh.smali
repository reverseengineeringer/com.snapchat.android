.class public final Lbrh;
.super Lbrg;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lbrg;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lbrg;-><init>(Lbrg;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lbrh;->e:I

    .line 35
    iput p2, p0, Lbrh;->d:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 49
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 51
    iget-object v1, p0, Lbrg;->a:Lbrm;

    sget-object v2, Lbrt;->d:Lbrt;

    invoke-interface {v1, v2}, Lbrm;->a(Lbrg;)V

    .line 68
    :goto_0
    return v0

    .line 55
    :cond_0
    iget v1, p0, Lbrh;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbrh;->e:I

    .line 56
    iget v1, p0, Lbrh;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbrh;->c:I

    .line 58
    iget v1, p0, Lbrh;->e:I

    iget v2, p0, Lbrh;->d:I

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v1, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrh;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lbrm;->b(I)V

    .line 62
    iget-object v1, p0, Lbrg;->a:Lbrm;

    invoke-interface {v1}, Lbrm;->b()Lbrg;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lbrg;->a:Lbrm;

    invoke-interface {v2, v1}, Lbrm;->a(Lbrg;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 84
    if-ne p3, v0, :cond_0

    .line 86
    iget-object v1, p0, Lbrg;->a:Lbrm;

    sget-object v2, Lbrt;->d:Lbrt;

    invoke-interface {v1, v2}, Lbrm;->a(Lbrg;)V

    move p3, v0

    .line 106
    :goto_0
    return p3

    .line 90
    :cond_0
    iget v0, p0, Lbrh;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Lbrh;->d:I

    if-ge v0, v1, :cond_1

    .line 95
    iget v0, p0, Lbrh;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lbrh;->e:I

    .line 96
    iget v0, p0, Lbrh;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lbrh;->c:I

    goto :goto_0

    .line 101
    :cond_1
    iget v0, p0, Lbrh;->d:I

    iget v1, p0, Lbrh;->e:I

    sub-int p3, v0, v1

    .line 102
    iget v0, p0, Lbrh;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lbrh;->c:I

    .line 103
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrh;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 104
    iget-object v0, p0, Lbrg;->a:Lbrm;

    iget-object v1, p0, Lbrg;->a:Lbrm;

    invoke-interface {v1}, Lbrm;->b()Lbrg;

    move-result-object v1

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    goto :goto_0
.end method

.method public final b()Lbrg;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lbrt;->d:Lbrt;

    return-object v0
.end method

.method public final c()Lbrg;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lbrt;->d:Lbrt;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbrh;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 172
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v1, Lbrt;->d:Lbrt;

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    .line 173
    return-void
.end method

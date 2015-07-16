.class public final Lbri;
.super Lbrg;


# instance fields
.field private d:Lbrj;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lbrj;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbrg;-><init>(Lbrg;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lbri;->f:I

    .line 15
    iput-object p1, p0, Lbri;->d:Lbrj;

    .line 16
    iput p2, p0, Lbri;->e:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    iget v2, p0, Lbri;->f:I

    iget v3, p0, Lbri;->e:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 25
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbri;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lbrm;->b(I)V

    .line 26
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v2, Lbrt;->d:Lbrt;

    invoke-interface {v0, v2}, Lbrm;->a(Lbrg;)V

    move v0, v1

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    iget v2, p0, Lbri;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbri;->c:I

    .line 31
    int-to-char v2, p1

    .line 32
    iget v3, p0, Lbri;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbri;->f:I

    .line 34
    iget v3, p0, Lbri;->f:I

    iget v4, p0, Lbri;->e:I

    if-le v3, v4, :cond_0

    .line 35
    if-ne v2, v5, :cond_3

    .line 41
    iget-object v0, p0, Lbri;->d:Lbrj;

    invoke-virtual {p0}, Lbri;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lbrj;->b(I)V

    .line 42
    iget-object v0, p0, Lbrg;->a:Lbrm;

    iget-object v2, p0, Lbri;->d:Lbrj;

    invoke-interface {v0, v2}, Lbrm;->a(Lbrg;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    iget v3, p0, Lbri;->f:I

    iget v4, p0, Lbri;->e:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    if-eq v2, v5, :cond_0

    .line 48
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v2, Lbrt;->d:Lbrt;

    invoke-interface {v0, v2}, Lbrm;->a(Lbrg;)V

    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lbrg;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbri;->d:Lbrj;

    return-object v0
.end method

.method public final c()Lbrg;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbrg;->a:Lbrm;

    invoke-virtual {p0}, Lbri;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbrm;->b(I)V

    .line 87
    iget-object v0, p0, Lbrg;->a:Lbrm;

    sget-object v1, Lbrt;->d:Lbrt;

    invoke-interface {v0, v1}, Lbrm;->a(Lbrg;)V

    .line 88
    return-void
.end method

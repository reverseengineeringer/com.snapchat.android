.class public final Lbqh;
.super Lbqf;


# instance fields
.field private d:Lbqi;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lbqi;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbqf;-><init>(Lbqf;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lbqh;->f:I

    .line 15
    iput-object p1, p0, Lbqh;->d:Lbqi;

    .line 16
    iput p2, p0, Lbqh;->e:I

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
    iget v2, p0, Lbqh;->f:I

    iget v3, p0, Lbqh;->e:I

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
    iget-object v0, p0, Lbqf;->a:Lbql;

    invoke-virtual {p0}, Lbqh;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lbql;->b(I)V

    .line 26
    iget-object v0, p0, Lbqf;->a:Lbql;

    sget-object v2, Lbqs;->d:Lbqs;

    invoke-interface {v0, v2}, Lbql;->a(Lbqf;)V

    move v0, v1

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    iget v2, p0, Lbqh;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbqh;->c:I

    .line 31
    int-to-char v2, p1

    .line 32
    iget v3, p0, Lbqh;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbqh;->f:I

    .line 34
    iget v3, p0, Lbqh;->f:I

    iget v4, p0, Lbqh;->e:I

    if-le v3, v4, :cond_0

    .line 35
    if-ne v2, v5, :cond_3

    .line 41
    iget-object v0, p0, Lbqh;->d:Lbqi;

    invoke-virtual {p0}, Lbqh;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lbqi;->b(I)V

    .line 42
    iget-object v0, p0, Lbqf;->a:Lbql;

    iget-object v2, p0, Lbqh;->d:Lbqi;

    invoke-interface {v0, v2}, Lbql;->a(Lbqf;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    iget v3, p0, Lbqh;->f:I

    iget v4, p0, Lbqh;->e:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    if-eq v2, v5, :cond_0

    .line 48
    iget-object v0, p0, Lbqf;->a:Lbql;

    sget-object v2, Lbqs;->d:Lbqs;

    invoke-interface {v0, v2}, Lbql;->a(Lbqf;)V

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

.method public final b()Lbqf;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbqh;->d:Lbqi;

    return-object v0
.end method

.method public final c()Lbqf;
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
    iget-object v0, p0, Lbqf;->a:Lbql;

    invoke-virtual {p0}, Lbqh;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lbql;->b(I)V

    .line 87
    iget-object v0, p0, Lbqf;->a:Lbql;

    sget-object v1, Lbqs;->d:Lbqs;

    invoke-interface {v0, v1}, Lbql;->a(Lbqf;)V

    .line 88
    return-void
.end method

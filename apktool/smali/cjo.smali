.class public final Lcjo;
.super Lcjd;
.source "SourceFile"


# instance fields
.field final a:I

.field final c:Lcgm;


# direct methods
.method public constructor <init>(Lcgh;Lcgi;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 55
    invoke-virtual {p1}, Lcgh;->d()Lcgm;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcjo;->c:Lcgm;

    .line 67
    :goto_0
    const/16 v0, 0x64

    iput v0, p0, Lcjo;->a:I

    .line 68
    return-void

    .line 63
    :cond_0
    new-instance v1, Lcjp;

    invoke-virtual {p2}, Lcgi;->y()Lcgn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcjp;-><init>(Lcgm;Lcgn;)V

    iput-object v1, p0, Lcjo;->c:Lcgm;

    goto :goto_0
.end method

.method public constructor <init>(Lcjg;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p1, Lcjb;->i:Lcgi;

    invoke-direct {p0, p1, v0}, Lcjo;-><init>(Lcjg;Lcgi;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcjg;Lcgi;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p1, Lcjd;->b:Lcgh;

    invoke-direct {p0, v0, p2}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 89
    iget v0, p1, Lcjg;->a:I

    iput v0, p0, Lcjo;->a:I

    .line 90
    iget-object v0, p1, Lcjg;->c:Lcgm;

    iput-object v0, p0, Lcjo;->c:Lcgm;

    .line 91
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 102
    if-ltz v0, :cond_0

    .line 103
    iget v1, p0, Lcjo;->a:I

    rem-int/2addr v0, v1

    .line 105
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcjo;->a:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcjo;->a:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    iget v1, p0, Lcjo;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p3, v0, v1}, Lcjh;->a(Lcgh;III)V

    .line 132
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcjo;->a:I

    div-int/2addr v0, v1

    .line 133
    :goto_0
    iget-object v1, p0, Lcjd;->b:Lcgh;

    iget v2, p0, Lcjo;->a:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lcgh;->b(JI)J

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcjo;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcjo;->c:Lcgm;

    return-object v0
.end method

.method public final f(J)J
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public final g(J)J
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcjo;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final h(J)J
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

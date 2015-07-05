.class public final Lcjg;
.super Lcjd;
.source "SourceFile"


# instance fields
.field final a:I

.field final c:Lcgm;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcgh;Lcgi;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 59
    invoke-virtual {p1}, Lcgh;->d()Lcgm;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcjg;->c:Lcgm;

    .line 71
    :goto_0
    const/16 v0, 0x64

    iput v0, p0, Lcjg;->a:I

    .line 73
    invoke-virtual {p1}, Lcgh;->g()I

    move-result v0

    .line 74
    if-ltz v0, :cond_1

    div-int/lit8 v0, v0, 0x64

    .line 76
    :goto_1
    invoke-virtual {p1}, Lcgh;->h()I

    move-result v1

    .line 77
    if-ltz v1, :cond_2

    div-int/lit8 v1, v1, 0x64

    .line 79
    :goto_2
    iput v0, p0, Lcjg;->d:I

    .line 80
    iput v1, p0, Lcjg;->e:I

    .line 81
    return-void

    .line 67
    :cond_0
    new-instance v1, Lcjp;

    invoke-virtual {p2}, Lcgi;->x()Lcgn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcjp;-><init>(Lcgm;Lcgn;)V

    iput-object v1, p0, Lcjg;->c:Lcgm;

    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 114
    if-ltz v0, :cond_0

    .line 115
    iget v1, p0, Lcjg;->a:I

    div-int/2addr v0, v1

    .line 117
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcjg;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcjd;->b:Lcgh;

    iget v1, p0, Lcjg;->a:I

    mul-int/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lcgh;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 5

    .prologue
    .line 142
    iget-object v0, p0, Lcjd;->b:Lcgh;

    iget v1, p0, Lcjg;->a:I

    int-to-long v2, v1

    mul-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcgh;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    iget v1, p0, Lcjg;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 174
    iget v0, p0, Lcjg;->d:I

    iget v1, p0, Lcjg;->e:I

    invoke-static {p0, p3, v0, v1}, Lcjh;->a(Lcgh;III)V

    .line 175
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcjg;->a:I

    rem-int/2addr v0, v1

    .line 176
    :goto_0
    iget-object v1, p0, Lcjd;->b:Lcgh;

    iget v2, p0, Lcjg;->a:I

    mul-int/2addr v2, p3

    add-int/2addr v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lcgh;->b(JI)J

    move-result-wide v0

    return-wide v0

    .line 175
    :cond_0
    iget v1, p0, Lcjg;->a:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcjg;->a:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final c(JJ)J
    .locals 5

    .prologue
    .line 162
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    iget v2, p0, Lcjg;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final d(J)J
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcjd;->b:Lcgh;

    .line 206
    invoke-virtual {p0, p1, p2}, Lcjg;->a(J)I

    move-result v1

    iget v2, p0, Lcjg;->a:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcgh;->b(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcgh;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lcgm;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcjg;->c:Lcgm;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcjg;->d:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcjg;->e:I

    return v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcjg;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcjg;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

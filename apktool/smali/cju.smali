.class public final Lcju;
.super Lcjd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcgh;Lcgi;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 47
    invoke-virtual {p1}, Lcgh;->g()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped field\'s minumum value must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcju;->h()I

    move-result v0

    .line 57
    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcju;->h()I

    move-result v0

    .line 86
    const/4 v1, 0x1

    invoke-static {p0, p3, v1, v0}, Lcjh;->a(Lcgh;III)V

    .line 87
    if-ne p3, v0, :cond_0

    .line 88
    const/4 p3, 0x0

    .line 90
    :cond_0
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->b(J)Z

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->c(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)J
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lcgm;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->f()Lcgm;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public final g(J)J
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final h(J)J
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

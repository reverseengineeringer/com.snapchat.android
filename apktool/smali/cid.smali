.class final Lcid;
.super Lcjd;
.source "SourceFile"


# static fields
.field static final a:Lcgh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcid;

    invoke-direct {v0}, Lcid;-><init>()V

    sput-object v0, Lcid;->a:Lcgh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcib;->W()Lcib;

    move-result-object v0

    iget-object v0, v0, Lchj;->z:Lcgh;

    invoke-static {}, Lcgi;->t()Lcgi;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 52
    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    iget-object v1, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v1}, Lcgh;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lcjh;->a(Lcgh;III)V

    .line 81
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 82
    neg-int p3, p3

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcjd;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0}, Lcgh;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.class public Lckg;
.super Lchi;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lchi;

.field private final b:Lchj;


# direct methods
.method public constructor <init>(Lchi;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lckg;-><init>(Lchi;Lchj;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lchi;Lchj;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lchi;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lckg;->a:Lchi;

    .line 67
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lchi;->a()Lchj;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lckg;->b:Lchj;

    .line 68
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1}, Lchi;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lchj;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lckg;->b:Lchj;

    return-object v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->a(Lcic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->b(JJ)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lckg;->b:Lchj;

    iget-object v0, v0, Lchj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3}, Lchi;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(Lcic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->b(J)Z

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->c(J)I

    move-result v0

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchi;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->c()Z

    move-result v0

    return v0
.end method

.method public final d(J)J
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lchn;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)J
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lchn;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->e()Lchn;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)J
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lchn;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->f()Lchn;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->g()I

    move-result v0

    return v0
.end method

.method public final g(J)J
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0}, Lchi;->h()I

    move-result v0

    return v0
.end method

.method public final h(J)J
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)J
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lckg;->a:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateTimeField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lckg;->b:Lchj;

    iget-object v1, v1, Lchj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

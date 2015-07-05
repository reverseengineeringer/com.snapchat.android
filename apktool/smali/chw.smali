.class final Lchw;
.super Lcjm;
.source "SourceFile"


# instance fields
.field private final b:Lchl;


# direct methods
.method constructor <init>(Lchl;Lcgm;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcgi;->l()Lcgi;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcjm;-><init>(Lcgi;Lcgm;)V

    .line 47
    iput-object p1, p0, Lchw;->b:Lchl;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p1, p2}, Lchl;->d(J)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 91
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcgo;

    invoke-static {}, Lcgi;->l()Lcgi;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcgo;-><init>(Lcgi;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget v0, v0, Lchy;->k:I

    return v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lchw;->b:Lchl;

    iget-object v0, v0, Lchj;->d:Lcgm;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x7

    return v0
.end method

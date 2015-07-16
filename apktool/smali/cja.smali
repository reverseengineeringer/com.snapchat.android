.class final Lcja;
.super Lciq;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcim;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lciq;-><init>(Lcim;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 53
    invoke-static {p2}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget-object v0, v0, Lciz;->i:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lchp;

    invoke-static {}, Lchj;->r()Lchj;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lchp;-><init>(Lchj;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget v0, v0, Lciz;->l:I

    return v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p2}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget-object v0, v0, Lciz;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {p2}, Lciz;->a(Ljava/util/Locale;)Lciz;

    move-result-object v0

    iget-object v0, v0, Lciz;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

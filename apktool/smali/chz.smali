.class final Lchz;
.super Lchp;
.source "SourceFile"


# direct methods
.method constructor <init>(Lchl;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lchp;-><init>(Lchl;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 53
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->i:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcgo;

    invoke-static {}, Lcgi;->r()Lcgi;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcgo;-><init>(Lcgi;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget v0, v0, Lchy;->l:I

    return v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->e:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

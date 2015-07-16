.class final Lda$1;
.super Lda;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lda;-><init>(B)V

    return-void
.end method

.method private static a(I)Lda;
    .locals 1

    .prologue
    .line 101
    if-gez p0, :cond_0

    sget-object v0, Lda;->b:Lda;

    :goto_0
    return-object v0

    :cond_0
    if-lez p0, :cond_1

    sget-object v0, Lda;->c:Lda;

    goto :goto_0

    :cond_1
    sget-object v0, Lda;->a:Lda;

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Lda;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1, p2}, Lep;->a(II)I

    move-result v0

    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)Lda;
    .locals 1

    .prologue
    .line 86
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0

    :cond_0
    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lda;
    .locals 1

    .prologue
    .line 76
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lda;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lda;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZZ)Lda;
    .locals 1

    .prologue
    .line 95
    invoke-static {p2, p1}, Leo;->a(ZZ)I

    move-result v0

    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final b(ZZ)Lda;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1, p2}, Leo;->a(ZZ)I

    move-result v0

    invoke-static {v0}, Lda$1;->a(I)Lda;

    move-result-object v0

    return-object v0
.end method

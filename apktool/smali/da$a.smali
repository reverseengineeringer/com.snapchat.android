.class final Lda$a;
.super Lda;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lda;-><init>(B)V

    .line 116
    iput p1, p0, Lda$a;->d:I

    .line 117
    return-void
.end method


# virtual methods
.method public final a(II)Lda;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method public final a(JJ)Lda;
    .locals 0

    .prologue
    .line 130
    return-object p0
.end method

.method public final a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lda;
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lda;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
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
    .line 124
    return-object p0
.end method

.method public final a(ZZ)Lda;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lda$a;->d:I

    return v0
.end method

.method public final b(ZZ)Lda;
    .locals 0

    .prologue
    .line 142
    return-object p0
.end method

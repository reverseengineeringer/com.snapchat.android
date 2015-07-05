.class final Lde$a;
.super Lde;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient b:I

.field final transient c:I

.field final synthetic d:Lde;


# direct methods
.method constructor <init>(Lde;II)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lde$a;->d:Lde;

    invoke-direct {p0}, Lde;-><init>()V

    .line 407
    iput p2, p0, Lde$a;->b:I

    .line 408
    iput p3, p0, Lde$a;->c:I

    .line 409
    return-void
.end method


# virtual methods
.method public final a(II)Lde;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    iget v0, p0, Lde$a;->c:I

    invoke-static {p1, p2, v0}, Lck;->a(III)V

    .line 425
    iget-object v0, p0, Lde$a;->d:Lde;

    iget v1, p0, Lde$a;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lde$a;->b:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lde;->a(II)Lde;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 418
    iget v0, p0, Lde$a;->c:I

    invoke-static {p1, v0}, Lck;->a(II)I

    .line 419
    iget-object v0, p0, Lde$a;->d:Lde;

    iget v1, p0, Lde$a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lde;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0, p1}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lde$a;->c:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Lde$a;->a(II)Lde;

    move-result-object v0

    return-object v0
.end method

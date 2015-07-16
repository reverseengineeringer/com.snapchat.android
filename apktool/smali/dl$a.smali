.class final Ldl$a;
.super Ldl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldl",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient b:I

.field final transient c:I

.field final synthetic d:Ldl;


# direct methods
.method constructor <init>(Ldl;II)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Ldl$a;->d:Ldl;

    invoke-direct {p0}, Ldl;-><init>()V

    .line 407
    iput p2, p0, Ldl$a;->b:I

    .line 408
    iput p3, p0, Ldl$a;->c:I

    .line 409
    return-void
.end method


# virtual methods
.method public final a(II)Ldl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ldl",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    iget v0, p0, Ldl$a;->c:I

    invoke-static {p1, p2, v0}, Lco;->a(III)V

    .line 425
    iget-object v0, p0, Ldl$a;->d:Ldl;

    iget v1, p0, Ldl$a;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Ldl$a;->b:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ldl;->a(II)Ldl;

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
    iget v0, p0, Ldl$a;->c:I

    invoke-static {p1, v0}, Lco;->a(II)I

    .line 419
    iget-object v0, p0, Ldl$a;->d:Ldl;

    iget v1, p0, Ldl$a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ldl;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Ldl;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldl;->a(I)Leg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0, p1}, Ldl;->a(I)Leg;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Ldl$a;->c:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Ldl$a;->a(II)Ldl;

    move-result-object v0

    return-object v0
.end method

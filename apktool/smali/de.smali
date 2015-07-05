.class public abstract Lde;
.super Ldc;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldc",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field static final a:Lde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ldq;

    sget-object v1, Ldn;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ldq;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lde;->a:Lde;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ldc;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ldu;

    invoke-direct {v0, p0}, Ldu;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lde;->a:Lde;

    return-object v0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Lde;->size()I

    move-result v1

    .line 495
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 496
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    add-int v0, p2, v1

    return v0
.end method

.method public a(II)Lde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lde;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lck;->a(III)V

    .line 382
    sub-int v0, p2, p1

    .line 383
    packed-switch v0, :pswitch_data_0

    .line 389
    invoke-virtual {p0, p1, p2}, Lde;->b(II)Lde;

    move-result-object v0

    :goto_0
    return-object v0

    .line 385
    :pswitch_0
    sget-object v0, Lde;->a:Lde;

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-virtual {p0, p1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lde;->a(Ljava/lang/Object;)Lde;

    move-result-object v0

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Ldw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ldx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldx",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lde$1;

    invoke-virtual {p0}, Lde;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lde$1;-><init>(Lde;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lde;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 488
    return-object p0
.end method

.method b(II)Lde;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lde$a;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lde$a;-><init>(Lde;II)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lde;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 567
    invoke-static {p0}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Ldj;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 571
    const/4 v1, 0x1

    .line 572
    invoke-virtual {p0}, Lde;->size()I

    move-result v2

    .line 573
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 574
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 576
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 358
    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lde;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 363
    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lde;->a(II)Lde;

    move-result-object v0

    return-object v0
.end method

.class public final Larp;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Larr;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Larq;

.field public d:Lbqe;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Larq;Lbqe;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Larq;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lbqe;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 41
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Larp;->e:Landroid/content/Context;

    .line 42
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Larp;->f:Landroid/view/LayoutInflater;

    .line 43
    invoke-static {p3}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larq;

    iput-object v0, p0, Larp;->c:Larq;

    .line 44
    invoke-static {p4}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqe;

    iput-object v0, p0, Larp;->d:Lbqe;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Larp;->c:Larq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Larp;->c:Larq;

    iget-object v0, v0, Larq;->a:[Larq$a;

    array-length v0, v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    if-nez p1, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x2

    .line 106
    :cond_0
    return v0

    .line 103
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Larp;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f040091

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Larr;

    invoke-direct {v0, v1}, Larr;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Larp;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f040092

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Larr;

    iget-object v2, p0, Larp;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Larr;-><init>(Larp;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    check-cast p1, Larr;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    iput v0, p1, Larr;->m:I

    iget-object v3, p0, Larp;->c:Larq;

    iget-object v3, v3, Larq;->b:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v0, p1, Larr;->a:Landroid/view/View;

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    invoke-virtual {p1, v2}, Larr;->a(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Larp;->c:Larq;

    invoke-virtual {v2, v0}, Larq;->a(I)Larq$a;

    move-result-object v0

    iget-object v2, v0, Larq$a;->c:Ljava/io/File;

    if-eqz v2, :cond_3

    iget-object v2, p0, Larp;->d:Lbqe;

    iget-object v0, v0, Larq$a;->c:Ljava/io/File;

    invoke-virtual {v2, v0}, Lbqe;->a(Ljava/io/File;)Lbqi;

    move-result-object v0

    iput-boolean v1, v0, Lbqi;->b:Z

    iget-object v1, p1, Larr;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lbqi;->a(Landroid/widget/ImageView;Lbpo;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Larp;->d:Lbqe;

    iget-object v0, v0, Larq$a;->b:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lbqe;->a(Landroid/net/Uri;)Lbqi;

    move-result-object v0

    iput-boolean v1, v0, Lbqi;->b:Z

    iget-object v1, p1, Larr;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lbqi;->a(Landroid/widget/ImageView;Lbpo;)V

    goto :goto_1
.end method

.class final Landroid/support/v7/widget/RecyclerView$n;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 2979
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3037
    :goto_0
    return-void

    .line 3034
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)Z

    .line 3035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2982
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 2983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_1

    .line 2987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 2988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    .line 2993
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2996
    :cond_0
    return-void

    .line 2990
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$p;->h:Z

    .line 2991
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3008
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3009
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    iget-object v3, v2, Lac;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1, v0}, Lac;->a(III)Lac$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lac;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 3010
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 3012
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3009
    goto :goto_0
.end method

.method public final a(II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3000
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3001
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    iget-object v2, v1, Lac;->a:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1, p2}, Lac;->a(III)Lac$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lac;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 3002
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 3004
    :cond_0
    return-void

    .line 3001
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3016
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3017
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    iget-object v2, v1, Lac;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1, v0}, Lac;->a(III)Lac$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lac;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 3018
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 3020
    :cond_0
    return-void

    .line 3017
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

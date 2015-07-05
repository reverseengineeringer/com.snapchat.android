.class final Landroid/support/v7/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->g()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0}, Lac;->b()V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v0}, Lad;->a()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_9

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    invoke-virtual {v3, v0}, Lad;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget v5, v3, Landroid/support/v7/widget/RecyclerView$s;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/RecyclerView$s;->e:I

    if-ne v5, v4, :cond_8

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$a;

    iget v5, v3, Landroid/support/v7/widget/RecyclerView$s;->b:I

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$s;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_2

    :cond_8
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_2

    .line 167
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    goto/16 :goto_0
.end method

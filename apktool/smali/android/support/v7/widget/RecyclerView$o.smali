.class public abstract Landroid/support/v7/widget/RecyclerView$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$o$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$h;

.field private final g:Landroid/support/v7/widget/RecyclerView$o$a;


# direct methods
.method static synthetic a(Landroid/support/v7/widget/RecyclerView$o;)V
    .locals 2

    .prologue
    .line 7121
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$o;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$o;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$o$a;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$o$a;->a(Landroid/support/v7/widget/RecyclerView$o$a;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$o;->a()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$o$a;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$o$a;->a(Landroid/support/v7/widget/RecyclerView$o$a;Landroid/support/v7/widget/RecyclerView;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->d:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 7185
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Z

    if-nez v0, :cond_0

    .line 7199
    :goto_0
    return-void

    .line 7188
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$p;->a:I

    .line 7190
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->d:Landroid/view/View;

    .line 7191
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$o;->a:I

    .line 7192
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Z

    .line 7193
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Z

    .line 7195
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->f:Landroid/support/v7/widget/RecyclerView$h;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView$h;Landroid/support/v7/widget/RecyclerView$o;)V

    .line 7197
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->f:Landroid/support/v7/widget/RecyclerView$h;

    .line 7198
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->e:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

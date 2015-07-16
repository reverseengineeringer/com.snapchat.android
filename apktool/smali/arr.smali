.class public final Larr;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larr$a;
    }
.end annotation


# instance fields
.field final k:Landroid/content/Context;

.field l:Landroid/widget/ImageView;

.field m:I

.field n:Larp;

.field private o:Larr$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Larr;->m:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Larr;->k:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Larp;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Larr;->m:I

    .line 46
    iput-object p1, p0, Larr;->n:Larp;

    .line 47
    iput-object p2, p0, Larr;->k:Landroid/content/Context;

    .line 48
    const v0, 0x7f0a0321

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Larr;->l:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0a031f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 50
    new-instance v1, Larr$a;

    invoke-direct {v1, p0}, Larr$a;-><init>(Larr;)V

    iput-object v1, p0, Larr;->o:Larr$a;

    .line 51
    iget-object v1, p0, Larr;->o:Larr$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

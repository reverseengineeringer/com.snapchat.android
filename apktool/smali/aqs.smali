.class public final Laqs;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqs$a;
    }
.end annotation


# instance fields
.field final k:Landroid/content/Context;

.field l:Landroid/widget/ImageView;

.field m:I

.field n:Laqq;

.field private o:Laqs$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Laqs;->m:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Laqs;->k:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Laqq;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Laqs;->m:I

    .line 46
    iput-object p1, p0, Laqs;->n:Laqq;

    .line 47
    iput-object p2, p0, Laqs;->k:Landroid/content/Context;

    .line 48
    const v0, 0x7f0a0322

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqs;->l:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0a0320

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 50
    new-instance v1, Laqs$a;

    invoke-direct {v1, p0}, Laqs$a;-><init>(Laqs;)V

    iput-object v1, p0, Laqs;->o:Laqs$a;

    .line 51
    iget-object v1, p0, Laqs;->o:Laqs$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

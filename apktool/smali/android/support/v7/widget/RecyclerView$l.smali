.class public final Landroid/support/v7/widget/RecyclerView$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Landroid/support/v7/widget/RecyclerView$k;

.field g:Landroid/support/v7/widget/RecyclerView$q;

.field final synthetic h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 3162
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    .line 3164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    .line 3166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    .line 3168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->d:Ljava/util/List;

    .line 3171
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$l;->e:I

    return-void
.end method

.method private a(JI)Landroid/support/v7/widget/RecyclerView$s;
    .locals 5

    .prologue
    .line 3787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3788
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 3789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3790
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3791
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$s;->e:I

    if-ne p3, v2, :cond_1

    .line 3792
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    .line 3793
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3802
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v1, :cond_0

    .line 3803
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$s;->a(II)V

    .line 3832
    :cond_0
    :goto_1
    return-object v0

    .line 3808
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3811
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3812
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->b(Landroid/view/View;)V

    .line 3788
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3818
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3819
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 3820
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3821
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 3822
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$s;->e:I

    if-ne p3, v2, :cond_4

    .line 3823
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3827
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    .line 3819
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 3832
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3493
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3494
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3495
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 3496
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/view/ViewGroup;Z)V

    .line 3493
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3499
    :cond_1
    if-nez p2, :cond_2

    .line 3511
    :goto_1
    return-void

    .line 3503
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3504
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3505
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3507
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 3508
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3509
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1

    .prologue
    .line 3836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3837
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;

    .line 3839
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3840
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    .line 3842
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    if-eqz v0, :cond_2

    .line 3843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3846
    :cond_2
    return-void
.end method

.method private d(I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 3701
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 3726
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 3705
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3706
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3707
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 3708
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    goto :goto_0

    .line 3705
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3713
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_5

    .line 3714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0, p1, v2}, Lac;->a(II)I

    move-result v0

    .line 3715
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3716
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    .line 3717
    :goto_2
    if-ge v2, v4, :cond_5

    .line 3718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3719
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v8, v0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 3720
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    goto :goto_0

    .line 3717
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 3726
    goto :goto_0
.end method

.method private e(I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 3742
    :goto_0
    if-ge v3, v4, :cond_2

    .line 3743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3744
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3746
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    .line 3782
    :goto_1
    return-object v0

    .line 3742
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3757
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->c:Lad;

    iget-object v0, v4, Lad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_5

    iget-object v0, v4, Lad;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Lad;->a:Lad$b;

    invoke-interface {v6, v0}, Lad$b;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3759
    :goto_3
    if-eqz v0, :cond_3

    .line 3761
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$d;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$d;->c(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3766
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3767
    :goto_4
    if-ge v2, v3, :cond_7

    .line 3768
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3771
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3772
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3757
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 3767
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 3782
    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 3315
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3316
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3319
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_2

    .line 3322
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0, p1}, Lac;->a(I)I

    move-result p1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3186
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3585
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3586
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3592
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3597
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3603
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3606
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$l;->e:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    .line 3607
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3608
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$l;->c(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3609
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3613
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$l;->e:I

    if-ge v2, v3, :cond_7

    .line 3614
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 3618
    :cond_7
    if-nez v1, :cond_8

    .line 3619
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$l;->b()Landroid/support/v7/widget/RecyclerView$k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$k;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3620
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$l;->c(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3628
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3629
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3526
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 3527
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3528
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3530
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3531
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->e()V

    .line 3535
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3536
    return-void

    .line 3532
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3533
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->g()V

    goto :goto_0
.end method

.method final b()Landroid/support/v7/widget/RecyclerView$k;
    .locals 1

    .prologue
    .line 3951
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    if-nez v0, :cond_0

    .line 3952
    new-instance v0, Landroid/support/v7/widget/RecyclerView$k;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$k;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    .line 3954
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->f:Landroid/support/v7/widget/RecyclerView$k;

    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3340
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$l;->d(I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v2

    :goto_0
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$l;->e(I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    if-ltz v4, :cond_2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v6

    if-lt v4, v6, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v4

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$s;->e:I

    if-eq v4, v6, :cond_8

    move v4, v3

    :goto_2
    if-nez v4, :cond_b

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$s;->a(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v4, v6, v3}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->e()V

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    move-object v0, v5

    :cond_6
    :goto_4
    if-nez v0, :cond_1d

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v4, p1}, Lac;->a(I)I

    move-result v6

    if-ltz v6, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v4

    if-lt v6, v4, :cond_c

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v4, :cond_9

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$s;->d:J

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    iget v8, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    move v4, v2

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->g()V

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v4

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v7

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v7, :cond_1c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v4}, Landroid/support/v7/widget/RecyclerView$l;->a(JI)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_1c

    iput v6, v0, Landroid/support/v7/widget/RecyclerView$s;->b:I

    move v4, v2

    :goto_5
    if-nez v0, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->g:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->g:Landroid/support/v7/widget/RecyclerView$q;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$q;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$l;->b()Landroid/support/v7/widget/RecyclerView$k;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->o()V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/view/ViewGroup;Z)V

    :cond_f
    move-object v0, v1

    :cond_10
    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    iput v5, v0, Landroid/support/v7/widget/RecyclerView$s;->e:I

    :cond_11
    move-object v1, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    iput p1, v1, Landroid/support/v7/widget/RecyclerView$s;->f:I

    move v5, v3

    :goto_8
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v6, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    :goto_a
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    return-object v0

    :cond_12
    move-object v1, v5

    goto :goto_6

    :cond_13
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->j()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$s;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Lac;

    invoke-virtual {v0, p1}, Lac;->a(I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$s;I)V

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_15

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_15
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Lai;

    move-result-object v5

    iget-object v5, v5, Lai;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$p;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-eqz v0, :cond_17

    iput p1, v1, Landroid/support/v7/widget/RecyclerView$s;->f:I

    :cond_17
    move v5, v2

    goto :goto_8

    :cond_18
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v6, v1, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :cond_19
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    goto/16 :goto_9

    :cond_1a
    move v2, v3

    goto/16 :goto_a

    :cond_1b
    move v5, v3

    goto/16 :goto_8

    :cond_1c
    move v4, v1

    goto/16 :goto_5

    :cond_1d
    move v4, v1

    move-object v1, v0

    goto/16 :goto_7

    :cond_1e
    move-object v0, v5

    move v1, v3

    goto/16 :goto_1
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 1

    .prologue
    .line 3677
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3678
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3682
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$s;->j:Landroid/support/v7/widget/RecyclerView$l;

    .line 3683
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$s;->g()V

    .line 3684
    return-void

    .line 3680
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3637
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 3638
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$s;->j:Landroid/support/v7/widget/RecyclerView$l;

    .line 3639
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->g()V

    .line 3640
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3641
    return-void
.end method

.method final c(I)Z
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s;

    .line 3570
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$s;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3571
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$l;->b()Landroid/support/v7/widget/RecyclerView$k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$k;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3572
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$l;->c(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 3573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3574
    const/4 v0, 0x1

    .line 3576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

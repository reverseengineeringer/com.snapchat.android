.class final Lae$8;
.super Lae$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lae$a;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lae;


# direct methods
.method constructor <init>(Lae;Lae$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Lae$8;->d:Lae;

    iput-object p2, p0, Lae$8;->a:Lae$a;

    iput-object p3, p0, Lae$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lae$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lae$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 373
    iget-object v0, p0, Lae$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 374
    iget-object v0, p0, Lae$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Lae$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 376
    iget-object v0, p0, Lae$8;->d:Lae;

    iget-object v1, p0, Lae$8;->a:Lae$a;

    iget-object v1, v1, Lae$a;->b:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Lae;->g(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 377
    iget-object v0, p0, Lae$8;->d:Lae;

    iget-object v0, v0, Lae;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lae$8;->a:Lae$a;

    iget-object v1, v1, Lae$a;->b:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lae$8;->d:Lae;

    invoke-virtual {v0}, Lae;->c()V

    .line 379
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

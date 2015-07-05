.class final Lae$7;
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

.field final synthetic c:Lae;


# direct methods
.method constructor <init>(Lae;Lae$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lae$7;->c:Lae;

    iput-object p2, p0, Lae$7;->a:Lae$a;

    iput-object p3, p0, Lae$7;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lae$7;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 353
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 354
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 355
    iget-object v0, p0, Lae$7;->c:Lae;

    iget-object v1, p0, Lae$7;->a:Lae$a;

    iget-object v1, v1, Lae$a;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Lae;->g(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 356
    iget-object v0, p0, Lae$7;->c:Lae;

    iget-object v0, v0, Lae;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lae$7;->a:Lae$a;

    iget-object v1, v1, Lae$a;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lae$7;->c:Lae;

    invoke-virtual {v0}, Lae;->c()V

    .line 358
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.class final Lae$6;
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
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$s;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Lae;


# direct methods
.method constructor <init>(Lae;Landroid/support/v7/widget/RecyclerView$s;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lae$6;->e:Lae;

    iput-object p2, p0, Lae$6;->a:Landroid/support/v7/widget/RecyclerView$s;

    iput p3, p0, Lae$6;->b:I

    iput p4, p0, Lae$6;->c:I

    iput-object p5, p0, Lae$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v0, p0, Lae$6;->b:I

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Lae$6;->c:I

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 297
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lae$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 301
    iget-object v0, p0, Lae$6;->e:Lae;

    iget-object v1, p0, Lae$6;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Lae;->e(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 302
    iget-object v0, p0, Lae$6;->e:Lae;

    iget-object v0, v0, Lae;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lae$6;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lae$6;->e:Lae;

    invoke-virtual {v0}, Lae;->c()V

    .line 304
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

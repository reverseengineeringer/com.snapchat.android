.class final Lae$5;
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

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Lae;


# direct methods
.method constructor <init>(Lae;Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lae$5;->c:Lae;

    iput-object p2, p0, Lae$5;->a:Landroid/support/v7/widget/RecyclerView$s;

    iput-object p3, p0, Lae$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae$c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 234
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lae$5;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 239
    iget-object v0, p0, Lae$5;->c:Lae;

    iget-object v1, p0, Lae$5;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Lae;->f(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 240
    iget-object v0, p0, Lae$5;->c:Lae;

    iget-object v0, v0, Lae;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lae$5;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lae$5;->c:Lae;

    invoke-virtual {v0}, Lae;->c()V

    .line 242
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

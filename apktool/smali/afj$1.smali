.class public final Lafj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafj;


# direct methods
.method public constructor <init>(Lafj;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lafj$1;->a:Lafj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lafj$1;->a:Lafj;

    iget-object v0, v0, Lafj;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj$1;->a:Lafj;

    iget-object v0, v0, Lafj;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lafj$1;->a:Lafj;

    iget-object v0, v0, Lafj;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method

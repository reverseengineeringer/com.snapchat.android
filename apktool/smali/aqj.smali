.class public final Laqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/widget/ImageView;

.field private final b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Laqj;->a:Landroid/widget/ImageView;

    .line 33
    iput-object p2, p0, Laqj;->b:Landroid/support/v7/widget/RecyclerView;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Laqj;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Laqj;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v1, v2}, Lavp;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Laqj;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setDrawingCacheEnabled(Z)V

    .line 43
    iget-object v1, p0, Laqj;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    iget-object v0, p0, Laqj;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    add-int v2, p1, p2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 48
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 50
    new-instance v1, Laqj$1;

    invoke-direct {v1, p0}, Laqj$1;-><init>(Laqj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    iget-object v1, p0, Laqj;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    return-void
.end method

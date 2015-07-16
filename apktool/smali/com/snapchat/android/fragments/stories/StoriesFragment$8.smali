.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 958
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 959
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    return-void
.end method

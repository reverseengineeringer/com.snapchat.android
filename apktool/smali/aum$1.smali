.class public final Laum$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laum;


# direct methods
.method public constructor <init>(Laum;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Laum$1;->this$0:Laum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Laum$1;->this$0:Laum;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Laum;->mPreviousXPositionForShutAnimator:I

    .line 40
    iget-object v0, p0, Laum$1;->this$0:Laum;

    iget-object v0, v0, Laum;->mViewToAnimate:Landroid/view/View;

    iget-object v1, p0, Laum$1;->this$0:Laum;

    iget v1, v1, Laum;->mPreviousXPositionForShutAnimator:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    return-void
.end method

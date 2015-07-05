.class final Laff$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Laff;


# direct methods
.method constructor <init>(Laff;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Laff$7;->b:Laff;

    iput-object p2, p0, Laff$7;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Laff$7;->b:Laff;

    iget-object v0, v0, Laff;->I:Landroid/view/View;

    iget-object v1, p0, Laff$7;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Laff$7;->b:Laff;

    iget-object v0, v0, Laff;->I:Landroid/view/View;

    iget-object v1, p0, Laff$7;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

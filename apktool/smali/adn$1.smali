.class final Ladn$1;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladn;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladn;


# direct methods
.method constructor <init>(Ladn;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Ladn$1;->a:Ladn;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Ladn$1;->a:Ladn;

    iget-boolean v0, v0, Ladn;->i:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ladn$1;->a:Ladn;

    iget-object v0, v0, Ladn;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Ladn$1;->a:Ladn;

    iget-object v0, v0, Ladn;->e:Landroid/view/View;

    iget-object v1, p0, Ladn$1;->a:Ladn;

    iget v1, v1, Ladn;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 134
    iget-object v0, p0, Ladn$1;->a:Ladn;

    iget-object v0, v0, Ladn;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

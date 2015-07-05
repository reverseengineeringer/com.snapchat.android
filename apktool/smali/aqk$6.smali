.class final Laqk$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->a(Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/animation/AnimatorSet;

.field final synthetic c:Lagd$b;

.field final synthetic d:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic e:Laqk;


# direct methods
.method constructor <init>(Laqk;Landroid/animation/AnimatorSet;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Laqk$6;->e:Laqk;

    iput-object p2, p0, Laqk$6;->b:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Laqk$6;->c:Lagd$b;

    iput-object p4, p0, Laqk$6;->d:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqk$6;->a:Z

    .line 406
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 387
    iget-boolean v0, p0, Laqk$6;->a:Z

    if-nez v0, :cond_3

    .line 388
    iget-object v0, p0, Laqk$6;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Laqk$6;->e:Laqk;

    invoke-static {v0}, Laqk;->d(Laqk;)Laqk$a;

    move-result-object v0

    invoke-interface {v0}, Laqk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Laqk$6;->d:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    iget-object v1, p0, Laqk$6;->b:Landroid/animation/AnimatorSet;

    iput-object v1, v0, Lagd$b;->d:Landroid/animation/Animator;

    .line 397
    iget-object v0, p0, Laqk$6;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    iget-boolean v0, v0, Lagd$b;->e:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Laqk$6;->c:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

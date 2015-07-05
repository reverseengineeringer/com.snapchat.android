.class final Laqk$5;
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

.field final synthetic b:Lagd$b;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Laqk;


# direct methods
.method constructor <init>(Laqk;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Laqk$5;->d:Laqk;

    iput-object p2, p0, Laqk$5;->b:Lagd$b;

    iput-object p3, p0, Laqk$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqk$5;->a:Z

    .line 368
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 354
    iget-boolean v0, p0, Laqk$5;->a:Z

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Laqk$5;->d:Laqk;

    invoke-static {v0}, Laqk;->d(Laqk;)Laqk$a;

    move-result-object v0

    invoke-interface {v0}, Laqk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Laqk$5;->b:Lagd$b;

    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 357
    iget-object v0, p0, Laqk$5;->b:Lagd$b;

    iget-object v0, v0, Lagd$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Laqk$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Laqk$5;->b:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Laqk$5;->b:Lagd$b;

    iget-boolean v0, v0, Lagd$b;->e:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Laqk$5;->b:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

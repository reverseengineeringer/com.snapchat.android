.class final Laqk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V
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
    .line 284
    iput-object p1, p0, Laqk$3;->d:Laqk;

    iput-object p2, p0, Laqk$3;->b:Lagd$b;

    iput-object p3, p0, Laqk$3;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqk$3;->a:Z

    .line 304
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 292
    iget-boolean v0, p0, Laqk$3;->a:Z

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Laqk$3;->b:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->a()V

    .line 294
    iget-object v0, p0, Laqk$3;->d:Laqk;

    iget-object v1, p0, Laqk$3;->b:Lagd$b;

    iget-object v2, p0, Laqk$3;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Laqk;->a(Laqk;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v0

    .line 295
    iget-object v1, p0, Laqk$3;->b:Lagd$b;

    iput-object v0, v1, Lagd$b;->d:Landroid/animation/Animator;

    .line 296
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Laqk$3;->b:Lagd$b;

    iget-boolean v0, v0, Lagd$b;->e:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Laqk$3;->b:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Laqk$3;->b:Lagd$b;

    iget-object v0, v0, Lagd$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    return-void
.end method

.class final Laqs$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqs$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqs$a;


# direct methods
.method constructor <init>(Laqs$a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Laqs$a$2;->a:Laqs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 210
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 211
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    invoke-static {v0}, Laqs$a;->a(Laqs$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    invoke-static {v0}, Laqs$a;->b(Laqs$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 215
    :cond_1
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    invoke-static {v0}, Laqs$a;->c(Laqs$a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 217
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->u:Laqs;

    iget-object v0, v0, Laqs;->n:Laqq;

    iget-object v0, v0, Laqq;->c:Laqr;

    iget-object v1, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v1, v1, Laqs$a;->u:Laqs;

    iget v1, v1, Laqs;->m:I

    invoke-virtual {v0, v1}, Laqr;->b(I)V

    .line 218
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 223
    :goto_1
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Laqs$a;->a(Laqs$a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 221
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 227
    iget-object v0, p0, Laqs$a$2;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

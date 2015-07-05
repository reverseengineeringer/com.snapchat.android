.class final Lagd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagd$b;

.field final synthetic b:Lagd;


# direct methods
.method constructor <init>(Lagd;Lagd$b;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lagd$1;->b:Lagd;

    iput-object p2, p0, Lagd$1;->a:Lagd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lagd$1;->a:Lagd$b;

    invoke-virtual {v0}, Lagd$b;->b()V

    .line 359
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

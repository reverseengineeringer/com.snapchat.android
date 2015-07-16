.class final Lms$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lms;->b(Lms$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lms;


# direct methods
.method constructor <init>(Lms;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lms$2;->a:Lms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lms$2;->a:Lms;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lms;->a(I)V

    .line 321
    iget-object v0, p0, Lms$2;->a:Lms;

    iget-object v0, v0, Lms;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lms$2;->a:Lms;

    iget-object v0, v0, Lms;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 324
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lms$2;->a:Lms;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lms;->a(I)V

    .line 314
    iget-object v0, p0, Lms$2;->a:Lms;

    iget-object v0, v0, Lms;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lms$2;->a:Lms;

    iget-object v0, v0, Lms;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 317
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

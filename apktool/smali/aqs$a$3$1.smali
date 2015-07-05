.class final Laqs$a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqs$a$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqs$a$3;


# direct methods
.method constructor <init>(Laqs$a$3;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Laqs$a$3$1;->a:Laqs$a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Laqs$a$3$1;->a:Laqs$a$3;

    iget-object v0, v0, Laqs$a$3;->a:Laqs$a;

    iget-object v0, v0, Laqs$a;->u:Laqs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laqs;->a(Z)V

    .line 255
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

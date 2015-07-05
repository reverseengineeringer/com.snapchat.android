.class final Lma$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma;->b(Lma$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lma$a;

.field final synthetic b:Lma;


# direct methods
.method constructor <init>(Lma;Lma$a;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lma$3;->b:Lma;

    iput-object p2, p0, Lma$3;->a:Lma$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lma$3;->b:Lma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lma;->a(Lma;Lma$a;)V

    .line 347
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lma$3;->b:Lma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lma;->a(Lma;Lma$a;)V

    .line 342
    iget-object v0, p0, Lma$3;->b:Lma;

    invoke-virtual {v0}, Lma;->a()V

    .line 343
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lma$3;->b:Lma;

    iget-object v0, v0, Lma;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$LockedState;->LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    invoke-direct {v1, v2, v3}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;Lcom/snapchat/android/util/TitleBarManager$LockedState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lma$3;->b:Lma;

    iget-object v1, p0, Lma$3;->a:Lma$a;

    invoke-static {v0, v1}, Lma;->a(Lma;Lma$a;)V

    .line 338
    return-void
.end method

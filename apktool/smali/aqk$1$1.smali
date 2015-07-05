.class final Laqk$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqk$1;


# direct methods
.method constructor <init>(Laqk$1;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Laqk$1$1;->a:Laqk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Laqk$1$1;->a:Laqk$1;

    iget-object v0, v0, Laqk$1;->d:Laqk;

    invoke-static {v0}, Laqk;->b(Laqk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Laqk$1$1;->a:Laqk$1;

    iget-object v0, v0, Laqk$1;->d:Laqk;

    iget-object v1, p0, Laqk$1$1;->a:Laqk$1;

    iget-object v1, v1, Laqk$1;->b:Landroid/view/View;

    iget-object v2, p0, Laqk$1$1;->a:Laqk$1;

    iget v2, v2, Laqk$1;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Laqk;->a(Landroid/view/View;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.class final Lcom/snapchat/android/ui/ColorPickerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ColorPickerView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->b(Lcom/snapchat/android/ui/ColorPickerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->d(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->c(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->f(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->e(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->g(Lcom/snapchat/android/ui/ColorPickerView;)Lcom/snapchat/android/ui/ColorPickerView$a;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/ColorPickerView$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/ColorPickerView$1$1;-><init>(Lcom/snapchat/android/ui/ColorPickerView$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ColorPickerView$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->h(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->g(Lcom/snapchat/android/ui/ColorPickerView;)Lcom/snapchat/android/ui/ColorPickerView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;Z)Z

    .line 106
    :cond_0
    return-void
.end method

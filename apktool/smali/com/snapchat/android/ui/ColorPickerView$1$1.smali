.class final Lcom/snapchat/android/ui/ColorPickerView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ColorPickerView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ColorPickerView$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ColorPickerView$1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/snapchat/android/ui/ColorPickerView$1$1;->a:Lcom/snapchat/android/ui/ColorPickerView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 92
    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 94
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$1$1;->a:Lcom/snapchat/android/ui/ColorPickerView$1;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    const v2, 0x7f0a0410

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$1$1;->a:Lcom/snapchat/android/ui/ColorPickerView$1;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$1;->a:Lcom/snapchat/android/ui/ColorPickerView;

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    return-void
.end method

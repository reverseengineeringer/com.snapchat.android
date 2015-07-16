.class final Lcom/snapchat/android/ui/ColorPickerView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ColorPickerView$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ColorPickerView$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ColorPickerView$2;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x8c

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 148
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x41d00000    # 26.0f

    const/high16 v8, 0x3f000000    # 0.5f

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 153
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 154
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->f(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3e440000    # -23.5f

    iget-object v2, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v2, v2, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lawf;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 160
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 161
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 162
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->d(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    new-instance v0, Lcom/snapchat/android/ui/ColorPickerView$a;

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    iget-object v2, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v2, v2, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v2}, Lcom/snapchat/android/ui/ColorPickerView;->h(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v4, v4, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lawf;->a(FLandroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v4, v4, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v4}, Lcom/snapchat/android/ui/ColorPickerView;->h(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/ui/ColorPickerView$a;-><init>(Lcom/snapchat/android/ui/ColorPickerView;IILandroid/view/View;)V

    .line 168
    invoke-virtual {v0, v10, v11}, Lcom/snapchat/android/ui/ColorPickerView$a;->setDuration(J)V

    .line 169
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2$1;->a:Lcom/snapchat/android/ui/ColorPickerView$2;

    iget-object v1, v1, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->h(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

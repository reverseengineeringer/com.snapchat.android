.class final Lcom/snapchat/android/ui/ColorPickerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return v5

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;Landroid/view/MotionEvent;)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, v5}, Lcom/snapchat/android/ui/ColorPickerView;->b(Lcom/snapchat/android/ui/ColorPickerView;Z)Z

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->j(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->i(Lcom/snapchat/android/ui/ColorPickerView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/ColorPickerView;->b(Lcom/snapchat/android/ui/ColorPickerView;Z)Z

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ColorPickerView;->j(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->i(Lcom/snapchat/android/ui/ColorPickerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 135
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 136
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 137
    new-instance v1, Lcom/snapchat/android/ui/ColorPickerView$2$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/ColorPickerView$2$1;-><init>(Lcom/snapchat/android/ui/ColorPickerView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v1}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    const v2, 0x7f0a0410

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;Z)Z

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/ColorPickerView;->a(Lcom/snapchat/android/ui/ColorPickerView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView$2;->a:Lcom/snapchat/android/ui/ColorPickerView;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/ColorPickerView;->b(Lcom/snapchat/android/ui/ColorPickerView;Z)Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

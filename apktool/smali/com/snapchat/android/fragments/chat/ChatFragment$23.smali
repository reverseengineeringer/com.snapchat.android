.class final Lcom/snapchat/android/fragments/chat/ChatFragment$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SpyRelativeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1037
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lyz;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {v4}, Lyz;->a()V

    goto :goto_0

    :cond_3
    if-ne v0, v8, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_7

    move v0, v1

    :goto_1
    iget-object v2, v4, Lyz;->a:[Landroid/graphics/PointF;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, v4, Lyz;->a:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, v4, Lyz;->a:[Landroid/graphics/PointF;

    aget-object v5, v5, v0

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v4, Lyz;->c:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, v4, Lyz;->c:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    :cond_4
    move v2, v3

    :goto_2
    if-nez v2, :cond_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lyz;->a()V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    if-ne v0, v7, :cond_0

    :cond_9
    iget-object v0, v4, Lyz;->a:[Landroid/graphics/PointF;

    aget-object v0, v0, v1

    if-nez v0, :cond_a

    iget-object v0, v4, Lyz;->a:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_b

    iget-object v0, v4, Lyz;->a:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    if-nez v0, :cond_b

    iget-object v0, v4, Lyz;->a:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v3

    :cond_b
    iget-object v0, v4, Lyz;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v8, :cond_0

    iget-object v0, v4, Lyz;->d:Lyz$a;

    invoke-interface {v0}, Lyz$a;->u_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Lyz;->b:Landroid/os/Handler;

    new-instance v1, Lyz$1;

    invoke-direct {v1, v4}, Lyz$1;-><init>(Lyz;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v4, Lyz;->b:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

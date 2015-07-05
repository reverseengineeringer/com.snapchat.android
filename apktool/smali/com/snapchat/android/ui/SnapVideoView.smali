.class public Lcom/snapchat/android/ui/SnapVideoView;
.super Landroid/widget/VideoView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->a:I

    .line 11
    iput v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->b:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 39
    iget v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->a:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/SnapVideoView;->b:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoAspect(II)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->a:I

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/SnapVideoView;->b:I

    .line 30
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapVideoView;->requestLayout()V

    .line 31
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 25
    return-void
.end method

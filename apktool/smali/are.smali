.class public final Lare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laph;Larf;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 13
    iget v0, p2, Larf;->c:F

    .line 14
    invoke-virtual {p2, p3}, Larf;->a(I)V

    .line 15
    invoke-interface {p1, v0}, Laph;->a(F)V

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Laph;Larf;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    iget v0, p2, Larf;->c:F

    iget-object v1, p2, Larf;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-ne p3, v3, :cond_0

    invoke-interface {p1}, Laph;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SINGLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 33
    :goto_0
    return-object v0

    .line 25
    :cond_0
    if-le p3, v3, :cond_1

    .line 26
    iget v0, p2, Larf;->d:F

    .line 27
    iget-object v1, p2, Larf;->a:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-interface {p1}, Laph;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-interface {p1}, Laph;->d()Z

    move-result v0

    iput-boolean v0, p2, Larf;->g:Z

    .line 30
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->DOUBLE_SWIPE:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laph;Larf;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 38
    invoke-interface {p1, p3}, Laph;->a(Landroid/view/MotionEvent;)V

    .line 39
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    return-object v0
.end method

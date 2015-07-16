.class public final Lary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laqd;Lase;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    iget v2, p2, Lase;->f:I

    iget-object v3, p2, Lase;->b:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p2, Lase;->b:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :goto_1
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Lase;->a(I)V

    .line 15
    iget-object v0, p2, Lase;->a:[F

    aget v0, v0, p3

    invoke-interface {p1, v0}, Laqd;->a(F)V

    .line 18
    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v2, v1

    .line 13
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(Laqd;Lase;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 24
    if-le p3, v0, :cond_0

    .line 25
    iget v1, p2, Lase;->d:F

    .line 26
    iget-object v2, p2, Lase;->a:[F

    aget v2, v2, v0

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 27
    iget-object v2, p2, Lase;->a:[F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    aput v3, v2, v0

    .line 28
    iget-boolean v2, p2, Lase;->g:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-interface {p1, v0, v1}, Laqd;->a(ZF)V

    .line 31
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laqd;Lase;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p2}, Lase;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {p1}, Laqd;->e()V

    .line 38
    iput-boolean v1, p2, Lase;->g:Z

    .line 39
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v2, p2, Lase;->a:[F

    aget v2, v2, v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p2, Lase;->f:I

    if-ne v2, v0, :cond_2

    :goto_1
    if-eqz v0, :cond_1

    .line 41
    invoke-interface {p1}, Laqd;->e()V

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 40
    goto :goto_1
.end method

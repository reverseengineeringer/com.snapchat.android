.class public final Lasa;
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
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p2, p3}, Lase;->a(I)V

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Laqd;Lase;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    iget v1, p2, Lase;->c:F

    invoke-interface {p1, v0, v1}, Laqd;->a(ZF)V

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Laqd;Lase;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 26
    iget v0, p2, Lase;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lase;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    invoke-interface {p1}, Laqd;->e()V

    .line 28
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->NO_SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 30
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

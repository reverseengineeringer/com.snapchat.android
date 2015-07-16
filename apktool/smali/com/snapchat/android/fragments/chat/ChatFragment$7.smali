.class final Lcom/snapchat/android/fragments/chat/ChatFragment$7;
.super Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.source "SourceFile"


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

.field private i:J


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V
    .locals 0

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1396
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->y(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/view/GestureDetectorCompat;->mImpl:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1397
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1387
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->i:J

    .line 1388
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    instance-of v2, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_0

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v2

    check-cast v0, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lavn$d;

    check-cast v0, Laka;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4, v1}, Lavn$d;-><init>(Lavn;Laka;Lajk;Landroid/content/Context;)V

    iput-object v3, v2, Lavn;->mReplaySnapRunnable:Lavn$d;

    iget-object v0, v2, Lavn;->mOpenSnapHandler:Landroid/os/Handler;

    iget-object v1, v2, Lavn;->mReplaySnapRunnable:Lavn$d;

    const-wide/16 v4, 0xbf

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lavn;->mLongPressStarted:Z

    goto :goto_0

    .line 1391
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbe

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$7;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    instance-of v2, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_0

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v2

    check-cast v0, Lcom/snapchat/android/model/Snap;

    iget-object v3, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Laka;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lavn;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v3, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->CHAT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    check-cast v0, Laka;

    new-instance v1, Lajm;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lajm;-><init>(Z)V

    const-string v3, "chat"

    invoke-virtual {v2, v0, v1, v3}, Lavn;->a(Laka;Lajk;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_1
    instance-of v1, v0, Lake;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lake;

    invoke-static {v1, v3}, Lzm;->a(Lake;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbca;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeb;

    invoke-direct {v1}, Lbeb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const-string v0, "chat"

    invoke-static {v0}, Lnz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

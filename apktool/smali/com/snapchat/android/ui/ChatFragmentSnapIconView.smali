.class public Lcom/snapchat/android/ui/ChatFragmentSnapIconView;
.super Lcom/snapchat/android/ui/FrivolousAnimationView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/FrivolousAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public setDisplayedIcon(Lcom/snapchat/android/model/Snap;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/Snap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 32
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->c:J

    .line 33
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_2

    .line 39
    instance-of v0, p1, Lake;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->ac()I

    move-result v0

    .line 44
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->ab()I

    move-result v0

    goto :goto_0

    .line 45
    :cond_2
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->ad()I

    move-result v0

    .line 47
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    goto :goto_1

    .line 49
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/snapchat/android/model/Snap;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 52
    iget-wide v2, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->a(J)V

    .line 53
    iget v0, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->startResource:I

    iget v1, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    goto :goto_1

    .line 51
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 55
    :cond_5
    iget v0, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    iget v1, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    goto :goto_1
.end method

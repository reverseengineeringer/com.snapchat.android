.class public Lcom/snapchat/android/ui/FeedReplayAnimationView;
.super Lcom/snapchat/android/ui/FrivolousAnimationView;
.source "SourceFile"


# static fields
.field protected static a:I

.field protected static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f020150

    sput v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a:I

    .line 27
    const v0, 0x7f02002f

    sput v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/FrivolousAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private static a(Lcom/snapchat/android/model/chat/ChatFeedItem$a;)Z
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatFeedItem$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setBackgroundResource(I)V

    .line 37
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->c:J

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    :cond_0
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    sget v1, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a:I

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    .line 50
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 51
    invoke-static {v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a(Lcom/snapchat/android/model/chat/ChatFeedItem$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a(J)V

    .line 53
    iget v1, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->startResource:I

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    .line 88
    :goto_1
    return-void

    .line 44
    :cond_2
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    sget v1, Lcom/snapchat/android/ui/FeedReplayAnimationView;->b:I

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$a;-><init>(I)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 47
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_4
    iget v1, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    goto :goto_1

    .line 61
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 62
    invoke-interface {v0, p0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a(Lcom/snapchat/android/model/chat/ChatFeedItem$a;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->frivolousAnimationTime:J

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a(J)V

    .line 66
    iget v1, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->startResource:I

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    goto :goto_1

    .line 72
    :cond_7
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 73
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 77
    invoke-interface {v0, p0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_8

    .line 81
    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$a;->endResource:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v4, 0x3e8

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 85
    :cond_9
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 87
    invoke-virtual {p0, v5, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    goto/16 :goto_1
.end method

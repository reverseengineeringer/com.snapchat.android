.class public abstract Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/chat/ChatFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
    }
.end annotation


# instance fields
.field public mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
    .annotation build Lchc;
    .end annotation
.end field

.field public mSender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->UNKNOWN:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 40
    return-void
.end method


# virtual methods
.method public C_()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 90
    return-void
.end method

.method public final O()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final R()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    invoke-static {v0, v1}, Layg;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f0c012a

    .line 134
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const v0, 0x7f0c0128

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const v0, 0x7f0c021a

    goto :goto_0

    .line 132
    :cond_2
    const v0, 0x7f0c028f

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 139
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 140
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->am()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->U()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 148
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

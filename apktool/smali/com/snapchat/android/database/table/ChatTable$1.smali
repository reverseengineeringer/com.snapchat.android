.class final Lcom/snapchat/android/database/table/ChatTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ChatTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakw;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lakw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    iput-object p2, p0, Lcom/snapchat/android/database/table/ChatTable$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 310
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    invoke-virtual {v2}, Lakw;->Y()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/database/table/ChatTable$1;->a:Lakw;

    invoke-virtual {v3}, Lakw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 312
    :cond_1
    return-void
.end method

.class final Lyw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lyw$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lyw$b;

.field final synthetic d:Lyw;


# direct methods
.method constructor <init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lyw$b;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lyw$2;->d:Lyw;

    iput-object p2, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p4, p0, Lyw$2;->c:Lyw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 111
    iget-object v0, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 112
    iget-object v0, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 113
    iget-object v0, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 114
    iget-object v0, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->v()V

    .line 115
    iget-object v0, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 117
    iget-object v0, p0, Lyw$2;->c:Lyw$b;

    invoke-interface {v0}, Lyw$b;->a()V

    .line 119
    iget-object v0, p0, Lyw$2;->d:Lyw;

    iget-object v1, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 120
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lyw$2;->c:Lyw$b;

    invoke-interface {v0}, Lyw$b;->b()V

    .line 126
    iget-object v0, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyw$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 127
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyw$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

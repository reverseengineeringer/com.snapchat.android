.class final Lyw$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lyw;


# direct methods
.method constructor <init>(Lyw;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lyw$6;->d:Lyw;

    iput-object p2, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lyw$6;->b:Ljava/util/List;

    iput-object p4, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 257
    iget-object v0, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->l(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lyw$6;->d:Lyw;

    iget-object v0, v0, Lyw;->b:Lnq;

    iget-object v0, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lnq;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 259
    iget-object v0, p0, Lyw$6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 261
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lyw$6;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 269
    :cond_1
    iget-object v0, p0, Lyw$6;->d:Lyw;

    iget-object v1, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lyw$6;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 276
    iget-object v0, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 277
    iget-object v0, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyw$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 278
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyw$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

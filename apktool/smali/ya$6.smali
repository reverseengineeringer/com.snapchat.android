.class final Lya$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lqd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lya;


# direct methods
.method constructor <init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lya$6;->d:Lya;

    iput-object p2, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lya$6;->b:Ljava/util/List;

    iput-object p4, p0, Lya$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->m(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lmz;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 253
    iget-object v0, p0, Lya$6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lya$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lya$6;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 262
    :cond_1
    iget-object v0, p0, Lya$6;->d:Lya;

    iget-object v1, p0, Lya$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lya$6;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 268
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lya$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 270
    iget-object v0, p0, Lya$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 271
    return-void
.end method

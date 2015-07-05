.class final Lya$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lya$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lya$b;

.field final synthetic d:Lya;


# direct methods
.method constructor <init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lya$b;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lya$2;->d:Lya;

    iput-object p2, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p4, p0, Lya$2;->c:Lya$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 111
    iget-object v0, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 112
    iget-object v0, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

    .line 113
    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v0

    iget-object v1, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v4}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 115
    iget-object v0, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 117
    iget-object v0, p0, Lya$2;->c:Lya$b;

    invoke-interface {v0}, Lya$b;->a()V

    .line 119
    iget-object v0, p0, Lya$2;->d:Lya;

    iget-object v1, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1, v2}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 120
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 124
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager SEND CANCELED id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lya$2;->c:Lya$b;

    invoke-interface {v0}, Lya$b;->b()V

    .line 126
    iget-object v0, p0, Lya$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 127
    return-void
.end method

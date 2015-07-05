.class final Lyq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lyq;


# direct methods
.method constructor <init>(Lyq;Lbhl;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lyq$1;->c:Lyq;

    iput-object p2, p0, Lyq$1;->a:Lbhl;

    iput-object p3, p0, Lyq$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lyq$1;->c:Lyq;

    iget-object v1, v0, Lyq;->b:Lnm;

    iget-object v0, p0, Lyq$1;->a:Lbhl;

    instance-of v4, v0, Lbhf;

    if-eqz v4, :cond_0

    invoke-static {v0}, Lasz;->b(Lbii;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_4

    check-cast v0, Lbhf;

    invoke-virtual {v1, v0}, Lnm;->a(Lbhf;)V

    .line 234
    :cond_0
    :goto_0
    iget-object v4, p0, Lyq$1;->c:Lyq;

    iget-object v5, p0, Lyq$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lyq$1;->a:Lbhl;

    if-eqz p1, :cond_9

    invoke-static {v1}, Lasz;->b(Lbii;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SendingMailman"

    const-string v4, "CHAT-LOG: SUCCEEDED sending message %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v0, v4, v6}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbhl;)V

    instance-of v0, v1, Lbhf;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lbhf;

    invoke-virtual {v0}, Lbhf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakb;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v7, v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    :cond_1
    invoke-virtual {v0}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    invoke-virtual {v0}, Lbhf;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v5, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbaz;

    iget-object v3, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v1}, Lbhl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    instance-of v0, v1, Lbhf;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "reachability"

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CHAT_SEND_REQUEST_LATENCY"

    invoke-virtual {v1}, Lbhl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    :cond_3
    return-void

    .line 233
    :cond_4
    check-cast v0, Lbhf;

    invoke-virtual {v1, v0}, Lnm;->b(Lbhf;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    instance-of v0, v1, Lbit;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lbit;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbit;)V

    move-object v0, v1

    check-cast v0, Lbit;

    invoke-virtual {v0}, Lbit;->a()Lbit$a;

    move-result-object v0

    sget-object v4, Lbit$a;->DELETE:Lbit$a;

    if-eq v0, v4, :cond_8

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lbir;

    if-nez v0, :cond_6

    instance-of v0, v1, Lbha;

    if-nez v0, :cond_6

    instance-of v0, v1, Lbjb;

    if-nez v0, :cond_6

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    const-string v0, "SendingMailman"

    const-string v6, "CHAT-LOG: FAILED sending message %s with status %s and message: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    aput-object p3, v7, v8

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v0, v1, Lbhf;

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatConversation;->k()V

    :cond_a
    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbhl;)V

    sget-object v0, Lyq$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v4, v5, v1}, Lyq;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_2

    :pswitch_0
    instance-of v0, v1, Lbhf;

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lbhl;->g()Lbib;

    move-result-object v0

    invoke-virtual {v0}, Lbib;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v3

    invoke-static {v0, v3}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v4, v5, v1, v2}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;Z)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

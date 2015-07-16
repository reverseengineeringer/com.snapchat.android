.class final Lzm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbil;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lzm;


# direct methods
.method constructor <init>(Lzm;Lbil;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lzm$1;->c:Lzm;

    iput-object p2, p0, Lzm$1;->a:Lbil;

    iput-object p3, p0, Lzm$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lzm$1;->c:Lzm;

    iget-object v1, v0, Lzm;->b:Lod;

    iget-object v0, p0, Lzm$1;->a:Lbil;

    instance-of v4, v0, Lbif;

    if-eqz v4, :cond_0

    invoke-static {v0}, Laty;->b(Lbji;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_4

    check-cast v0, Lbif;

    invoke-virtual {v1, v0}, Lod;->a(Lbif;)V

    .line 233
    :cond_0
    :goto_0
    iget-object v0, p0, Lzm$1;->c:Lzm;

    iget-object v4, p0, Lzm$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lzm$1;->a:Lbil;

    if-eqz p1, :cond_9

    invoke-static {v1}, Laty;->b(Lbji;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {v4, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbil;)V

    instance-of v0, v1, Lbif;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lbif;

    invoke-virtual {v0}, Lbif;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v7, v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v7, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v4, v6, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    :cond_1
    invoke-virtual {v0}, Lbif;->e()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    invoke-virtual {v0}, Lbif;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbca;

    iget-object v3, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v1}, Lbil;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    instance-of v0, v1, Lbif;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "reachability"

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CHAT_SEND_REQUEST_LATENCY"

    invoke-virtual {v1}, Lbil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    :cond_3
    return-void

    .line 232
    :cond_4
    check-cast v0, Lbif;

    invoke-virtual {v1, v0}, Lod;->b(Lbif;)V

    goto/16 :goto_0

    .line 233
    :cond_5
    instance-of v0, v1, Lbju;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lbju;

    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbju;)V

    move-object v0, v1

    check-cast v0, Lbju;

    invoke-virtual {v0}, Lbju;->a()Lbju$a;

    move-result-object v0

    sget-object v5, Lbju$a;->DELETE:Lbju$a;

    if-eq v0, v5, :cond_8

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lbjr;

    if-nez v0, :cond_6

    instance-of v0, v1, Lbia;

    if-nez v0, :cond_6

    instance-of v0, v1, Lbkc;

    if-nez v0, :cond_6

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    aput-object p3, v5, v6

    instance-of v5, v1, Lbif;

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->k()V

    :cond_a
    invoke-virtual {v4, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbil;)V

    sget-object v5, Lzm$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v0, v4, v1}, Lzm;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_2

    :pswitch_0
    instance-of v0, v1, Lbif;

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lbil;->g()Lbjb;

    move-result-object v0

    invoke-virtual {v0}, Lbjb;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v3

    invoke-static {v0, v3}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    invoke-static {v4, v1, v2}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;Z)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

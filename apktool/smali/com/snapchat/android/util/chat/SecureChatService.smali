.class public Lcom/snapchat/android/util/chat/SecureChatService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lald;
.implements Laxe;
.implements Laxg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;,
        Lcom/snapchat/android/util/chat/SecureChatService$a;
    }
.end annotation


# static fields
.field public static final MILLIS_TO_KEEP_OPEN_IF_APP_CLOSED_DURING_SENDING:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "SecureChatService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mChatConnectionMonitor:Lyf;

.field private final mChatConversationManager:Lakc;

.field private final mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field public mIsAppInForeground:Z

.field public final mMainHandler:Landroid/os/Handler;

.field private final mNetworkStatusManager:Lale;

.field private final mReceivingMailman:Lyo;

.field public mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

.field private final mSendingMailman:Lyq;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 48
    invoke-static {}, Lale;->a()Lale;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v3

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v4

    invoke-static {}, Lyo;->a()Lyo;

    move-result-object v5

    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/util/chat/SecureChatService;-><init>(Lale;Landroid/os/Handler;Lakc;Lyq;Lyo;Lyf;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lale;Landroid/os/Handler;Lakc;Lyq;Lyo;Lyf;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V
    .locals 1
    .param p1    # Lale;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lakc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lyo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lyf;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatService$a;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mBinder:Landroid/os/IBinder;

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lale;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    .line 60
    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConversationManager:Lakc;

    .line 61
    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lyq;

    .line 62
    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mReceivingMailman:Lyo;

    .line 63
    iput-object p6, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lyf;

    .line 64
    iput-object p7, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatService;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatService;)Lyo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mReceivingMailman:Lyo;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService START SESSION"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b()V

    .line 98
    return-void
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 141
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService onNetworkConnectivityChanged %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->a()V

    .line 145
    :cond_0
    return-void
.end method

.method public final a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 8
    .param p1    # Lbhl;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    const-string v0, "SecureChatService"

    const-string v3, "CHAT-LOG: ATTEMPT sending message %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lbii;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 120
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTING:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStartedTimestamp:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p1}, Lasz;->a(Lbii;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "SecureChatService"

    const-string v3, "CHAT-LOG: Adding message to pending messages because SCCP is connecting %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lyq;

    invoke-virtual {v0, p1, p2}, Lyq;->a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto :goto_1

    .line 116
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SCCP connection unavailable - can\'t send "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbhl;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lbii;)V
    .locals 6
    .param p1    # Lbii;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-virtual {p1}, Lbii;->j()Lbii$a;

    move-result-object v0

    sget-object v1, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lbhf;

    invoke-virtual {v0}, Lbhf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbhf;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lbhf;->g()Lbib;

    move-result-object v0

    invoke-virtual {v0}, Lbib;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laxi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v4, v5, v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatService$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/chat/SecureChatService$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;Lbii;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public final a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 11
    .param p1    # Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_4

    .line 172
    iget-object v4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lyq;

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConversationManager:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v9, v1, Lakg;

    if-eqz v9, :cond_1

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v9

    if-eqz v9, :cond_1

    check-cast v1, Lakg;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakg;

    invoke-virtual {v4, v0, v1, v2, v3}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lyq;

    invoke-virtual {v0}, Lyq;->c()V

    .line 174
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lyf;

    iput-boolean v2, v1, Lyf;->d:Z

    iget v0, v1, Lyf;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lyf;->e:I

    iget-object v0, v1, Lyf;->a:Lakc;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lyf;->a:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v1, Lyf;->b:Lyq;

    invoke-virtual {v3, v0}, Lyq;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_2

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lyf;

    iput-boolean v3, v4, Lyf;->d:Z

    iget-object v0, v4, Lyf;->a:Lakc;

    if-eqz v0, :cond_9

    iget-object v0, v4, Lyf;->a:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    if-lez v1, :cond_6

    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v1, v6, v8

    if-gez v1, :cond_8

    const-string v1, "ChatConnectionMonitor"

    const-string v6, "CHAT-LOG: SCCP DISCONNECTED and fetching conversation data from server"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iget-object v1, v4, Lyf;->b:Lyq;

    invoke-virtual {v1, v0}, Lyq;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v1, v4, Lyf;->c:Ljava/util/Map;

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lyf;->c:Ljava/util/Map;

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :goto_5
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v6, Lyf$1;

    invoke-direct {v6, v4, v0, v1}, Lyf$1;-><init>(Lyf;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/os/Handler;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_6
    iput-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbic;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v6, Lbcp;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v7, "SCCP DISCONNECTED"

    invoke-direct {v6, v0, v3, v7}, Lbcp;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v4, Lyf;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    const-string v1, "ChatConnectionMonitor"

    const-string v6, "CHAT-LOG: SCCP DISCONNECTED but enough time has passed since last SCCP message sent"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->l()V

    goto :goto_6

    .line 178
    :cond_9
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lale;

    invoke-virtual {v0, p0}, Lale;->a(Lald;)V

    .line 70
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Laxe;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    invoke-virtual {v0, p0}, Laxn;->a(Laxg;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService stopping session onDestroy"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lale;

    invoke-virtual {v0, p0}, Lale;->b(Lald;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    const-string v1, "SecureChatSession"

    const-string v2, "CHAT-LOG: SecureChatSession tearDown"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    iget-object v2, v1, Laxp;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Laxp;->interrupt()V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Thread;)V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    iget-object v2, v1, Laxn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Laxn;->interrupt()V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Thread;)V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession tornDown successfully."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

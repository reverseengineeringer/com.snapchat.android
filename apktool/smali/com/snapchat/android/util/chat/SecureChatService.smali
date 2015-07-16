.class public Lcom/snapchat/android/util/chat/SecureChatService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lalz;
.implements Layc;
.implements Laye;


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

.field private final mChatConnectionMonitor:Lzb;

.field private final mChatConversationManager:Lakx;

.field private final mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field public mIsAppInForeground:Z

.field public final mMainHandler:Landroid/os/Handler;

.field private final mNetworkStatusManager:Lama;

.field private final mReceivingMailman:Lzk;

.field public mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

.field private final mSendingMailman:Lzm;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 48
    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v3

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v4

    invoke-static {}, Lzk;->a()Lzk;

    move-result-object v5

    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/util/chat/SecureChatService;-><init>(Lama;Landroid/os/Handler;Lakx;Lzm;Lzk;Lzb;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lama;Landroid/os/Handler;Lakx;Lzm;Lzk;Lzb;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V
    .locals 1
    .param p1    # Lama;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lakx;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lzm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lzk;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lzb;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
        .annotation build Lchc;
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
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lama;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    .line 60
    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConversationManager:Lakx;

    .line 61
    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lzm;

    .line 62
    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mReceivingMailman:Lzk;

    .line 63
    iput-object p6, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lzb;

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

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatService;)Lzk;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mReceivingMailman:Lzk;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mIsAppInForeground:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b()V

    .line 145
    :cond_0
    return-void
.end method

.method public final a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 8
    .param p1    # Lbil;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lbji;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

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

    invoke-static {p1}, Laty;->a(Lbji;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lzm;

    invoke-virtual {v0, p1, p2}, Lzm;->a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

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

    invoke-virtual {p1}, Lbil;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lbji;)V
    .locals 6
    .param p1    # Lbji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-virtual {p1}, Lbji;->j()Lbji$a;

    move-result-object v0

    sget-object v1, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lbif;

    invoke-virtual {v0}, Lbif;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbif;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lbif;->g()Lbjb;

    move-result-object v0

    invoke-virtual {v0}, Lbjb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Layg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v4, v5, v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatService$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/chat/SecureChatService$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;Lbji;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public final a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 11
    .param p1    # Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;
        .annotation build Lchc;
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
    iget-object v4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lzm;

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConversationManager:Lakx;

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

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

    instance-of v9, v1, Lalb;

    if-eqz v9, :cond_1

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v9

    if-eqz v9, :cond_1

    check-cast v1, Lalb;

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

    check-cast v1, Lalb;

    invoke-virtual {v4, v0, v1, v2, v3}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSendingMailman:Lzm;

    invoke-virtual {v0}, Lzm;->c()V

    .line 174
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lzb;

    iput-boolean v2, v1, Lzb;->d:Z

    iget v0, v1, Lzb;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lzb;->e:I

    iget-object v0, v1, Lzb;->a:Lakx;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lzb;->a:Lakx;

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

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

    iget-object v3, v1, Lzb;->b:Lzm;

    invoke-virtual {v3, v0}, Lzm;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_2

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mChatConnectionMonitor:Lzb;

    iput-boolean v3, v4, Lzb;->d:Z

    iget-object v0, v4, Lzb;->a:Lakx;

    if-eqz v0, :cond_9

    iget-object v0, v4, Lzb;->a:Lakx;

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

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

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iget-object v1, v4, Lzb;->b:Lzm;

    invoke-virtual {v1, v0}, Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v1, v4, Lzb;->c:Ljava/util/Map;

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lzb;->c:Ljava/util/Map;

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :goto_5
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v6, Lzb$1;

    invoke-direct {v6, v4, v0, v1}, Lzb$1;-><init>(Lzb;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/os/Handler;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_6
    iput-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v6, Lbdp;

    sget-object v7, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v8, "SCCP DISCONNECTED"

    invoke-direct {v6, v7, v0, v3, v8}, Lbdp;-><init>(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;Ljava/lang/String;ZLjava/lang/String;)V

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

    iget-object v6, v4, Lzb;->c:Ljava/util/Map;

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
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
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lama;

    invoke-virtual {v0, p0}, Lama;->a(Lalz;)V

    .line 70
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Layc;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Layl;

    invoke-virtual {v0, p0}, Layl;->a(Laye;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mNetworkStatusManager:Lama;

    invoke-virtual {v0, p0}, Lama;->b(Lalz;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->mSecureChatSession:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Layn;

    iget-object v2, v1, Layn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Layn;->interrupt()V

    invoke-static {v1}, Lbhp;->a(Ljava/lang/Thread;)V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Layl;

    iget-object v2, v1, Layl;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Layl;->interrupt()V

    invoke-static {v1}, Lbhp;->a(Ljava/lang/Thread;)V

    iget-object v1, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 87
    return-void
.end method

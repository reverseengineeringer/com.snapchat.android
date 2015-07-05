.class public final Lyo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo$1;
    }
.end annotation


# static fields
.field private static b:Lyo;


# instance fields
.field protected a:Lya;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lyq;

.field private final d:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final e:Lyj;

.field private final f:Lyh;

.field private final g:Lyn;

.field private final h:Ltd;


# direct methods
.method private constructor <init>(Lyq;Lcom/snapchat/android/notification/AndroidNotificationManager;Lyj;Lyh;Lyn;Ltd;)V
    .locals 1
    .param p1    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/notification/AndroidNotificationManager;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lyj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lyh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lyn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Ltd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lyo;)V

    .line 83
    iput-object p1, p0, Lyo;->c:Lyq;

    .line 84
    iput-object p2, p0, Lyo;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 85
    iput-object p3, p0, Lyo;->e:Lyj;

    .line 86
    iput-object p4, p0, Lyo;->f:Lyh;

    .line 87
    iput-object p5, p0, Lyo;->g:Lyn;

    .line 88
    iput-object p6, p0, Lyo;->h:Ltd;

    .line 89
    return-void
.end method

.method public static declared-synchronized a()Lyo;
    .locals 8

    .prologue
    .line 92
    const-class v7, Lyo;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lyo;->b:Lyo;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lyo;

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v2

    new-instance v3, Lyj;

    invoke-direct {v3}, Lyj;-><init>()V

    invoke-static {}, Lyh;->a()Lyh;

    move-result-object v4

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v5

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lyo;-><init>(Lyq;Lcom/snapchat/android/notification/AndroidNotificationManager;Lyj;Lyh;Lyn;Ltd;)V

    sput-object v0, Lyo;->b:Lyo;

    .line 97
    :cond_0
    sget-object v0, Lyo;->b:Lyo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 101
    const-class v0, Lyo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lyo;->b:Lyo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lbii;)V
    .locals 20
    .param p1    # Lbii;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lbii;->j()Lbii$a;

    move-result-object v6

    .line 112
    move-object/from16 v0, p1

    instance-of v2, v0, Lbhk;

    if-eqz v2, :cond_3

    move-object/from16 v2, p1

    .line 113
    check-cast v2, Lbhk;

    .line 114
    invoke-virtual {v2}, Lbhk;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v2

    invoke-virtual {v2}, Lakc;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    goto :goto_0

    .line 116
    :cond_0
    const-string v2, "ReceivingMailman"

    const-string v5, "CHAT-LOG: We are connected to SCCP gateway"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    move-object v3, v4

    .line 136
    :goto_1
    if-eqz v3, :cond_1

    .line 138
    if-eqz v2, :cond_5

    invoke-static {v2}, Latm;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 213
    :cond_1
    :goto_2
    return-void

    .line 118
    :cond_2
    const-string v5, "ReceivingMailman"

    const-string v7, "CHAT-LOG: Failed to connect to SCCP gateway with reason: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lbhk;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v5, v7, v8}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    move-object v3, v4

    .line 121
    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lbhl;

    if-eqz v2, :cond_4

    move-object/from16 v2, p1

    .line 122
    check-cast v2, Lbhl;

    .line 123
    const-string v3, "ReceivingMailman"

    const-string v4, "CHAT-LOG: RECEIVED %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2}, Lbhl;->g()Lbib;

    move-result-object v3

    invoke-virtual {v3}, Lbib;->c()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lbhl;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 126
    :cond_4
    sget-object v2, Lbii$a;->CONVERSATION_MESSAGE_RESPONSE:Lbii$a;

    if-ne v6, v2, :cond_2e

    move-object/from16 v2, p1

    .line 127
    check-cast v2, Lbhm;

    invoke-virtual {v2}, Lbhm;->c()Ljava/lang/String;

    move-result-object v4

    .line 128
    if-eqz v4, :cond_2d

    .line 129
    invoke-static {v4}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_2d

    .line 131
    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    move-object v3, v4

    goto :goto_1

    .line 144
    :cond_5
    invoke-static {v3}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v18

    .line 145
    if-nez v18, :cond_6

    .line 151
    move-object/from16 v0, p1

    instance-of v2, v0, Lbhf;

    if-eqz v2, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->h:Ltd;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ltd;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    goto :goto_2

    .line 158
    :cond_6
    const/4 v5, 0x0

    .line 159
    const/16 v17, 0x1

    .line 161
    sget-object v2, Lyo$1;->a:[I

    invoke-virtual {v6}, Lbii$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move/from16 v2, v17

    move v3, v5

    .line 201
    :goto_3
    if-eqz v3, :cond_7

    .line 202
    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->w()V

    .line 205
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lbhl;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 206
    check-cast p1, Lbhl;

    .line 207
    invoke-virtual/range {p1 .. p1}, Lbhl;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual/range {p1 .. p1}, Lbhl;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v2, p1

    .line 163
    check-cast v2, Lbhf;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbhf;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    .line 164
    :cond_8
    :goto_4
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v17

    .line 165
    goto :goto_3

    .line 163
    :cond_9
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lbhf;->f()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(ZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbhf;->g()Lbib;

    move-result-object v4

    invoke-virtual {v4}, Lbib;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v4, v6, v10

    if-lez v4, :cond_b

    sub-long v4, v6, v10

    const-wide/16 v12, 0x1

    cmp-long v4, v4, v12

    if-lez v4, :cond_b

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    :goto_5
    cmp-long v9, v4, v6

    if-gez v9, :cond_a

    iget-object v9, v3, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9, v4, v5}, Lyh;->a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;J)V

    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_5

    :cond_a
    iget-object v4, v3, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "ChatGapDetector"

    const-string v5, "CHAT-LOG: Chat gap of %d starting with %d detected! Scheduling a conversation refresh"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    sub-long/2addr v6, v10

    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v12

    const/4 v6, 0x1

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v4, v5, v9}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v3, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lyh;->e:Landroid/os/Handler;

    new-instance v5, Lyh$1;

    invoke-direct {v5, v3, v8}, Lyh$1;-><init>(Lyh;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f40

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_6
    invoke-virtual {v2}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lbhf;->b()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lbhf;->a()Lbij;

    move-result-object v3

    invoke-virtual {v3}, Lbij;->d()Lbij$a;

    move-result-object v3

    :goto_7
    sget-object v4, Lyo$1;->b:[I

    invoke-virtual {v3}, Lbij$a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    new-instance v3, Lakj;

    invoke-direct {v3, v2}, Lakj;-><init>(Lbhf;)V

    move-object v2, v3

    :goto_8
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Lakb;->W()J

    move-result-wide v6

    iget-object v8, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v9

    invoke-static {v8, v9}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2}, Lakb;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v12

    sget-object v14, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/notification/AndroidNotificationManager$Type;ZLjava/lang/String;)V

    if-eqz v19, :cond_c

    invoke-static {}, Lajx;->bv()I

    move-result v3

    invoke-virtual {v2, v3}, Lakb;->c(I)V

    :cond_c
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lyo;->f:Lyh;

    invoke-virtual {v6, v3, v4, v5}, Lyh;->a(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->f:Lyh;

    invoke-virtual {v2, v3, v4, v5}, Lyh;->b(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->f:Lyh;

    invoke-virtual {v2, v3, v4, v5}, Lyh;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->f:Lyh;

    invoke-virtual {v2, v3}, Lyh;->a(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakb;

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_e
    const-string v3, "ChatGapDetector"

    const-string v4, "CHAT-LOG: Chat gap of %d starting with %d detected! Conversation refresh is already scheduled"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long/2addr v6, v10

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-wide/16 v8, 0x1

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_f
    sget-object v3, Lbij$a;->UNRECOGNIZED_VALUE:Lbij$a;

    goto/16 :goto_7

    :pswitch_1
    new-instance v3, Laki;

    invoke-direct {v3, v2}, Laki;-><init>(Lbhf;)V

    move-object v2, v3

    goto/16 :goto_8

    :pswitch_2
    new-instance v3, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v3, v2}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lbhf;)V

    move-object v2, v3

    goto/16 :goto_8

    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    new-instance v3, Lakh;

    invoke-direct {v3, v2}, Lakh;-><init>(Lbhf;)V

    move-object v2, v3

    goto/16 :goto_8

    :pswitch_4
    new-instance v3, Lakg;

    invoke-direct {v3, v2}, Lakg;-><init>(Lbhf;)V

    move-object v2, v3

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

    if-nez v19, :cond_13

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->g:Lyn;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    :goto_b
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    :cond_14
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbck;

    invoke-direct {v3}, Lbck;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbaz;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lbaz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "INCOMING_CHAT_DELAYED_OF_SEQUENCE_NUMBER_GAP"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v3, "pending-received-chats"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation$3;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation$3;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    :pswitch_5
    move-object/from16 v2, p1

    .line 167
    check-cast v2, Lbhm;

    invoke-virtual {v2}, Lbhm;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->h(Ljava/lang/String;)Lbhl;

    move-result-object v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->c:Lyq;

    iget-object v6, v3, Lyq;->b:Lnm;

    instance-of v3, v4, Lbhf;

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lbhm;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v4

    check-cast v3, Lbhf;

    invoke-virtual {v6, v3}, Lnm;->a(Lbhf;)V

    :cond_16
    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbhl;)V

    invoke-virtual {v4}, Lbhl;->j()Lbii$a;

    move-result-object v3

    invoke-virtual {v2}, Lbhm;->a()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_1e

    sget-object v6, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    if-ne v3, v6, :cond_1c

    invoke-virtual {v2}, Lbhm;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v3, v4

    check-cast v3, Lbhf;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Lbhf;->b(Ljava/lang/Long;)V

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v3}, Lbhf;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    invoke-virtual {v2}, Lbhm;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Ljava/lang/String;)Lakb;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v3, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v6, v7}, Lakb;->c(J)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    if-eqz v2, :cond_1b

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v6, Lbaz;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Lakb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_18
    :goto_d
    const-string v2, "ReceivingMailman"

    const-string v3, "CHAT-LOG: SUCCEEDED sending message %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v3, v6}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_19
    :goto_e
    const/4 v2, 0x0

    move v3, v5

    .line 171
    goto/16 :goto_3

    :cond_1a
    move-object v3, v4

    .line 167
    check-cast v3, Lbhf;

    invoke-virtual {v6, v3}, Lnm;->b(Lbhf;)V

    goto/16 :goto_c

    :cond_1b
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbaz;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v3, v6}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1c
    sget-object v2, Lbii$a;->MESSAGE_STATE:Lbii$a;

    if-ne v3, v2, :cond_1d

    move-object v2, v4

    check-cast v2, Lbik;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbik;Z)Lakb;

    goto :goto_d

    :cond_1d
    sget-object v2, Lbii$a;->MESSAGE_RELEASE:Lbii$a;

    if-ne v3, v2, :cond_18

    move-object v2, v4

    check-cast v2, Lbit;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbit;)V

    goto :goto_d

    :cond_1e
    instance-of v3, v4, Lbhf;

    if-eqz v3, :cond_1f

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->k()V

    :cond_1f
    invoke-virtual {v2}, Lbhm;->e()Lbhm$a;

    move-result-object v3

    sget-object v6, Lbhm$a;->NEED_AUTHENTICATION:Lbhm$a;

    if-ne v3, v6, :cond_20

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    if-eqz v3, :cond_21

    invoke-virtual {v4}, Lbhl;->g()Lbib;

    move-result-object v6

    invoke-virtual {v6, v3}, Lbib;->a(Lbix;)V

    :cond_20
    const-string v3, "ReceivingMailman"

    const-string v6, "CHAT-LOG: FAILED sending message %s with reason %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lbhm;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->c:Lyq;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Lyq;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_e

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->c:Lyq;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v3}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;Z)V

    goto :goto_e

    :pswitch_6
    move-object/from16 v2, p1

    .line 173
    check-cast v2, Lbik;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbik;Z)Lakb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbik;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    if-nez v3, :cond_22

    const-string v2, "ReceivingMailman"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chat is null. Conversation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :goto_f
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v17

    .line 175
    goto/16 :goto_3

    .line 173
    :cond_22
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v4, Lbaz;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Lakb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_7
    move-object/from16 v2, p1

    .line 177
    check-cast v2, Lbir;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v2}, Lbir;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v7

    invoke-virtual {v2}, Lbir;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    if-eqz v7, :cond_24

    if-eqz v3, :cond_24

    invoke-static {}, Lasu;->b()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lbir;->d()Lbic;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbic;

    :goto_10
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, v18

    iget-boolean v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eq v8, v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->c:Lyq;

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v7, v6}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbir;->g()Lbib;

    move-result-object v4

    invoke-virtual {v4}, Lbib;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6, v7}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbcp;

    invoke-virtual {v2}, Lbir;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v6, "Received presence message."

    invoke-direct {v4, v5, v2, v6}, Lbcp;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 178
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v17

    .line 179
    goto/16 :goto_3

    .line 177
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbic;

    goto :goto_10

    :pswitch_8
    move-object/from16 v2, p1

    .line 181
    check-cast v2, Lbit;

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lyo;->e:Lyj;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v2}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit;)V

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v4, :cond_25

    invoke-static/range {v18 .. v18}, Lyj;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_25
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lbit;->g()Lbib;

    move-result-object v3

    invoke-virtual {v3}, Lbib;->f()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbit;->g()Lbib;

    move-result-object v2

    invoke-virtual {v2}, Lbib;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    :cond_26
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lben;

    invoke-direct {v3}, Lben;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 182
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v17

    .line 183
    goto/16 :goto_3

    .line 181
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_9
    move-object/from16 v2, p1

    .line 185
    check-cast v2, Lbjb;

    invoke-virtual {v2}, Lbjb;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->i(Ljava/lang/String;)Laji;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->f:Lyh;

    invoke-virtual {v2}, Lbjb;->g()Lbib;

    move-result-object v6

    invoke-virtual {v6}, Lbib;->e()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6, v7}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    if-eqz v4, :cond_27

    invoke-virtual {v2}, Lbjb;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_28

    const/4 v3, 0x1

    :goto_11
    invoke-virtual {v4, v3}, Laji;->d(Z)V

    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_29

    invoke-virtual {v2}, Lbjb;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Laji;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    :goto_12
    invoke-virtual {v2}, Lbjb;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Laji;->b(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->g:Lyn;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbaz;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v4}, Laji;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lben;

    invoke-direct {v3}, Lben;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_27
    move/from16 v2, v17

    move v3, v5

    .line 189
    goto/16 :goto_3

    .line 185
    :cond_28
    const/4 v3, 0x0

    goto :goto_11

    :cond_29
    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2a

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Laji;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_12

    :cond_2a
    invoke-virtual {v2}, Lbjb;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Laji;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_12

    :cond_2b
    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Laji;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_12

    :pswitch_a
    move-object/from16 v3, p1

    .line 191
    check-cast v3, Lbha;

    move-object/from16 v0, p0

    iget-object v2, v0, Lyo;->f:Lyh;

    invoke-virtual {v3}, Lbha;->g()Lbib;

    move-result-object v4

    invoke-virtual {v4}, Lbib;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4, v5}, Lyh;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    new-instance v2, Lbau;

    invoke-virtual {v3}, Lbha;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lbha;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v3, v18

    invoke-direct/range {v2 .. v7}, Lbau;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V

    invoke-virtual {v8, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 192
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v17

    .line 193
    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v2, p1

    .line 195
    check-cast v2, Lbhb;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const-string v4, "ReceivingMailman"

    const-string v6, "CASH-LOG: Got a state change message "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->a:Lya;

    invoke-virtual {v2}, Lbhb;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v6, Lya$8;

    move-object/from16 v0, v18

    invoke-direct {v6, v3, v0, v2}, Lya$8;-><init>(Lya;Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    new-instance v3, Lqr;

    invoke-direct {v3, v2, v4}, Lqr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lbhc;

    invoke-virtual {v3, v2, v6}, Lqr;->a(Ljava/lang/Class;Lts$b;)V

    invoke-virtual {v3}, Lqr;->f()V

    .line 197
    const/4 v2, 0x0

    move v3, v5

    goto/16 :goto_3

    :cond_2d
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_2e
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

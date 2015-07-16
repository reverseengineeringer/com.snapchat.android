.class public final Lzk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzk$2;
    }
.end annotation


# static fields
.field private static b:Lzk;


# instance fields
.field protected a:Lyw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lzm;

.field private final d:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final e:Lzf;

.field private final f:Lzd;

.field private final g:Lzj;

.field private final h:Ltt;

.field private final i:Lnz;

.field private final j:Log;


# direct methods
.method private constructor <init>(Lzm;Lcom/snapchat/android/notification/AndroidNotificationManager;Lzf;Lzd;Lzj;Ltt;Lnz;Log;)V
    .locals 1
    .param p1    # Lzm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/notification/AndroidNotificationManager;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lzf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lzd;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lzj;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Ltt;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lnz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p8    # Log;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lzk;)V

    .line 95
    iput-object p1, p0, Lzk;->c:Lzm;

    .line 96
    iput-object p2, p0, Lzk;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 97
    iput-object p3, p0, Lzk;->e:Lzf;

    .line 98
    iput-object p4, p0, Lzk;->f:Lzd;

    .line 99
    iput-object p5, p0, Lzk;->g:Lzj;

    .line 100
    iput-object p6, p0, Lzk;->h:Ltt;

    .line 101
    iput-object p7, p0, Lzk;->i:Lnz;

    .line 102
    iput-object p8, p0, Lzk;->j:Log;

    .line 103
    return-void
.end method

.method public static declared-synchronized a()Lzk;
    .locals 10

    .prologue
    .line 106
    const-class v9, Lzk;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lzk;->b:Lzk;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lzk;

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v2

    new-instance v3, Lzf;

    invoke-direct {v3}, Lzf;-><init>()V

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v4

    invoke-static {}, Lzj;->a()Lzj;

    move-result-object v5

    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v6

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v7

    invoke-static {}, Log;->a()Log;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lzk;-><init>(Lzm;Lcom/snapchat/android/notification/AndroidNotificationManager;Lzf;Lzd;Lzj;Ltt;Lnz;Log;)V

    sput-object v0, Lzk;->b:Lzk;

    .line 111
    :cond_0
    sget-object v0, Lzk;->b:Lzk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 115
    const-class v0, Lzk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lzk;->b:Lzk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lbji;)V
    .locals 22
    .param p1    # Lbji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-virtual/range {p1 .. p1}, Lbji;->j()Lbji$a;

    move-result-object v5

    .line 126
    move-object/from16 v0, p1

    instance-of v2, v0, Lbik;

    if-eqz v2, :cond_3

    move-object/from16 v2, p1

    .line 127
    check-cast v2, Lbik;

    .line 128
    invoke-virtual {v2}, Lbik;->a()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-virtual {v2}, Lakx;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    goto :goto_0

    :cond_0
    move-object v2, v3

    move-object v3, v4

    .line 150
    :goto_1
    if-eqz v3, :cond_1

    .line 152
    if-eqz v2, :cond_5

    invoke-static {v2}, Lauk;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 231
    :cond_1
    :goto_2
    return-void

    .line 132
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lbik;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    move-object v2, v3

    move-object v3, v4

    .line 135
    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lbil;

    if-eqz v2, :cond_4

    move-object/from16 v2, p1

    .line 136
    check-cast v2, Lbil;

    .line 137
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 138
    invoke-virtual {v2}, Lbil;->g()Lbjb;

    move-result-object v3

    invoke-virtual {v3}, Lbjb;->c()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lbil;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 140
    :cond_4
    sget-object v2, Lbji$a;->CONVERSATION_MESSAGE_RESPONSE:Lbji$a;

    if-ne v5, v2, :cond_30

    move-object/from16 v2, p1

    .line 141
    check-cast v2, Lbim;

    invoke-virtual {v2}, Lbim;->c()Ljava/lang/String;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_2f

    .line 143
    invoke-static {v4}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_2f

    .line 145
    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    move-object v3, v4

    goto :goto_1

    .line 158
    :cond_5
    invoke-static {v3}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v20

    .line 159
    if-nez v20, :cond_6

    .line 165
    move-object/from16 v0, p1

    instance-of v2, v0, Lbif;

    if-eqz v2, :cond_1

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->h:Ltt;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ltt;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    goto :goto_2

    .line 172
    :cond_6
    const/16 v19, 0x0

    .line 173
    const/16 v18, 0x1

    .line 175
    sget-object v2, Lzk$2;->a:[I

    invoke-virtual {v5}, Lbji$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move/from16 v2, v18

    move/from16 v3, v19

    .line 219
    :goto_3
    if-eqz v3, :cond_7

    .line 220
    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->x()V

    .line 223
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lbil;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 224
    check-cast p1, Lbil;

    .line 225
    invoke-virtual/range {p1 .. p1}, Lbil;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual/range {p1 .. p1}, Lbil;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v2, p1

    .line 177
    check-cast v2, Lbif;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbif;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lbif;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    .line 178
    :cond_8
    :goto_4
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v18

    .line 179
    goto :goto_3

    .line 177
    :cond_9
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lbif;->f()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(ZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbif;->g()Lbjb;

    move-result-object v4

    invoke-virtual {v4}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4, v5}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbif;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    move-object/from16 v0, v20

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

    iget-object v9, v3, Lzd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9, v4, v5}, Lzd;->a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;J)V

    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_5

    :cond_a
    iget-object v4, v3, Lzd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-long/2addr v6, v10

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, v3, Lzd;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lzd;->e:Landroid/os/Handler;

    new-instance v5, Lzd$1;

    invoke-direct {v5, v3, v8}, Lzd$1;-><init>(Lzd;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f40

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_6
    invoke-virtual {v2}, Lbif;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lbif;->b()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lbif;->a()Lbjj;

    move-result-object v3

    invoke-virtual {v3}, Lbjj;->d()Lbjj$a;

    move-result-object v3

    :goto_7
    sget-object v4, Lzk$2;->b:[I

    invoke-virtual {v3}, Lbjj$a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    new-instance v3, Lale;

    invoke-direct {v3, v2}, Lale;-><init>(Lbif;)V

    move-object/from16 v17, v3

    :goto_8
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Lakw;->U()J

    move-result-wide v6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v8

    invoke-static {v2, v8}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Lakw;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lakw;->t()J

    move-result-wide v12

    sget-object v14, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/notification/AndroidNotificationManager$Type;ZLjava/lang/String;)V

    if-eqz v19, :cond_c

    invoke-static {}, Lakr;->bs()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lakw;->c(I)V

    :cond_c
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lakw;->t()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->f:Lzd;

    invoke-virtual {v2, v3, v4, v5}, Lzd;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->f:Lzd;

    invoke-virtual {v2, v3, v4, v5}, Lzd;->b(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->f:Lzd;

    invoke-virtual {v2, v3, v4, v5}, Lzd;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->f:Lzd;

    invoke-virtual {v2, v3}, Lzd;->a(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v20

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

    check-cast v2, Lakw;

    invoke-virtual {v2}, Lakw;->t()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-long/2addr v6, v10

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_6

    :cond_f
    sget-object v3, Lbjj$a;->UNRECOGNIZED_VALUE:Lbjj$a;

    goto/16 :goto_7

    :pswitch_1
    new-instance v3, Lald;

    invoke-direct {v3, v2}, Lald;-><init>(Lbif;)V

    move-object/from16 v17, v3

    goto/16 :goto_8

    :pswitch_2
    new-instance v3, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v3, v2}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lbif;)V

    move-object/from16 v17, v3

    goto/16 :goto_8

    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    new-instance v3, Lalc;

    invoke-direct {v3, v2}, Lalc;-><init>(Lbif;)V

    move-object/from16 v17, v3

    goto/16 :goto_8

    :pswitch_4
    new-instance v3, Lalb;

    invoke-direct {v3, v2}, Lalb;-><init>(Lbif;)V

    move-object/from16 v17, v3

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_11
    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    :cond_12
    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->v()V

    if-nez v19, :cond_13

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    :cond_13
    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->RECEIVED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbdv;

    invoke-direct {v3}, Lbdv;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    :cond_14
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbdk;

    invoke-direct {v3}, Lbdk;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbca;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lbca;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "INCOMING_CHAT_DELAYED_OF_SEQUENCE_NUMBER_GAP"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v3, "pending-received-chats"

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation$3;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation$3;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    :pswitch_5
    move-object/from16 v2, p1

    .line 181
    check-cast v2, Lbim;

    invoke-virtual {v2}, Lbim;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->h(Ljava/lang/String;)Lbil;

    move-result-object v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->c:Lzm;

    iget-object v5, v3, Lzm;->b:Lod;

    instance-of v3, v4, Lbif;

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lbim;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v4

    check-cast v3, Lbif;

    invoke-virtual {v5, v3}, Lod;->a(Lbif;)V

    :cond_16
    :goto_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbil;)V

    invoke-virtual {v4}, Lbil;->j()Lbji$a;

    move-result-object v3

    invoke-virtual {v2}, Lbim;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    if-ne v3, v5, :cond_1c

    invoke-virtual {v2}, Lbim;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v3, v4

    check-cast v3, Lbif;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbif;->b(Ljava/lang/Long;)V

    move-object/from16 v0, v20

    iput-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v3}, Lbif;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbif;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    invoke-virtual {v2}, Lbim;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Ljava/lang/String;)Lakw;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v3, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v6, v7}, Lakw;->c(J)V

    sget-object v3, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    if-eqz v2, :cond_1b

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v5, Lbca;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Lakw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_18
    :goto_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 183
    :cond_19
    :goto_e
    const/4 v2, 0x0

    move/from16 v3, v19

    .line 185
    goto/16 :goto_3

    :cond_1a
    move-object v3, v4

    .line 181
    check-cast v3, Lbif;

    invoke-virtual {v5, v3}, Lod;->b(Lbif;)V

    goto/16 :goto_c

    :cond_1b
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbca;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v3, v5}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1c
    sget-object v2, Lbji$a;->MESSAGE_STATE:Lbji$a;

    if-ne v3, v2, :cond_1d

    move-object v2, v4

    check-cast v2, Lbjk;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbjk;Z)Lakw;

    goto :goto_d

    :cond_1d
    sget-object v2, Lbji$a;->MESSAGE_RELEASE:Lbji$a;

    if-ne v3, v2, :cond_18

    move-object v2, v4

    check-cast v2, Lbju;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbju;)V

    goto :goto_d

    :cond_1e
    instance-of v3, v4, Lbif;

    if-eqz v3, :cond_1f

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->k()V

    :cond_1f
    invoke-virtual {v2}, Lbim;->e()Lbim$a;

    move-result-object v3

    sget-object v5, Lbim$a;->NEED_AUTHENTICATION:Lbim$a;

    if-ne v3, v5, :cond_20

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    if-eqz v3, :cond_21

    invoke-virtual {v4}, Lbil;->g()Lbjb;

    move-result-object v5

    invoke-virtual {v5, v3}, Lbjb;->a(Lbjy;)V

    :cond_20
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lbim;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->c:Lzm;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lzm;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_e

    :cond_21
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v4, v2}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;Z)V

    goto :goto_e

    :pswitch_6
    move-object/from16 v2, p1

    .line 187
    check-cast v2, Lbjk;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbjk;Z)Lakw;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbjk;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v6, v7}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    if-nez v3, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chat is null. Conversation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :goto_f
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v18

    .line 189
    goto/16 :goto_3

    .line 187
    :cond_22
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v4, Lbca;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Lakw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_f

    :pswitch_7
    move-object/from16 v2, p1

    .line 191
    check-cast v2, Lbjr;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v2}, Lbjr;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v7

    invoke-virtual {v2}, Lbjr;->b()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    if-eqz v7, :cond_24

    if-eqz v3, :cond_24

    invoke-static {}, Latt;->b()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lbjr;->d()Lbjc;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    :goto_10
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, v20

    iget-boolean v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eq v8, v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->c:Lzm;

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    move-object/from16 v0, v20

    iget-boolean v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4, v7, v6}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbjr;->g()Lbjb;

    move-result-object v4

    invoke-virtual {v4}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v6, v7}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbdp;

    sget-object v6, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-virtual {v2}, Lbjr;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v7, "Received presence message."

    invoke-direct {v4, v6, v5, v2, v7}, Lbdp;-><init>(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 192
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v18

    .line 193
    goto/16 :goto_3

    .line 191
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    goto :goto_10

    :pswitch_8
    move-object/from16 v18, p1

    .line 195
    check-cast v18, Lbjt;

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v21

    monitor-enter v21

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lbjt;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v2, "r"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_25
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v2

    if-nez v2, :cond_26

    new-instance v2, Laka;

    invoke-virtual/range {v18 .. v18}, Lbjt;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Lbjt;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Lbjt;->l()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Lbjt;->e()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lbjt;->c()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lavr;->a(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lbjt;->g()Lbjb;

    move-result-object v13

    invoke-virtual {v13}, Lbjb;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lbjt;->m()Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {v18 .. v18}, Lbjt;->f()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v18 .. v18}, Lbjt;->n()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Laka;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Laka;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Laka;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v3, "sccp"

    invoke-static {v2, v3}, Lnz;->a(Laka;Ljava/lang/String;)V

    invoke-static {v2}, Log;->b(Laka;)V

    sget-object v3, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->RECEIVED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    new-instance v3, Lzk$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1, v2}, Lzk$1;-><init>(Lzk;Lcom/snapchat/android/model/chat/ChatConversation;Laka;)V

    invoke-static {v3}, Lbhp;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbca;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbdv;

    invoke-direct {v3}, Lbdv;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_11
    monitor-exit v21

    .line 196
    const/4 v2, 0x0

    move/from16 v3, v19

    .line 197
    goto/16 :goto_3

    .line 195
    :cond_26
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lbjt;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Lbjt;->g()Lbjb;

    move-result-object v4

    invoke-virtual {v4}, Lbjb;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_11

    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_9
    move-object/from16 v2, p1

    .line 199
    check-cast v2, Lbju;

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju;)V

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v4, :cond_27

    invoke-static/range {v20 .. v20}, Lzf;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_27
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Lbju;->g()Lbjb;

    move-result-object v3

    invoke-virtual {v3}, Lbjb;->f()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbju;->g()Lbjb;

    move-result-object v2

    invoke-virtual {v2}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4, v5}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    :cond_28
    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 200
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v18

    .line 201
    goto/16 :goto_3

    .line 199
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :pswitch_a
    move-object/from16 v2, p1

    .line 203
    check-cast v2, Lbkc;

    invoke-virtual {v2}, Lbkc;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->i(Ljava/lang/String;)Lake;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->f:Lzd;

    invoke-virtual {v2}, Lbkc;->g()Lbjb;

    move-result-object v5

    invoke-virtual {v5}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v6, v7}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    if-eqz v4, :cond_29

    invoke-virtual {v2}, Lbkc;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Lbkc;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2a

    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v4, v3}, Lake;->d(Z)V

    invoke-virtual {v2}, Lbkc;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2b

    invoke-virtual {v2}, Lbkc;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Lake;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    :goto_13
    invoke-virtual {v2}, Lbkc;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lake;->b(J)V

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbca;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v4}, Lake;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_29
    move/from16 v2, v18

    move/from16 v3, v19

    .line 207
    goto/16 :goto_3

    .line 203
    :cond_2a
    const/4 v3, 0x0

    goto :goto_12

    :cond_2b
    invoke-virtual {v2}, Lbkc;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2c

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Lake;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_13

    :cond_2c
    invoke-virtual {v2}, Lbkc;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Lake;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_13

    :cond_2d
    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v4, v3}, Lake;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_13

    :pswitch_b
    move-object/from16 v3, p1

    .line 209
    check-cast v3, Lbia;

    move-object/from16 v0, p0

    iget-object v2, v0, Lzk;->f:Lzd;

    invoke-virtual {v3}, Lbia;->g()Lbjb;

    move-result-object v4

    invoke-virtual {v4}, Lbjb;->e()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4, v5}, Lzd;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    new-instance v2, Lbbv;

    invoke-virtual {v3}, Lbia;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lbia;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v3, v20

    invoke-direct/range {v2 .. v7}, Lbbv;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V

    invoke-virtual {v8, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 210
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, v18

    .line 211
    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v2, p1

    .line 213
    check-cast v2, Lbib;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lzk;->a:Lyw;

    invoke-virtual {v2}, Lbib;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v5, Lyw$8;

    move-object/from16 v0, v20

    invoke-direct {v5, v3, v0, v2}, Lyw$8;-><init>(Lyw;Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    new-instance v3, Lrh;

    invoke-direct {v3, v2, v4}, Lrh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lbic;

    invoke-virtual {v3, v2, v5}, Lrh;->registerCallback(Ljava/lang/Class;Lui$b;)V

    invoke-virtual {v3}, Lrh;->execute()V

    .line 215
    const/4 v2, 0x0

    move/from16 v3, v19

    goto/16 :goto_3

    :cond_2f
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_30
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1

    .line 175
    nop

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
        :pswitch_c
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

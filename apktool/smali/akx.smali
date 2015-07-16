.class public final Lakx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvl;
.implements Lvq;


# annotations
.annotation runtime Lbxs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvl",
        "<",
        "Lbid;",
        ">;",
        "Lvq;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatConversationManager"

.field private static sInstance:Lakx;


# instance fields
.field private final mChatMessageReleaser:Lzf;

.field private final mConversationUpdater:Lzc;

.field public final mConversations:Ljava/util/List;
    .annotation runtime Lbxp;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field public final mConversationsForListView:Lauu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauu",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field final mFeedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field public mIterToken:Ljava/lang/String;

.field private final mSendingMailman:Lzm;


# direct methods
.method private constructor <init>(Lzc;Lzf;Lzm;)V
    .locals 3
    .param p1    # Lzc;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lzf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lzm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakx;->mFeedItems:Ljava/util/List;

    .line 101
    new-instance v0, Lauu;

    invoke-direct {v0}, Lauu;-><init>()V

    iput-object v0, p0, Lakx;->mConversationsForListView:Lauu;

    .line 127
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    iput-object p1, p0, Lakx;->mConversationUpdater:Lzc;

    .line 129
    iput-object p2, p0, Lakx;->mChatMessageReleaser:Lzf;

    .line 130
    iput-object p3, p0, Lakx;->mSendingMailman:Lzm;

    .line 131
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakx;->mIterToken:Ljava/lang/String;

    .line 132
    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v0

    iput-object p0, v0, Lzb;->a:Lakx;

    .line 133
    return-void
.end method

.method public static declared-synchronized c()Lakx;
    .locals 10

    .prologue
    .line 109
    const-class v9, Lakx;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lakx;->sInstance:Lakx;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lzc;

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v2

    invoke-static {}, Lzj;->a()Lzj;

    move-result-object v3

    invoke-static {}, Laki;->a()Laki;

    move-result-object v4

    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v5

    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v6

    invoke-static {}, Log;->a()Log;

    move-result-object v7

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lzc;-><init>(Lzm;Lzd;Lzj;Laki;Ltt;Lzb;Log;Lnz;)V

    .line 114
    new-instance v1, Lakx;

    new-instance v2, Lzf;

    invoke-direct {v2}, Lzf;-><init>()V

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lakx;-><init>(Lzc;Lzf;Lzm;)V

    sput-object v1, Lakx;->sInstance:Lakx;

    .line 117
    :cond_0
    sget-object v0, Lakx;->sInstance:Lakx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized d()V
    .locals 2

    .prologue
    .line 121
    const-class v0, Lakx;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lakx;->sInstance:Lakx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v0

    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 275
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lakx;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, p1, p2, v0, v0}, Lakx;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 309
    iget-object v2, p0, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v2

    .line 310
    const/4 v1, 0x0

    .line 311
    :try_start_0
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    .line 312
    if-eqz v3, :cond_4

    .line 313
    invoke-static {v3, p1}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 315
    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    :goto_0
    if-nez v0, :cond_2

    .line 321
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {v0, v3, p1}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lakx;->mSendingMailman:Lzm;

    invoke-virtual {v1, v0}, Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_1
    iget-object v1, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lakx;->g()V

    .line 323
    iput-boolean p3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 324
    iput-boolean p4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 327
    :cond_2
    :goto_1
    monitor-exit v2

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lakx;->mFeedItems:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;ZZ)V
    .locals 14
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbid;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 571
    iget-object v8, p0, Lakx;->mConversationUpdater:Lzc;

    iget-object v9, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lbid;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lbid;->k()Lbie;

    move-result-object v2

    invoke-virtual {v2}, Lbie;->a()Lbjy;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbjy;)V

    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v8, p1, v0, v1}, Lzc;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;Z)V

    invoke-virtual/range {p2 .. p2}, Lbid;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lbid;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lbid;->b()Lbiy;

    move-result-object v2

    invoke-static {v2}, Lavr;->a(Lbiy;)Lcom/snapchat/android/model/Snap;

    move-result-object v3

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    :cond_2
    iput-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lbid;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual/range {p2 .. p2}, Lbid;->f()Lbic;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/model/CashTransaction$a;->a(Lbic;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    :cond_4
    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lbid;->d()Lbjd;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lbjd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v10}, Lbjd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object v5, v4

    move-object v6, v2

    move-object v2, v3

    :goto_2
    invoke-virtual {v10}, Lbjd;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lbjd;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v12

    invoke-static {v7}, Lbjj$a;->a(Ljava/lang/String;)Lbjj$a;

    move-result-object v7

    sget-object v11, Lbjj$a;->UNRECOGNIZED_VALUE:Lbjj$a;

    if-ne v7, v11, :cond_6

    sget-object v7, Lbjj$a;->TEXT:Lbjj$a;

    :cond_6
    sget-object v11, Layg$2;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    invoke-virtual {v7}, Lbjj$a;->ordinal()I

    move-result v7

    aget v7, v11, v7

    packed-switch v7, :pswitch_data_0

    new-instance v7, Lald$a;

    invoke-direct {v7, v5, v2}, Lald$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lald$a;->a()Lald;

    move-result-object v5

    :goto_3
    iput-object v6, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v5, v12, v13}, Lakw;->c(J)V

    invoke-virtual {v10}, Lbjd;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-virtual {v10}, Lbjd;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v12

    cmp-long v6, v6, v12

    if-lez v6, :cond_e

    invoke-virtual {v10}, Lbjd;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakw;->a(J)V

    :cond_7
    :goto_4
    if-eqz v5, :cond_9

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lakw;->U()J

    move-result-wide v6

    invoke-virtual {v2}, Lakw;->U()J

    move-result-wide v10

    cmp-long v3, v6, v10

    if-lez v3, :cond_11

    :cond_8
    iput-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    :cond_9
    :goto_5
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-nez v3, :cond_12

    move-object v3, v2

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    instance-of v4, v2, Laka;

    if-eqz v4, :cond_b

    instance-of v4, v3, Laka;

    if-eqz v4, :cond_b

    check-cast v2, Laka;

    invoke-virtual {v2}, Laka;->A()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_b
    iput-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->am()Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object v5, v3

    move-object v6, v2

    move-object v2, v4

    goto/16 :goto_2

    :pswitch_0
    new-instance v7, Lcom/snapchat/android/model/chat/ChatMedia$a;

    invoke-direct {v7, v5, v2}, Lcom/snapchat/android/model/chat/ChatMedia$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatMedia$a;->a()Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    goto/16 :goto_3

    :pswitch_1
    new-instance v7, Lalb$a;

    invoke-direct {v7, v5, v2}, Lalb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lalb$a;->a()Lalb;

    move-result-object v5

    goto/16 :goto_3

    :cond_e
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    iget-wide v12, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_f

    invoke-virtual {v10}, Lbjd;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakw;->a(J)V

    goto/16 :goto_4

    :cond_f
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    invoke-virtual {v10}, Lbjd;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakw;->a(J)V

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v5}, Lakw;->U()J

    move-result-wide v6

    invoke-virtual {v2}, Lakw;->U()J

    move-result-wide v10

    cmp-long v3, v6, v10

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lakw;->o()Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    goto/16 :goto_5

    :cond_12
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v6

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v10

    cmp-long v5, v6, v10

    if-lez v5, :cond_1f

    :goto_7
    move-object v3, v2

    goto/16 :goto_6

    :cond_13
    move-object v3, v2

    :cond_14
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    :cond_15
    invoke-virtual/range {p2 .. p2}, Lbid;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    iget-object v2, v8, Lzc;->b:Lzd;

    iget-object v2, v2, Lzd;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbca;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz p4, :cond_18

    const/4 v2, 0x1

    :goto_8
    invoke-direct {v4, v9, v2}, Lbca;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    if-eqz p3, :cond_16

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;)I

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lbid;->o()Lbin;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lbin;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_9
    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1a

    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_1e

    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v2

    iget-boolean v2, v2, Lzb;->d:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    const/4 v2, 0x0

    iput v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    iget-object v3, v8, Lzc;->a:Lzm;

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v6

    iget-object v7, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    monitor-enter v6

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v10, v2, Lakw;

    if-eqz v10, :cond_17

    check-cast v2, Lakw;

    iget-object v10, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v2}, Lakw;->i()Lbif;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Lbif;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-lez v10, :cond_17

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, p1, v2, v10, v11}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V

    goto :goto_b

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_19
    const-wide/16 v2, 0x0

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    goto :goto_a

    :cond_1b
    const/4 v2, 0x0

    goto :goto_a

    :cond_1c
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, p1}, Lzm;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_1d
    :goto_c
    iget-object v2, v8, Lzc;->a:Lzm;

    invoke-virtual {v2, p1}, Lzm;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 572
    return-void

    .line 571
    :cond_1e
    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    goto :goto_c

    :cond_1f
    move-object v2, v3

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 608
    invoke-virtual {p0, p1, v5, v5, v4}, Lakx;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_0

    .line 613
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 614
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-static {}, Lakr;->F()Ljava/lang/String;

    move-result-object v2

    .line 619
    if-eqz v2, :cond_0

    .line 623
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 624
    aget-object v3, v0, v5

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 625
    aget-object v0, v0, v4

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 627
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v4, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>([B[B)V

    .line 628
    const-string v2, "no dataId provided"

    invoke-virtual {v4, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 634
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lakx$3;

    invoke-direct {v0, p0}, Lakx$3;-><init>(Lakx;)V

    invoke-virtual {v0}, Lakx$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 636
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbif;

    .line 639
    new-instance v4, Lbih;

    invoke-direct {v4}, Lbih;-><init>()V

    invoke-virtual {v4, v0}, Lbih;->a(Lbif;)Lbih;

    move-result-object v0

    .line 640
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 642
    :cond_2
    new-instance v0, Lbie;

    invoke-direct {v0}, Lbie;-><init>()V

    invoke-virtual {v0, v2}, Lbie;->a(Ljava/util/List;)Lbie;

    move-result-object v0

    .line 643
    new-instance v2, Lbid;

    invoke-direct {v2}, Lbid;-><init>()V

    invoke-virtual {v2, v0}, Lbid;->a(Lbie;)Lbid;

    move-result-object v0

    .line 646
    iget-object v2, p0, Lakx;->mConversationUpdater:Lzc;

    invoke-virtual {v2, v1, v0, v5}, Lzc;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;Z)V

    .line 649
    invoke-virtual {p0}, Lakx;->g()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbid;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lakx;->a(Ljava/util/List;ZZZ)V

    .line 460
    return-void
.end method

.method public final a(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbid;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lakx;->a(Ljava/util/List;ZZZ)V

    .line 454
    return-void
.end method

.method public final a(Ljava/util/List;ZZZ)V
    .locals 10
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbid;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v6, p0, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v6

    .line 470
    :try_start_0
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    .line 471
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    invoke-virtual {v0}, Lbid;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    .line 473
    if-eqz p2, :cond_3

    cmp-long v0, v8, v4

    if-lez v0, :cond_3

    move v5, v1

    .line 477
    :goto_2
    const-wide v2, 0x7fffffffffffffffL

    .line 478
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 480
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    .line 481
    invoke-virtual {v0}, Lbid;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_4

    .line 484
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v0, v4, v9}, Lakx;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;ZZ)V

    .line 491
    iget-boolean v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_1

    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v9, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v9, v0, v4

    .line 494
    iget-object v0, p0, Lakx;->mChatMessageReleaser:Lzf;

    sget-object v4, Lbju$a;->DELETE:Lbju$a;

    invoke-virtual {v0, v1, v4}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    .line 497
    :cond_1
    iget-boolean v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_b

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    move-object v4, v1

    .line 511
    :goto_4
    if-eqz v4, :cond_a

    .line 512
    iget-wide v0, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 513
    cmp-long v9, v0, v2

    if-gez v9, :cond_9

    .line 516
    :goto_5
    iget-object v2, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move-wide v2, v0

    .line 518
    goto :goto_3

    .line 470
    :cond_2
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_1

    :cond_3
    move v5, v2

    .line 473
    goto :goto_2

    .line 503
    :cond_4
    invoke-static {v0}, Lavj;->a(Lbid;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_b

    .line 506
    iget-object v1, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    .line 507
    goto :goto_4

    .line 519
    :cond_5
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdv;

    invoke-direct {v1}, Lbdv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lakx;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 524
    if-eqz v5, :cond_7

    .line 525
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 526
    :cond_6
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 530
    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->C()Z

    move-result v4

    if-nez v4, :cond_6

    .line 532
    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 541
    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v4, :cond_6

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    sget-object v4, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_7
    if-eqz p3, :cond_8

    .line 550
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    invoke-virtual {v0}, Lbid;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakx;->mIterToken:Ljava/lang/String;

    .line 551
    invoke-virtual {p0}, Lakx;->e()V

    .line 554
    :cond_8
    invoke-virtual {p0}, Lakx;->g()V

    .line 555
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    move-wide v0, v2

    goto/16 :goto_5

    :cond_a
    move-wide v0, v2

    goto/16 :goto_6

    :cond_b
    move-object v4, v1

    goto/16 :goto_4
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    .prologue
    .line 197
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 198
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 199
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 287
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lakx;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 175
    iget-object v2, p0, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lakx;->mFeedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lakx;->mFeedItems:Ljava/util/List;

    iget-object v1, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 372
    iget-object v1, p0, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 376
    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    if-eqz p2, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()V

    .line 380
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 381
    invoke-virtual {p0}, Lakx;->g()V

    .line 382
    monitor-exit v1

    .line 385
    :goto_0
    return-void

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lakx;->mIterToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void

    .line 145
    :cond_0
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lakx;->sInstance:Lakx;

    iget-object v2, v2, Lakx;->mIterToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lakx;->mConversations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lakx$1;

    invoke-direct {v0, p0}, Lakx$1;-><init>(Lakx;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.class public final Lakc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lur;
.implements Luu;


# annotations
.annotation runtime Lbwr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lur",
        "<",
        "Lbhd;",
        ">;",
        "Luu;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatConversationManager"

.field private static sInstance:Lakc;


# instance fields
.field private final mChatMessageReleaser:Lyj;

.field private final mConversationUpdater:Lyg;

.field public final mConversations:Ljava/util/List;
    .annotation runtime Lbwo;
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

.field public final mConversationsForListView:Latw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latw",
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
            "Lut;",
            ">;"
        }
    .end annotation
.end field

.field public mIterToken:Ljava/lang/String;

.field private final mSendingMailman:Lyq;


# direct methods
.method private constructor <init>(Lyg;Lyj;Lyq;)V
    .locals 3
    .param p1    # Lyg;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lyj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakc;->mFeedItems:Ljava/util/List;

    .line 103
    new-instance v0, Latw;

    invoke-direct {v0}, Latw;-><init>()V

    iput-object v0, p0, Lakc;->mConversationsForListView:Latw;

    .line 129
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    iput-object p1, p0, Lakc;->mConversationUpdater:Lyg;

    .line 131
    iput-object p2, p0, Lakc;->mChatMessageReleaser:Lyj;

    .line 132
    iput-object p3, p0, Lakc;->mSendingMailman:Lyq;

    .line 133
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakc;->mIterToken:Ljava/lang/String;

    .line 134
    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v0

    iput-object p0, v0, Lyf;->a:Lakc;

    .line 135
    return-void
.end method

.method public static declared-synchronized b()Lakc;
    .locals 10

    .prologue
    .line 111
    const-class v9, Lakc;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lakc;->sInstance:Lakc;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lyg;

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v1

    invoke-static {}, Lyh;->a()Lyh;

    move-result-object v2

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v3

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v4

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v5

    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v6

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v7

    invoke-static {}, Lni;->a()Lni;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lyg;-><init>(Lyq;Lyh;Lyn;Lajn;Ltd;Lyf;Lnp;Lni;)V

    .line 116
    new-instance v1, Lakc;

    new-instance v2, Lyj;

    invoke-direct {v2}, Lyj;-><init>()V

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lakc;-><init>(Lyg;Lyj;Lyq;)V

    sput-object v1, Lakc;->sInstance:Lakc;

    .line 119
    :cond_0
    sget-object v0, Lakc;->sInstance:Lakc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized c()V
    .locals 2

    .prologue
    .line 123
    const-class v0, Lakc;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lakc;->sInstance:Lakc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    if-nez p1, :cond_1

    .line 289
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lakc;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, p1, p2, v0, v0}, Lakc;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 323
    iget-object v2, p0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v2

    .line 324
    const/4 v1, 0x0

    .line 325
    :try_start_0
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_4

    .line 327
    invoke-static {v3, p1}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    iget-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 329
    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    :goto_0
    if-nez v0, :cond_2

    .line 335
    const-string v0, "ChatConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CHAT-LOG: ChatConversationManager CREATING NEW CONVERSATION with "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {v0, v3, p1}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lakc;->mSendingMailman:Lyq;

    invoke-virtual {v1, v0}, Lyq;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_1
    iget-object v1, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lakc;->f()V

    .line 337
    iput-boolean p3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 338
    iput-boolean p4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 341
    :cond_2
    :goto_1
    monitor-exit v2

    return-object v0

    .line 342
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
            "Lut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lakc;->mFeedItems:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhd;ZZ)V
    .locals 14
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 583
    iget-object v8, p0, Lakc;->mConversationUpdater:Lyg;

    iget-object v9, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lbhd;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lbhd;->k()Lbhe;

    move-result-object v2

    invoke-virtual {v2}, Lbhe;->a()Lbix;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbix;)V

    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v8, p1, v0, v1}, Lyg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhd;Z)V

    invoke-virtual/range {p2 .. p2}, Lbhd;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

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

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lbhd;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lbhd;->b()Lbhy;

    move-result-object v2

    invoke-static {v2}, Laut;->a(Lbhy;)Lcom/snapchat/android/model/Snap;

    move-result-object v3

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    :cond_2
    iput-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lbhd;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual/range {p2 .. p2}, Lbhd;->f()Lbhc;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/model/CashTransaction$a;->a(Lbhc;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    :cond_4
    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lbhd;->d()Lbid;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Lbid;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v10}, Lbid;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object v5, v4

    move-object v6, v2

    move-object v2, v3

    :goto_2
    invoke-virtual {v10}, Lbid;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lbid;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v12

    invoke-static {v7}, Lbij$a;->a(Ljava/lang/String;)Lbij$a;

    move-result-object v7

    sget-object v11, Lbij$a;->UNRECOGNIZED_VALUE:Lbij$a;

    if-ne v7, v11, :cond_6

    sget-object v7, Lbij$a;->TEXT:Lbij$a;

    :cond_6
    sget-object v11, Laxi$2;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    invoke-virtual {v7}, Lbij$a;->ordinal()I

    move-result v7

    aget v7, v11, v7

    packed-switch v7, :pswitch_data_0

    new-instance v7, Laki$a;

    invoke-direct {v7, v5, v2}, Laki$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Laki$a;->a()Laki;

    move-result-object v5

    :goto_3
    iput-object v6, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v5, v12, v13}, Lakb;->c(J)V

    invoke-virtual {v10}, Lbid;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-virtual {v10}, Lbid;->c()Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v12

    cmp-long v6, v6, v12

    if-lez v6, :cond_11

    invoke-virtual {v10}, Lbid;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakb;->a(J)V

    :cond_7
    :goto_4
    if-eqz v5, :cond_9

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lakb;->W()J

    move-result-wide v6

    invoke-virtual {v2}, Lakb;->W()J

    move-result-wide v10

    cmp-long v3, v6, v10

    if-lez v3, :cond_14

    :cond_8
    iput-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    :cond_9
    :goto_5
    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lbhd;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    iget-object v2, v8, Lyg;->b:Lyh;

    iget-object v2, v2, Lyh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbaz;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz p4, :cond_15

    const/4 v2, 0x1

    :goto_6
    invoke-direct {v4, v9, v2}, Lbaz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    if-eqz p3, :cond_b

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaje;)I

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lbhd;->o()Lbhn;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lbhn;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_7
    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_1b

    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v2

    iget-boolean v2, v2, Lyf;->d:Z

    if-eqz v2, :cond_1a

    const-string v2, "ChatConversationUpdater"

    const-string v3, "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on SCCP"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    const/4 v2, 0x0

    iput v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    iget-object v3, v8, Lyg;->a:Lyq;

    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    const-string v2, "SendingMailman"

    const-string v6, "CHAT-LOG: RETRY sending chat messages above seqNum: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v2, v6, v7}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v6

    iget-object v7, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    monitor-enter v6

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v10, v2, Lakb;

    if-eqz v10, :cond_c

    check-cast v2, Lakb;

    iget-object v10, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Lakb;->n()Lbhf;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lbhf;->e()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-lez v10, :cond_c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, p1, v2, v10, v11}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_d
    invoke-virtual {v3}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    instance-of v4, v2, Laje;

    if-eqz v4, :cond_e

    instance-of v4, v3, Laje;

    if-eqz v4, :cond_e

    check-cast v2, Laje;

    invoke-virtual {v2}, Laje;->z()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_e
    iput-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->ao()Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    goto/16 :goto_1

    :cond_10
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
    new-instance v7, Lakg$a;

    invoke-direct {v7, v5, v2}, Lakg$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lakg$a;->a()Lakg;

    move-result-object v5

    goto/16 :goto_3

    :cond_11
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    iget-wide v12, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_12

    invoke-virtual {v10}, Lbid;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakb;->a(J)V

    goto/16 :goto_4

    :cond_12
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    invoke-virtual {v10}, Lbid;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lakb;->a(J)V

    goto/16 :goto_4

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v5}, Lakb;->W()J

    move-result-wide v6

    invoke-virtual {v2}, Lakb;->W()J

    move-result-wide v10

    cmp-long v3, v6, v10

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lakb;->o()Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    goto/16 :goto_5

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_16
    const-wide/16 v2, 0x0

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_19
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, p1}, Lyq;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    :cond_1a
    :goto_a
    iget-object v2, v8, Lyg;->a:Lyq;

    invoke-virtual {v2, p1}, Lyq;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v2, v8, Lyg;->c:Lyn;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lben;

    invoke-direct {v3}, Lben;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 584
    return-void

    .line 583
    :cond_1b
    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    goto :goto_a

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
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 620
    invoke-virtual {p0, p1, v5, v5, v4}, Lakc;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 624
    if-eqz v1, :cond_0

    .line 625
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 626
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static {}, Lajx;->F()Ljava/lang/String;

    move-result-object v2

    .line 631
    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 636
    aget-object v3, v0, v5

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 637
    aget-object v0, v0, v4

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 639
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v4, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>([B[B)V

    .line 640
    const-string v2, "no dataId provided"

    invoke-virtual {v4, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 642
    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lakc$3;

    invoke-direct {v0, p0}, Lakc$3;-><init>(Lakc;)V

    invoke-virtual {v0}, Lakc$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 648
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhf;

    .line 651
    new-instance v4, Lbhh;

    invoke-direct {v4}, Lbhh;-><init>()V

    invoke-virtual {v4, v0}, Lbhh;->a(Lbhf;)Lbhh;

    move-result-object v0

    .line 652
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    :cond_2
    new-instance v0, Lbhe;

    invoke-direct {v0}, Lbhe;-><init>()V

    invoke-virtual {v0, v2}, Lbhe;->a(Ljava/util/List;)Lbhe;

    move-result-object v0

    .line 655
    new-instance v2, Lbhd;

    invoke-direct {v2}, Lbhd;-><init>()V

    invoke-virtual {v2, v0}, Lbhd;->a(Lbhe;)Lbhd;

    move-result-object v0

    .line 658
    iget-object v2, p0, Lakc;->mConversationUpdater:Lyg;

    invoke-virtual {v2, v1, v0, v5}, Lyg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhd;Z)V

    .line 661
    invoke-virtual {p0}, Lakc;->f()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lakc;->a(Ljava/util/List;ZZZ)V

    .line 472
    return-void
.end method

.method public final a(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lakc;->a(Ljava/util/List;ZZZ)V

    .line 466
    return-void
.end method

.method public final a(Ljava/util/List;ZZZ)V
    .locals 14
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v8, p0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v8

    .line 482
    :try_start_0
    iget-object v2, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 483
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhd;

    invoke-virtual {v2}, Lbhd;->h()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 485
    if-eqz p2, :cond_3

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    move v7, v2

    .line 489
    :goto_2
    const-wide v4, 0x7fffffffffffffffL

    .line 490
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhd;

    .line 493
    invoke-virtual {v2}, Lbhd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 495
    if-eqz v3, :cond_4

    .line 496
    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v3, v2, v6, v11}, Lakc;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhd;ZZ)V

    .line 503
    iget-boolean v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v2, :cond_1

    .line 504
    const-string v2, "ChatConversationManager"

    const-string v6, "CHAT-LOG: ChatConversationManager sending release message for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v2, v6, v11}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v2, p0, Lakc;->mChatMessageReleaser:Lyj;

    sget-object v6, Lbit$a;->DELETE:Lbit$a;

    invoke-virtual {v2, v3, v6}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit$a;)V

    .line 509
    :cond_1
    iget-boolean v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v2, :cond_b

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    move-object v6, v3

    .line 523
    :goto_4
    if-eqz v6, :cond_a

    .line 524
    iget-wide v2, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 525
    cmp-long v11, v2, v4

    if-gez v11, :cond_9

    .line 528
    :goto_5
    iget-object v4, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move-wide v4, v2

    .line 530
    goto :goto_3

    .line 482
    :cond_2
    iget-object v2, p0, Lakc;->mConversations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    move-wide v4, v2

    goto/16 :goto_1

    .line 485
    :cond_3
    const/4 v2, 0x0

    move v7, v2

    goto :goto_2

    .line 515
    :cond_4
    invoke-static {v2}, Laul;->a(Lbhd;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_b

    .line 518
    iget-object v3, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    .line 519
    goto :goto_4

    .line 531
    :cond_5
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbcv;

    invoke-direct {v3}, Lbcv;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 534
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {p0, v2}, Lakc;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 536
    if-eqz v7, :cond_7

    .line 537
    iget-object v2, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 538
    :cond_6
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 542
    iget-wide v6, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_6

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->C()Z

    move-result v6

    if-nez v6, :cond_6

    .line 544
    iget-object v6, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 553
    iget-boolean v6, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v6, :cond_6

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    sget-object v6, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 555
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 567
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 561
    :cond_7
    if-eqz p3, :cond_8

    .line 562
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhd;

    invoke-virtual {v2}, Lbhd;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lakc;->mIterToken:Ljava/lang/String;

    .line 563
    invoke-virtual {p0}, Lakc;->d()V

    .line 566
    :cond_8
    invoke-virtual {p0}, Lakc;->f()V

    .line 567
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    move-wide v2, v4

    goto/16 :goto_5

    :cond_a
    move-wide v2, v4

    goto/16 :goto_6

    :cond_b
    move-object v6, v3

    goto/16 :goto_4
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    .prologue
    .line 194
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 195
    iget-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 196
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 301
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lakc;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 386
    iget-object v1, p0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 390
    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    if-eqz p2, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->s()V

    .line 394
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 395
    invoke-virtual {p0}, Lakc;->f()V

    .line 396
    monitor-exit v1

    .line 399
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

.method public final d()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lakc;->mIterToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 145
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    return-void

    .line 147
    :cond_0
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lakc;->sInstance:Lakc;

    iget-object v2, v2, Lakc;->mIterToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final e()Ljava/util/List;
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
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lakc$1;

    invoke-direct {v0, p0}, Lakc$1;-><init>(Lakc;)V

    invoke-static {v0}, Lcec;->a(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    iget-object v0, p0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 670
    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x1

    monitor-exit v1

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_1
    monitor-exit v1

    .line 676
    const/4 v0, 0x0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

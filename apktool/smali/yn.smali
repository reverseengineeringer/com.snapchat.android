.class public final Lyn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lyn;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-static {p0, p1}, Lyn;->c(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 255
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 257
    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Laje;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 259
    :cond_1
    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 260
    invoke-static {p0, v1}, Lyn;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0, v1}, Lyn;->d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lyn;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lyn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyn;->a:Lyn;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lyn;

    invoke-direct {v0}, Lyn;-><init>()V

    sput-object v0, Lyn;->a:Lyn;

    .line 46
    :cond_0
    sget-object v0, Lyn;->a:Lyn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 213
    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_1

    const-class v1, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 214
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v6

    .line 216
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 217
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_1
    instance-of v1, v0, Lakb;

    if-eqz v1, :cond_2

    const-class v1, Lakb;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_3

    const-class v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 220
    :cond_4
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static c(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, -0x1

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 233
    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v2

    .line 234
    if-le v2, v1, :cond_1

    .line 236
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v1, v2

    .line 239
    :cond_1
    if-ne v2, v1, :cond_0

    .line 240
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_2
    return-object v3
.end method

.method private static d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 271
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 273
    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v4

    invoke-interface {v1, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 276
    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/android/model/chat/ChatFeedItem;

    aput-object v1, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 20
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 60
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v2, :cond_1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v7, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v4, 0x0

    .line 70
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    .line 71
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    .line 72
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v13

    .line 76
    monitor-enter v13

    .line 81
    if-eqz v9, :cond_3

    .line 82
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 83
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 84
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->p()V

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 91
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 92
    instance-of v3, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v3, :cond_5

    .line 93
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_1c

    move-object v0, v2

    check-cast v0, Laje;

    move-object v3, v0

    invoke-virtual {v3}, Laje;->z()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 94
    const/4 v7, 0x1

    .line 95
    move-object v0, v2

    check-cast v0, Laje;

    move-object v3, v0

    invoke-virtual {v3}, Laje;->aj()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 96
    const/4 v5, 0x1

    move v3, v5

    move v5, v7

    .line 100
    :goto_3
    if-eqz v10, :cond_4

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v16

    invoke-virtual {v10}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v18

    cmp-long v7, v16, v18

    if-ltz v7, :cond_1b

    .line 101
    :cond_4
    check-cast v2, Lcom/snapchat/android/model/Snap;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    move v7, v5

    move v5, v3

    goto :goto_2

    .line 103
    :cond_5
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_8

    .line 104
    instance-of v3, v2, Laki;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v3, :cond_6

    instance-of v3, v2, Lakj;

    if-eqz v3, :cond_1a

    :cond_6
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ao()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 107
    const/4 v6, 0x1

    move v3, v6

    .line 110
    :goto_4
    if-eqz v11, :cond_7

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v16

    invoke-virtual {v11}, Lakb;->W()J

    move-result-wide v18

    cmp-long v6, v16, v18

    if-ltz v6, :cond_19

    .line 111
    :cond_7
    check-cast v2, Lakb;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakb;

    move v6, v3

    goto/16 :goto_2

    .line 113
    :cond_8
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_18

    .line 114
    invoke-static {v2}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v3

    if-nez v3, :cond_17

    .line 116
    const/4 v4, 0x1

    move v3, v4

    .line 119
    :goto_5
    if-eqz v12, :cond_9

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v18

    cmp-long v4, v16, v18

    if-ltz v4, :cond_a

    .line 120
    :cond_9
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    :cond_a
    move v2, v3

    move v4, v6

    move v3, v5

    move v5, v7

    :goto_6
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    .line 123
    goto/16 :goto_2

    .line 124
    :cond_b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v11, :cond_c

    .line 128
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_c
    if-eqz v10, :cond_d

    .line 131
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_d
    if-eqz v12, :cond_e

    .line 134
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_e
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 138
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 139
    const-string v2, "FeedIconManager"

    const-string v3, "FEEDICON-LOG: We couldn\'t find feed icons from existing content for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v2, v3, v11}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :cond_f
    :goto_7
    const/4 v2, 0x0

    .line 161
    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_16

    .line 162
    :cond_10
    const/4 v2, 0x1

    move v3, v2

    .line 164
    :goto_8
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 166
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 167
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 168
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 169
    if-eqz v8, :cond_11

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 170
    :cond_11
    const/4 v3, 0x1

    .line 172
    :cond_12
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 177
    :goto_9
    if-eqz v3, :cond_13

    .line 178
    const-string v2, "FeedIconManager"

    const-string v3, "FEEDICON-LOG: Feed icons changed for %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    aput-object v10, v8, v9

    invoke-static {v2, v3, v8}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 183
    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    .line 184
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 185
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 187
    if-eqz p2, :cond_0

    .line 188
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbcv;

    invoke-direct {v3}, Lbcv;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    :cond_14
    new-instance v2, Lyn$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lyn$1;-><init>(Lyn;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    .line 174
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    goto :goto_9

    :cond_16
    move v3, v2

    goto :goto_8

    :cond_17
    move v3, v4

    goto/16 :goto_5

    :cond_18
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_6

    :cond_19
    move v2, v4

    move v4, v3

    move v3, v5

    move v5, v7

    goto/16 :goto_6

    :cond_1a
    move v3, v6

    goto/16 :goto_4

    :cond_1b
    move v2, v4

    move v4, v6

    goto/16 :goto_6

    :cond_1c
    move v3, v5

    move v5, v7

    goto/16 :goto_3
.end method

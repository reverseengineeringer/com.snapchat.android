.class public final Lyg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyq;

.field public final b:Lyh;

.field public final c:Lyn;

.field final d:Ltd;

.field private final e:Lajn;

.field private final f:Lyf;

.field private final g:Lnp;

.field private final h:Lni;


# direct methods
.method public constructor <init>(Lyq;Lyh;Lyn;Lajn;Ltd;Lyf;Lnp;Lni;)V
    .locals 0
    .param p1    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lyh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lyn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lajn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ltd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Lyf;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lnp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p8    # Lni;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lyg;->a:Lyq;

    .line 76
    iput-object p2, p0, Lyg;->b:Lyh;

    .line 77
    iput-object p3, p0, Lyg;->c:Lyn;

    .line 78
    iput-object p4, p0, Lyg;->e:Lajn;

    .line 79
    iput-object p5, p0, Lyg;->d:Ltd;

    .line 80
    iput-object p6, p0, Lyg;->f:Lyf;

    .line 81
    iput-object p7, p0, Lyg;->g:Lnp;

    .line 82
    iput-object p8, p0, Lyg;->h:Lni;

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhd;Z)V
    .locals 24
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 199
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 201
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 202
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 203
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 206
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 208
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 210
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 211
    const/4 v7, 0x0

    .line 213
    if-eqz p3, :cond_1

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v6, v2

    .line 214
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v17

    .line 215
    monitor-enter v17

    .line 216
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 217
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_3

    .line 218
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v3, v3, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eqz v3, :cond_2

    .line 219
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 213
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    .line 223
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 226
    :cond_3
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 227
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x4e20

    cmp-long v3, v18, v20

    if-lez v3, :cond_4

    .line 229
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v4, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 230
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_4
    instance-of v3, v2, Laji;

    if-eqz v3, :cond_5

    move-object v0, v2

    check-cast v0, Laji;

    move-object v3, v0

    invoke-virtual {v3}, Laji;->m()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 232
    move-object v0, v2

    check-cast v0, Laji;

    move-object v3, v0

    invoke-virtual {v3}, Laji;->e()V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lyg;->e:Lajn;

    move-object v0, v2

    check-cast v0, Laji;

    move-object v3, v0

    iget-object v3, v3, Laji;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lajn;->c(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 236
    :cond_5
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 238
    :cond_6
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 239
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    :cond_7
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_b

    .line 241
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    .line 244
    invoke-virtual/range {p2 .. p2}, Lbhd;->p()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 245
    invoke-virtual/range {p2 .. p2}, Lbhd;->o()Lbhn;

    move-result-object v4

    invoke-virtual {v4}, Lbhn;->a()Ljava/util/Map;

    move-result-object v8

    .line 247
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v18

    .line 248
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v20

    .line 249
    iget-object v4, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v22

    cmp-long v4, v22, v20

    if-gtz v4, :cond_9

    :cond_8
    iget-object v4, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v20

    cmp-long v4, v20, v18

    if-lez v4, :cond_a

    .line 253
    :cond_9
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_a
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v3}, Lakb;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 261
    :cond_b
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 266
    :cond_c
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 267
    invoke-virtual/range {p2 .. p2}, Lbhd;->j()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 268
    invoke-virtual/range {p2 .. p2}, Lbhd;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhy;

    .line 269
    invoke-static {v2}, Laut;->a(Lbhy;)Lcom/snapchat/android/model/Snap;

    move-result-object v2

    check-cast v2, Laje;

    .line 272
    invoke-virtual {v2}, Laje;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 273
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lbhd;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 280
    invoke-virtual/range {p2 .. p2}, Lbhd;->k()Lbhe;

    move-result-object v2

    invoke-virtual {v2}, Lbhe;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Laul;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    .line 286
    :goto_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 288
    :cond_f
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 289
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 290
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 292
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_10

    .line 293
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 295
    :cond_10
    instance-of v3, v2, Lakn;

    if-eqz v3, :cond_11

    .line 296
    move-object v0, v2

    check-cast v0, Lakn;

    move-object v3, v0

    invoke-interface {v3}, Lakn;->i()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 299
    :cond_11
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 300
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    instance-of v3, v2, Lako;

    if-eqz v3, :cond_13

    move-object v0, v2

    check-cast v0, Lako;

    move-object v3, v0

    invoke-interface {v3}, Lako;->f()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 303
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 283
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    goto :goto_3

    .line 305
    :cond_13
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 307
    :cond_14
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 308
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_18

    .line 309
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lakb;

    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 313
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 316
    :cond_15
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lakb;->a(Lakb;)V

    .line 317
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v4, v0

    invoke-virtual {v4}, Lakb;->f()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 318
    invoke-virtual {v3}, Lakb;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_16
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    instance-of v4, v3, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v4, :cond_17

    .line 322
    check-cast v3, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 323
    check-cast v2, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 325
    :cond_17
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 327
    :cond_18
    instance-of v3, v2, Laji;

    if-eqz v3, :cond_1c

    .line 328
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 329
    instance-of v4, v3, Laji;

    if-eqz v4, :cond_1b

    .line 330
    move-object v0, v3

    check-cast v0, Laji;

    move-object v4, v0

    .line 331
    move-object v0, v2

    check-cast v0, Laji;

    move-object v5, v0

    .line 333
    sget-object v21, Laji;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {v4}, Laji;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sget-object v21, Laji;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {v5}, Laji;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v4, v5, :cond_19

    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_1a

    .line 335
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 333
    :cond_19
    const/4 v4, 0x0

    goto :goto_5

    .line 339
    :cond_1a
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 342
    :cond_1b
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 344
    :cond_1c
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_1d

    .line 347
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 349
    :cond_1d
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_f

    .line 352
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 356
    :cond_1e
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_21

    .line 361
    check-cast v2, Lakb;

    .line 362
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lakb;->W()J

    move-result-wide v22

    sub-long v4, v4, v22

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(ZJ)V

    .line 363
    invoke-virtual {v2}, Lakb;->f()Z

    move-result v3

    if-nez v3, :cond_f

    .line 364
    iget-object v3, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    move-wide/from16 v22, v0

    cmp-long v3, v4, v22

    if-gtz v3, :cond_1f

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    move-wide/from16 v22, v0

    cmp-long v3, v4, v22

    if-lez v3, :cond_20

    :cond_1f
    iget-object v3, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_f

    .line 369
    :cond_20
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 372
    :cond_21
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_f

    .line 373
    check-cast v2, Laje;

    .line 374
    invoke-virtual {v2}, Laje;->A()Z

    move-result v3

    if-nez v3, :cond_f

    .line 375
    invoke-virtual {v2}, Laje;->z()Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "SNAP_DELIVERY_LATENCY"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Laje;->W()J

    move-result-wide v22

    sub-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 376
    :cond_22
    invoke-static {v2}, Lnp;->b(Laje;)V

    goto/16 :goto_4

    .line 382
    :cond_23
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v13, v8, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/HashMap;Ljava/util/List;Z)V

    .line 384
    if-nez v6, :cond_2d

    .line 385
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    :cond_24
    invoke-interface {v8, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Collection;)V

    .line 409
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Lbhd;->p()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 414
    invoke-virtual/range {p2 .. p2}, Lbhd;->o()Lbhn;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    invoke-virtual {v3}, Lbhn;->a()Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_26

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v14

    cmp-long v2, v14, v10

    if-ltz v2, :cond_30

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lyg;->b:Lyh;

    iget-object v2, v2, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_6
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lyg;->f:Lyf;

    iget-boolean v2, v2, Lyf;->d:Z

    if-nez v2, :cond_31

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    :cond_26
    invoke-virtual {v3}, Lbhn;->b()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_28

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v2, v10, v12

    if-lez v2, :cond_27

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    :cond_27
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    cmp-long v2, v10, v12

    if-lez v2, :cond_28

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    :cond_28
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_29

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v2, v10, v12

    if-lez v2, :cond_29

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    :cond_29
    invoke-virtual {v3}, Lbhn;->c()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2b

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_2a

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    :cond_2a
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2b

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 421
    :cond_2b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 422
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    .line 424
    invoke-virtual/range {p2 .. p2}, Lbhd;->e()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual/range {p2 .. p2}, Lbhd;->d()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->a()Ljava/lang/Long;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v10

    .line 429
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v7

    .line 430
    :cond_2c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 431
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 432
    instance-of v7, v2, Lakb;

    if-eqz v7, :cond_37

    .line 433
    check-cast v2, Lakb;

    .line 434
    iget-object v7, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-virtual {v2}, Lakb;->O()Z

    move-result v7

    if-nez v7, :cond_33

    invoke-virtual {v2}, Lakb;->N()Z

    move-result v7

    if-nez v7, :cond_33

    .line 436
    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v7, v12, v14

    if-gtz v7, :cond_35

    .line 437
    invoke-virtual {v2, v10, v11}, Lakb;->a(J)V

    .line 438
    if-nez v4, :cond_35

    invoke-virtual {v2}, Lakb;->f()Z

    move-result v2

    if-nez v2, :cond_35

    .line 439
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 388
    :cond_2d
    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    invoke-interface {v8, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 395
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 397
    :cond_2e
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 398
    instance-of v4, v2, Laje;

    if-eqz v4, :cond_2f

    .line 399
    check-cast v2, Laje;

    .line 400
    invoke-virtual {v2}, Laje;->z()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 401
    invoke-static {v2}, Lnp;->e(Laje;)V

    goto :goto_b

    .line 414
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lyg;->b:Lyh;

    invoke-virtual {v2, v4}, Lyh;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lyg$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lyg$1;-><init>(Lyg;Ljava/lang/String;)V

    const-wide/16 v14, 0x1f40

    invoke-virtual {v2, v10, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 424
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lbhd;->h()Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_8

    .line 442
    :cond_33
    iget-object v7, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 444
    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v7, v12, v14

    if-gtz v7, :cond_36

    .line 445
    invoke-virtual {v2, v10, v11}, Lakb;->f(J)V

    .line 446
    invoke-virtual {v2, v10, v11}, Lakb;->a(J)V

    .line 447
    if-nez v4, :cond_34

    invoke-virtual {v2}, Lakb;->f()Z

    move-result v7

    if-nez v7, :cond_34

    .line 448
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 459
    :cond_34
    :goto_c
    instance-of v7, v2, Lakj;

    if-eqz v7, :cond_35

    invoke-virtual {v2}, Lakb;->f()Z

    move-result v7

    if-nez v7, :cond_35

    .line 460
    invoke-virtual {v2}, Lakb;->l()I

    move-result v7

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lyg;->a:Lyq;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v2, v7, v13}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;IZ)V

    :cond_35
    move v2, v3

    move v3, v2

    .line 464
    goto/16 :goto_9

    .line 450
    :cond_36
    invoke-virtual {v2}, Lakb;->ao()Z

    move-result v7

    if-nez v7, :cond_34

    .line 451
    const/4 v3, 0x1

    .line 452
    invoke-virtual {v2}, Lakb;->y()Z

    move-result v7

    if-nez v7, :cond_34

    if-eqz v5, :cond_34

    .line 455
    invoke-static {}, Lajx;->bv()I

    move-result v7

    invoke-virtual {v2, v7}, Lakb;->c(I)V

    goto :goto_c

    .line 464
    :cond_37
    instance-of v7, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v7, :cond_3a

    .line 465
    check-cast v2, Lcom/snapchat/android/model/Snap;

    .line 466
    instance-of v7, v2, Laje;

    if-eqz v7, :cond_38

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v7, v12, v14

    if-lez v7, :cond_39

    :cond_38
    instance-of v7, v2, Laji;

    if-eqz v7, :cond_2c

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v7, v12, v14

    if-gtz v7, :cond_2c

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->O()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 471
    :cond_39
    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->an()V

    .line 472
    if-nez v4, :cond_2c

    .line 473
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_9

    .line 476
    :cond_3a
    instance-of v7, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v7, :cond_2c

    .line 477
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 478
    if-nez v4, :cond_2c

    .line 479
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->f()Z

    move-result v7

    if-nez v7, :cond_3b

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->ao()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 480
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_9

    .line 481
    :cond_3b
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 482
    const/4 v3, 0x1

    goto/16 :goto_9

    .line 488
    :cond_3c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 492
    return-void

    .line 488
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

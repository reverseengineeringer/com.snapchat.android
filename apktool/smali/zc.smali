.class public final Lzc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzm;

.field public final b:Lzd;

.field final c:Ltt;

.field private final d:Lzj;

.field private final e:Laki;

.field private final f:Lzb;

.field private final g:Log;

.field private final h:Lnz;


# direct methods
.method public constructor <init>(Lzm;Lzd;Lzj;Laki;Ltt;Lzb;Log;Lnz;)V
    .locals 0
    .param p1    # Lzm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lzd;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lzj;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laki;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ltt;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lzb;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Log;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p8    # Lnz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lzc;->a:Lzm;

    .line 76
    iput-object p2, p0, Lzc;->b:Lzd;

    .line 77
    iput-object p3, p0, Lzc;->d:Lzj;

    .line 78
    iput-object p4, p0, Lzc;->e:Laki;

    .line 79
    iput-object p5, p0, Lzc;->c:Ltt;

    .line 80
    iput-object p6, p0, Lzc;->f:Lzb;

    .line 81
    iput-object p7, p0, Lzc;->g:Log;

    .line 82
    iput-object p8, p0, Lzc;->h:Lnz;

    .line 83
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;Z)V
    .locals 30
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbid;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 214
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 215
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 216
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 219
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 221
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 223
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v11, 0x0

    .line 226
    const/4 v10, 0x0

    .line 227
    const/4 v9, 0x0

    .line 229
    if-eqz p3, :cond_1

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v8, v4

    .line 230
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v22

    .line 231
    monitor-enter v22

    .line 232
    :try_start_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 233
    instance-of v5, v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v5, :cond_3

    .line 234
    move-object v0, v4

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eqz v5, :cond_2

    .line 235
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 517
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 229
    :cond_1
    const/4 v4, 0x0

    move v8, v4

    goto :goto_0

    .line 239
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_3
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 243
    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v26

    sub-long v24, v24, v26

    const-wide/16 v26, 0x4e20

    cmp-long v5, v24, v26

    if-lez v5, :cond_4

    .line 245
    move-object v0, v4

    check-cast v0, Lakw;

    move-object v5, v0

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v6, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 246
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_4
    instance-of v5, v4, Lake;

    if-eqz v5, :cond_5

    move-object v0, v4

    check-cast v0, Lake;

    move-object v5, v0

    invoke-virtual {v5}, Lake;->n()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 248
    move-object v0, v4

    check-cast v0, Lake;

    move-object v5, v0

    invoke-virtual {v5}, Lake;->e()V

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lzc;->e:Laki;

    move-object v0, v4

    check-cast v0, Lake;

    move-object v5, v0

    iget-object v5, v5, Lake;->mClientId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Laki;->c(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 252
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 254
    :cond_6
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 255
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 256
    :cond_7
    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_b

    .line 257
    move-object v0, v4

    check-cast v0, Lakw;

    move-object v5, v0

    .line 260
    invoke-virtual/range {p2 .. p2}, Lbid;->p()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 261
    invoke-virtual/range {p2 .. p2}, Lbid;->o()Lbin;

    move-result-object v6

    invoke-virtual {v6}, Lbin;->a()Ljava/util/Map;

    move-result-object v13

    .line 263
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-static {v6}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v24

    .line 264
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-static {v6}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v26

    .line 265
    iget-object v6, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v6, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lakw;->t()J

    move-result-wide v28

    cmp-long v6, v28, v26

    if-gtz v6, :cond_9

    :cond_8
    iget-object v6, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Lakw;->t()J

    move-result-wide v26

    cmp-long v6, v26, v24

    if-lez v6, :cond_a

    .line 269
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_a
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v5}, Lakw;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 277
    :cond_b
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 282
    :cond_c
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lbid;->j()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 284
    invoke-virtual/range {p2 .. p2}, Lbid;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbiy;

    .line 285
    invoke-static {v4}, Lavr;->a(Lbiy;)Lcom/snapchat/android/model/Snap;

    move-result-object v4

    check-cast v4, Laka;

    .line 288
    invoke-virtual {v4}, Laka;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 289
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 295
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lbid;->l()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 296
    invoke-virtual/range {p2 .. p2}, Lbid;->k()Lbie;

    move-result-object v4

    invoke-virtual {v4}, Lbie;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lavj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 302
    :goto_3
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 304
    :cond_f
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 305
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 306
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 308
    instance-of v5, v4, Laka;

    if-eqz v5, :cond_10

    .line 309
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 311
    :cond_10
    instance-of v5, v4, Lali;

    if-eqz v5, :cond_11

    .line 312
    move-object v0, v4

    check-cast v0, Lali;

    move-object v5, v0

    invoke-interface {v5}, Lali;->l()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 315
    :cond_11
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 316
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    instance-of v5, v4, Lalj;

    if-eqz v5, :cond_13

    move-object v0, v4

    check-cast v0, Lalj;

    move-object v5, v0

    invoke-interface {v5}, Lalj;->f()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 319
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 299
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    goto :goto_3

    .line 321
    :cond_13
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 323
    :cond_14
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 324
    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_18

    .line 325
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lakw;

    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 329
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 332
    :cond_15
    move-object v0, v4

    check-cast v0, Lakw;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lakw;->a(Lakw;)V

    .line 333
    move-object v0, v4

    check-cast v0, Lakw;

    move-object v6, v0

    invoke-virtual {v6}, Lakw;->f()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 334
    invoke-virtual {v5}, Lakw;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_16
    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    instance-of v6, v5, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v6, :cond_17

    .line 338
    check-cast v5, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 339
    check-cast v4, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v5, v4}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 341
    :cond_17
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 343
    :cond_18
    instance-of v5, v4, Lake;

    if-eqz v5, :cond_1c

    .line 344
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 345
    instance-of v6, v5, Lake;

    if-eqz v6, :cond_1b

    .line 346
    move-object v0, v5

    check-cast v0, Lake;

    move-object v6, v0

    .line 347
    move-object v0, v4

    check-cast v0, Lake;

    move-object v7, v0

    .line 349
    sget-object v26, Lake;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lake;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sget-object v26, Lake;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lake;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-le v6, v7, :cond_19

    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_1a

    .line 351
    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 349
    :cond_19
    const/4 v6, 0x0

    goto :goto_5

    .line 355
    :cond_1a
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 358
    :cond_1b
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 360
    :cond_1c
    instance-of v5, v4, Laka;

    if-eqz v5, :cond_1d

    .line 363
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 365
    :cond_1d
    instance-of v5, v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v5, :cond_f

    .line 368
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 372
    :cond_1e
    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_21

    .line 377
    check-cast v4, Lakw;

    .line 378
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lakw;->U()J

    move-result-wide v26

    sub-long v6, v6, v26

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(ZJ)V

    .line 379
    invoke-virtual {v4}, Lakw;->f()Z

    move-result v5

    if-nez v5, :cond_f

    .line 380
    iget-object v5, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v4}, Lakw;->t()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    move-wide/from16 v26, v0

    cmp-long v5, v6, v26

    if-gtz v5, :cond_1f

    invoke-virtual {v4}, Lakw;->t()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    move-wide/from16 v26, v0

    cmp-long v5, v6, v26

    if-lez v5, :cond_20

    :cond_1f
    iget-object v5, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v5, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lakw;->t()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_f

    .line 385
    :cond_20
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 388
    :cond_21
    instance-of v5, v4, Laka;

    if-eqz v5, :cond_f

    .line 389
    check-cast v4, Laka;

    .line 390
    invoke-virtual {v4}, Laka;->B()Z

    move-result v5

    if-nez v5, :cond_f

    .line 391
    const-string v5, "all_updates"

    invoke-static {v4, v5}, Lnz;->a(Laka;Ljava/lang/String;)V

    .line 392
    invoke-static {v4}, Log;->b(Laka;)V

    goto/16 :goto_4

    .line 398
    :cond_22
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/HashMap;Ljava/util/List;Z)V

    .line 400
    if-nez v8, :cond_2b

    .line 401
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    :cond_23
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Collection;)V

    .line 425
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Lbid;->p()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 430
    invoke-virtual/range {p2 .. p2}, Lbid;->o()Lbin;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    move-wide/from16 v16, v0

    invoke-virtual {v5}, Lbin;->a()Ljava/util/Map;

    move-result-object v15

    if-eqz v15, :cond_25

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v18

    cmp-long v4, v18, v16

    if-ltz v4, :cond_2e

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lzc;->b:Lzd;

    iget-object v4, v4, Lzd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_6
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lzc;->f:Lzb;

    iget-boolean v4, v4, Lzb;->d:Z

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    :cond_25
    invoke-virtual {v5}, Lbin;->b()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_27

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    move-wide/from16 v18, v0

    cmp-long v4, v16, v18

    if-lez v4, :cond_26

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    :cond_26
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    move-wide/from16 v18, v0

    cmp-long v4, v16, v18

    if-lez v4, :cond_27

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    :cond_27
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_28

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    move-wide/from16 v18, v0

    cmp-long v4, v16, v18

    if-lez v4, :cond_28

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    :cond_28
    invoke-virtual {v5}, Lbin;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2a

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    move-wide/from16 v18, v0

    cmp-long v5, v16, v18

    if-lez v5, :cond_29

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    :cond_29
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2a

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 437
    :cond_2a
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 438
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    move/from16 v16, v0

    .line 440
    invoke-virtual/range {p2 .. p2}, Lbid;->e()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual/range {p2 .. p2}, Lbid;->d()Lbjd;

    move-result-object v4

    invoke-virtual {v4}, Lbjd;->a()Ljava/lang/Long;

    move-result-object v4

    :goto_8
    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v18

    .line 445
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v6, v10

    move v7, v11

    move v8, v12

    .line 446
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 447
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 448
    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_35

    .line 449
    check-cast v4, Lakw;

    .line 450
    iget-object v5, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lakw;->P()Z

    move-result v5

    if-nez v5, :cond_31

    invoke-virtual {v4}, Lakw;->O()Z

    move-result v5

    if-nez v5, :cond_31

    .line 452
    invoke-virtual {v4}, Lakw;->t()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-gtz v5, :cond_3f

    .line 453
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lakw;->a(J)V

    .line 454
    if-nez v15, :cond_3f

    invoke-virtual {v4}, Lakw;->f()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 455
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 404
    :cond_2b
    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 411
    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 413
    :cond_2c
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 414
    instance-of v6, v4, Laka;

    if-eqz v6, :cond_2d

    .line 415
    check-cast v4, Laka;

    .line 416
    invoke-virtual {v4}, Laka;->A()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 417
    invoke-static {v4}, Log;->e(Laka;)V

    goto :goto_b

    .line 430
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lzc;->b:Lzd;

    invoke-virtual {v4, v6}, Lzd;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v16, Lzc$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lzc$1;-><init>(Lzc;Ljava/lang/String;)V

    const-wide/16 v18, 0x1f40

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 440
    :cond_30
    invoke-virtual/range {p2 .. p2}, Lbid;->h()Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_8

    .line 458
    :cond_31
    iget-object v5, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 460
    invoke-virtual {v4}, Lakw;->t()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-gtz v5, :cond_33

    .line 461
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lakw;->f(J)V

    .line 462
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lakw;->a(J)V

    .line 463
    if-nez v15, :cond_34

    invoke-virtual {v4}, Lakw;->f()Z

    move-result v5

    if-nez v5, :cond_34

    .line 464
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    move v5, v6

    .line 475
    :goto_c
    instance-of v6, v4, Lale;

    if-eqz v6, :cond_32

    invoke-virtual {v4}, Lakw;->f()Z

    move-result v6

    if-nez v6, :cond_32

    .line 476
    invoke-virtual {v4}, Lakw;->m()I

    move-result v6

    .line 477
    move-object/from16 v0, p0

    iget-object v10, v0, Lzc;->a:Lzm;

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v4, v6, v11}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;IZ)V

    :cond_32
    move v4, v5

    :goto_d
    move v6, v4

    .line 480
    goto/16 :goto_9

    .line 466
    :cond_33
    invoke-virtual {v4}, Lakw;->am()Z

    move-result v5

    if-nez v5, :cond_34

    .line 467
    const/4 v6, 0x1

    .line 468
    invoke-virtual {v4}, Lakw;->z()Z

    move-result v5

    if-nez v5, :cond_34

    if-eqz v16, :cond_34

    .line 471
    invoke-static {}, Lakr;->bs()I

    move-result v5

    invoke-virtual {v4, v5}, Lakw;->c(I)V

    :cond_34
    move v5, v6

    goto :goto_c

    .line 480
    :cond_35
    instance-of v5, v4, Lcom/snapchat/android/model/Snap;

    if-eqz v5, :cond_39

    .line 481
    check-cast v4, Lcom/snapchat/android/model/Snap;

    .line 482
    instance-of v5, v4, Laka;

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-lez v5, :cond_37

    :cond_36
    instance-of v5, v4, Lake;

    if-eqz v5, :cond_38

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-gtz v5, :cond_38

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->P()Z

    move-result v5

    if-nez v5, :cond_38

    .line 487
    :cond_37
    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->al()V

    .line 488
    if-nez v15, :cond_38

    .line 489
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    .line 492
    :cond_38
    instance-of v5, v4, Laka;

    if-eqz v5, :cond_3e

    move-object v0, v4

    check-cast v0, Laka;

    move-object v5, v0

    invoke-virtual {v5}, Laka;->A()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 493
    const/4 v5, 0x1

    .line 494
    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->ah()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 495
    const/4 v4, 0x1

    :goto_e
    move v7, v4

    move v8, v5

    .line 498
    goto/16 :goto_9

    :cond_39
    instance-of v5, v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v5, :cond_3c

    .line 499
    check-cast v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 500
    if-nez v15, :cond_3c

    .line 501
    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->f()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->am()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 502
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_9

    .line 503
    :cond_3a
    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 504
    const/4 v6, 0x1

    .line 505
    const/4 v4, 0x1

    :goto_f
    move v9, v4

    .line 509
    goto/16 :goto_9

    .line 511
    :cond_3b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    :try_start_3
    move-object/from16 v0, p1

    iput-boolean v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    .line 514
    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 515
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 516
    move-object/from16 v0, p1

    iput-boolean v9, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 517
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 511
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3c
    move v4, v9

    goto :goto_f

    :cond_3d
    move v4, v7

    goto :goto_e

    :cond_3e
    move v4, v7

    move v5, v8

    goto :goto_e

    :cond_3f
    move v4, v6

    goto/16 :goto_d
.end method

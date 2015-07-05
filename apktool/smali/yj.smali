.class public final Lyj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lya;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Lyq;

.field final c:Lyn;

.field private final d:Lna;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v0

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v1

    invoke-static {}, Lna;->a()Lna;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lyj;-><init>(Lyq;Lyn;Lna;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lyq;Lyn;Lna;)V
    .locals 1
    .param p1    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lyn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lna;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lyj;)V

    .line 58
    iput-object p1, p0, Lyj;->b:Lyq;

    .line 59
    iput-object p2, p0, Lyj;->c:Lyn;

    .line 60
    iput-object p3, p0, Lyj;->d:Lna;

    .line 61
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 146
    :goto_0
    if-nez v0, :cond_0

    .line 147
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-object v2

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 13
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 497
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v8

    .line 498
    const-wide/16 v4, 0x0

    .line 499
    monitor-enter v8

    .line 500
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 501
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_0

    .line 502
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    .line 503
    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v10

    .line 505
    invoke-virtual {v3, v6, v7}, Lakb;->g(J)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->k()Ljava/util/List;

    move-result-object v2

    iget-object v12, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v3, v6, v7}, Lakb;->a(J)V

    .line 508
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 509
    invoke-static {v3}, Lna;->b(Lakb;)V

    .line 510
    invoke-virtual {v3}, Lakb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Ljava/lang/String;)V

    :cond_0
    move-wide v2, v4

    move-wide v4, v2

    .line 513
    goto :goto_0

    .line 515
    :cond_1
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 516
    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 517
    iput-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 518
    const/4 v2, 0x1

    monitor-exit v8

    .line 520
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    monitor-exit v8

    goto :goto_1

    .line 521
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 9
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 350
    monitor-enter v4

    .line 351
    const-wide/16 v2, 0x0

    .line 352
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 353
    instance-of v1, v0, Laji;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v6

    cmp-long v1, v6, p1

    if-gtz v1, :cond_2

    .line 354
    check-cast v0, Laji;

    .line 355
    invoke-virtual {v0}, Laji;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0}, Laji;->an()V

    .line 359
    invoke-virtual {v0}, Laji;->W()J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 362
    goto :goto_0

    .line 363
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    .line 364
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 365
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    .line 366
    const/4 v0, 0x1

    monitor-exit v4

    .line 368
    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_2

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 16
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 528
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 529
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 530
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v7

    .line 532
    monitor-enter v7

    .line 533
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    .line 534
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 535
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 536
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_0

    .line 537
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    .line 541
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lakb;->f()Z

    move-result v13

    if-nez v13, :cond_0

    .line 542
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v14

    cmp-long v2, v14, v8

    if-gtz v2, :cond_0

    .line 548
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 552
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v14

    cmp-long v2, v14, v10

    if-gtz v2, :cond_0

    .line 553
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 560
    :try_start_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 561
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 562
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v5

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 558
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 566
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Set;)V

    .line 567
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method

.method public static b(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 13
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v8

    .line 381
    monitor-enter v8

    .line 382
    const-wide/16 v4, 0x0

    .line 383
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 384
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->H()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->I()V

    .line 386
    const-string v3, "ChatMessageReleaser"

    const-string v9, "CHAT-LOG: preserving chat media with id[%i]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v3, v9, v10}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 401
    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 402
    iput-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 403
    monitor-exit v8

    move v2, v6

    .line 405
    :goto_1
    return v2

    .line 390
    :cond_1
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v10

    cmp-long v3, v10, p1

    if-gtz v3, :cond_3

    .line 391
    check-cast v2, Laje;

    .line 392
    invoke-virtual {v2}, Laje;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Laje;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v2}, Laje;->an()V

    .line 396
    invoke-virtual {v2}, Laje;->W()J

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    .line 399
    goto :goto_0

    .line 405
    :cond_2
    monitor-exit v8

    move v2, v7

    goto :goto_1

    .line 406
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    move-wide v2, v4

    goto :goto_2
.end method

.method public static c(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 15
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 452
    iget-wide v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    .line 453
    cmp-long v2, p1, v6

    if-gtz v2, :cond_0

    .line 454
    const/4 v2, 0x0

    .line 485
    :goto_0
    return v2

    .line 457
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 458
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v10

    .line 459
    const-wide/16 v4, 0x0

    .line 460
    monitor-enter v10

    .line 461
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 462
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_5

    .line 463
    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    .line 464
    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v12

    .line 466
    cmp-long v14, v12, p1

    if-gtz v14, :cond_5

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->k()Ljava/util/List;

    move-result-object v2

    iget-object v14, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 467
    instance-of v2, v3, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->H()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->I()V

    .line 469
    const-string v2, "ChatMessageReleaser"

    const-string v8, "CHAT-LOG: preserving chat media with id[%i]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lakb;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v11

    invoke-static {v2, v8, v9}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :cond_1
    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 482
    iput-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    .line 483
    const/4 v2, 0x1

    monitor-exit v10

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 473
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lakb;->y()Z

    move-result v2

    if-nez v2, :cond_3

    .line 474
    invoke-virtual {v3, v8, v9}, Lakb;->f(J)V

    .line 476
    :cond_3
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    .line 479
    goto :goto_1

    .line 485
    :cond_4
    const/4 v2, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    move-wide v2, v4

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit$a;)V
    .locals 24
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbit$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 73
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 74
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    .line 76
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 78
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    .line 79
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    .line 80
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    move-wide/from16 v16, v0

    .line 81
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    move-wide/from16 v18, v0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->q()Ljava/util/List;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lbit$a;Ljava/util/List;J)V

    .line 87
    sget-object v20, Lbit$a;->DELETE:Lbit$a;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    cmp-long v12, v6, v14

    if-nez v12, :cond_0

    cmp-long v12, v8, v16

    if-nez v12, :cond_0

    cmp-long v12, v10, v18

    if-nez v12, :cond_0

    .line 92
    const-string v4, "ChatMessageReleaser"

    const-string v5, "CHAT-LOG: ChatMessageReleaser not sending DELETE message because there\'s no change"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v4}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v4

    .line 98
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v5

    .line 101
    move-object/from16 v0, p0

    iget-object v6, v0, Lyj;->b:Lyq;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v4, v5, v1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lbit$a;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbit;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 318
    invoke-virtual {p2}, Lbit;->b()Ljava/util/Map;

    move-result-object v0

    .line 319
    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 321
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v2

    .line 323
    monitor-enter v2

    .line 324
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 325
    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 326
    iput-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    .line 328
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 329
    instance-of v4, v0, Lakb;

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    check-cast v0, Lakb;

    .line 331
    invoke-virtual {v0}, Lakb;->s()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 332
    invoke-virtual {p2}, Lbit;->d()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lakb;->a(J)V

    goto :goto_1

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 336
    :cond_4
    :try_start_1
    iget-object v0, p0, Lyj;->c:Lyn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 337
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 416
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v3

    .line 417
    monitor-enter v3

    .line 418
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 419
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    if-ne v2, v5, :cond_3

    .line 420
    iget-object v1, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lyj;->a:Lya;

    invoke-static {p2}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lya;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 439
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    .line 425
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 433
    :cond_3
    :try_start_1
    instance-of v2, v1, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->I()V

    .line 435
    const-string v2, "ChatMessageReleaser"

    const-string v4, "CHAT-LOG: preserving chat media with id[%i]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 28
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v17

    .line 163
    const-wide/16 v8, 0x0

    .line 164
    const-wide/16 v6, 0x0

    .line 165
    const-wide/16 v10, 0x0

    .line 166
    const-wide/16 v12, 0x0

    .line 167
    const/4 v3, 0x0

    .line 168
    const/4 v2, 0x0

    .line 169
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 179
    const-wide/16 v4, -0x1

    .line 180
    const/4 v14, 0x0

    .line 182
    monitor-enter v17

    .line 183
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v15, v2

    move/from16 v16, v3

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 184
    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_a

    .line 185
    check-cast v2, Lakb;

    .line 186
    invoke-virtual {v2}, Lakb;->o()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 188
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_9

    .line 189
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->H()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->I()V

    .line 191
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "CHAT-LOG: preserving chat media with id"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    const-string v3, "ChatMessageReleaser"

    const-string v4, "CHAT-LOG: preserving chat media with id[%i]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lakb;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v15

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_2

    .line 264
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    .line 266
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_11

    .line 267
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 268
    const/4 v2, 0x1

    .line 270
    :goto_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v3, v10, v4

    if-lez v3, :cond_3

    .line 271
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    .line 272
    const/4 v2, 0x1

    .line 274
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v3, v12, v4

    if-lez v3, :cond_4

    .line 275
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 276
    const/4 v2, 0x1

    .line 279
    :cond_4
    if-eqz v2, :cond_5

    .line 280
    sget-object v2, Lbit$a;->RELEASE:Lbit$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lyj;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbit$a;)V

    .line 282
    :cond_5
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lyj;->a:Lya;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lya;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 285
    return-void

    .line 196
    :cond_6
    if-eqz p2, :cond_7

    .line 197
    :try_start_1
    invoke-virtual {v2}, Lakb;->x()J

    move-result-wide v4

    .line 205
    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lakb;->g(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    :cond_8
    invoke-static {v2}, Lna;->b(Lakb;)V

    .line 210
    invoke-virtual {v2}, Lakb;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Ljava/lang/String;)V

    .line 211
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lakb;->f(J)V

    .line 212
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lakb;->c(I)V

    .line 213
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lakb;->a(J)V

    .line 214
    invoke-virtual {v2}, Lakb;->s()J

    move-result-wide v2

    .line 215
    cmp-long v23, v2, v6

    if-lez v23, :cond_14

    move-wide v6, v2

    move-wide/from16 v26, v2

    move-wide v2, v4

    move-wide/from16 v4, v26

    :goto_3
    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    .line 220
    goto/16 :goto_0

    .line 199
    :cond_9
    if-eqz p2, :cond_7

    .line 200
    invoke-virtual {v2}, Lakb;->y()Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v24, -0x1

    cmp-long v3, v4, v24

    if-eqz v3, :cond_7

    .line 201
    invoke-virtual {v2, v4, v5}, Lakb;->e(J)V

    goto :goto_2

    .line 282
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 220
    :cond_a
    :try_start_2
    instance-of v3, v2, Laji;

    if-eqz v3, :cond_c

    if-nez v16, :cond_c

    .line 221
    check-cast v2, Laji;

    .line 222
    invoke-virtual {v2}, Laji;->i()Z

    move-result v3

    if-nez v3, :cond_b

    .line 223
    const/4 v2, 0x1

    move/from16 v16, v2

    goto/16 :goto_0

    .line 225
    :cond_b
    invoke-virtual {v2}, Laji;->an()V

    .line 226
    invoke-virtual {v2}, Laji;->W()J

    move-result-wide v2

    .line 227
    cmp-long v23, v2, v10

    if-lez v23, :cond_13

    :goto_4
    move-wide v10, v2

    .line 231
    goto/16 :goto_0

    :cond_c
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_f

    if-nez v15, :cond_f

    .line 232
    check-cast v2, Laje;

    .line 235
    invoke-virtual {v2}, Laje;->z()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Laje;->g()Z

    move-result v3

    if-nez v3, :cond_e

    .line 236
    :cond_d
    const/4 v2, 0x1

    move v15, v2

    goto/16 :goto_0

    .line 238
    :cond_e
    invoke-virtual {v2}, Laje;->an()V

    .line 239
    invoke-virtual {v2}, Laje;->W()J

    move-result-wide v2

    .line 240
    cmp-long v23, v2, v12

    if-lez v23, :cond_12

    :goto_5
    move-wide v12, v2

    .line 244
    goto/16 :goto_0

    :cond_f
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_0

    .line 245
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 246
    iget-object v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v3, v3, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eqz v3, :cond_10

    .line 250
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 255
    :cond_10
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_11
    move v2, v14

    goto/16 :goto_1

    :cond_12
    move-wide v2, v12

    goto :goto_5

    :cond_13
    move-wide v2, v10

    goto :goto_4

    :cond_14
    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    goto/16 :goto_3
.end method

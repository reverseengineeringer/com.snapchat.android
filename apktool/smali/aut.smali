.class public final Laut;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lbhy;)Lcom/snapchat/android/model/Snap;
    .locals 45
    .param p0    # Lbhy;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lbhy;->q()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lbhy;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lbhy;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lbhy;->t()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 66
    invoke-virtual/range {p0 .. p0}, Lbhy;->u()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Lbhy;->s()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Laud;->a(Ljava/lang/Integer;)I

    move-result v8

    .line 68
    invoke-virtual/range {p0 .. p0}, Lbhy;->r()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Laud;->a(Ljava/lang/Integer;)I

    move-result v25

    .line 69
    invoke-virtual/range {p0 .. p0}, Lbhy;->v()Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v9

    .line 70
    const/4 v10, 0x3

    move/from16 v0, v25

    if-ne v0, v10, :cond_2

    const/16 v39, 0x1

    .line 72
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbhy;->a()Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-virtual/range {p0 .. p0}, Lbhy;->m()Ljava/lang/String;

    move-result-object v26

    .line 75
    invoke-virtual/range {p0 .. p0}, Lbhy;->c()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 76
    invoke-virtual/range {p0 .. p0}, Lbhy;->c()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 83
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbhy;->d()Ljava/lang/String;

    move-result-object v14

    .line 84
    invoke-virtual/range {p0 .. p0}, Lbhy;->f()Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v15

    .line 85
    invoke-virtual/range {p0 .. p0}, Lbhy;->e()Ljava/lang/Double;

    move-result-object v10

    invoke-static {v10}, Laud;->a(Ljava/lang/Double;)D

    move-result-wide v17

    .line 87
    invoke-virtual/range {p0 .. p0}, Lbhy;->g()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Laud;->a(Ljava/lang/Integer;)I

    move-result v10

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    const/4 v10, 0x1

    move/from16 v24, v10

    .line 88
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lbhy;->h()Ljava/lang/String;

    move-result-object v19

    .line 89
    invoke-virtual/range {p0 .. p0}, Lbhy;->j()Ljava/lang/String;

    move-result-object v20

    .line 90
    invoke-virtual/range {p0 .. p0}, Lbhy;->i()Ljava/lang/String;

    move-result-object v21

    .line 91
    invoke-virtual/range {p0 .. p0}, Lbhy;->k()Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v22

    .line 93
    invoke-virtual/range {p0 .. p0}, Lbhy;->p()Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v10

    .line 94
    invoke-virtual/range {p0 .. p0}, Lbhy;->o()Ljava/lang/Boolean;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v27

    .line 96
    invoke-virtual/range {p0 .. p0}, Lbhy;->l()Ljava/lang/String;

    move-result-object v23

    .line 98
    if-eqz v11, :cond_7

    .line 99
    packed-switch v25, :pswitch_data_0

    sget-object v10, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 100
    :goto_3
    if-eqz v27, :cond_1

    .line 101
    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v10, v2, :cond_1

    .line 102
    sget-object v10, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 105
    :cond_1
    if-eqz v24, :cond_6

    .line 106
    new-instance v2, Lain;

    invoke-direct/range {v2 .. v23}, Lain;-><init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;JDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 129
    :goto_4
    return-object v2

    .line 70
    :cond_2
    const/16 v39, 0x0

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lbhy;->b()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 78
    invoke-virtual/range {p0 .. p0}, Lbhy;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v12, v10

    goto :goto_1

    .line 80
    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 87
    :cond_5
    const/4 v10, 0x0

    move/from16 v24, v10

    goto :goto_2

    .line 99
    :pswitch_0
    sget-object v10, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_3

    .line 110
    :cond_6
    new-instance v24, Laje;

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v4

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v36, v12

    move-object/from16 v38, v14

    move-wide/from16 v40, v15

    move-wide/from16 v42, v17

    move-object/from16 v44, v23

    invoke-direct/range {v24 .. v44}, Laje;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V

    move-object/from16 v2, v24

    goto :goto_4

    .line 113
    :cond_7
    if-eqz v26, :cond_b

    .line 114
    packed-switch v25, :pswitch_data_1

    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 115
    :goto_5
    if-eqz v10, :cond_9

    .line 116
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 124
    :cond_8
    :goto_6
    new-instance v9, Laji;

    move-object v10, v3

    move-object v11, v2

    move-wide v12, v4

    move-wide v14, v6

    move/from16 v16, v8

    move-object/from16 v18, v26

    invoke-direct/range {v9 .. v18}, Laji;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V

    .line 126
    move/from16 v0, v39

    invoke-virtual {v9, v0}, Laji;->d(Z)V

    move-object v2, v9

    .line 127
    goto :goto_4

    .line 114
    :pswitch_1
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    :pswitch_2
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    :pswitch_3
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    :pswitch_4
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    .line 117
    :cond_9
    if-eqz v27, :cond_8

    .line 118
    sget-object v9, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v17

    if-ne v0, v9, :cond_a

    .line 119
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_6

    .line 121
    :cond_a
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_6

    .line 129
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 317
    :cond_1
    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laim;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    .line 308
    new-instance v3, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Laim;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_0
    return-object v1
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 251
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    invoke-virtual {v1}, Lakc;->e()Ljava/util/List;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 253
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 254
    monitor-enter v4

    .line 255
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 256
    instance-of v2, v1, Laje;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->ap()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    :cond_1
    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->o()V

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :cond_3
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 3
    .param p0    # Lcom/snapchat/android/model/Mediabryo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/snapchat/android/model/Mediabryo;->h()I

    move-result v1

    .line 322
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 286
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    invoke-virtual {v1}, Lakc;->e()Ljava/util/List;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 288
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 289
    monitor-enter v4

    .line 290
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 291
    instance-of v2, v1, Laje;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->ap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->o()V

    goto :goto_1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :cond_2
    return-void
.end method

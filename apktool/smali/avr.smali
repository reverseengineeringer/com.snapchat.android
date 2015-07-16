.class public final Lavr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lbiy;)Lcom/snapchat/android/model/Snap;
    .locals 37
    .param p0    # Lbiy;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lbiy;->o()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lbiy;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lbiy;->k()Ljava/lang/String;

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
    invoke-virtual/range {p0 .. p0}, Lbiy;->r()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 66
    invoke-virtual/range {p0 .. p0}, Lbiy;->s()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Lbiy;->q()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v8

    .line 68
    invoke-virtual/range {p0 .. p0}, Lbiy;->p()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v21

    .line 69
    invoke-virtual/range {p0 .. p0}, Lbiy;->t()Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v9

    .line 70
    const/4 v10, 0x3

    move/from16 v0, v21

    if-ne v0, v10, :cond_2

    const/16 v35, 0x1

    .line 72
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbiy;->a()Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-virtual/range {p0 .. p0}, Lbiy;->k()Ljava/lang/String;

    move-result-object v22

    .line 75
    invoke-virtual/range {p0 .. p0}, Lbiy;->c()Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 76
    invoke-virtual/range {p0 .. p0}, Lbiy;->c()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 83
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbiy;->d()Ljava/lang/String;

    move-result-object v14

    .line 85
    invoke-virtual/range {p0 .. p0}, Lbiy;->e()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v10

    const/4 v15, 0x1

    if-ne v10, v15, :cond_5

    const/4 v10, 0x1

    move/from16 v20, v10

    .line 86
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lbiy;->f()Ljava/lang/String;

    move-result-object v15

    .line 87
    invoke-virtual/range {p0 .. p0}, Lbiy;->h()Ljava/lang/String;

    move-result-object v16

    .line 88
    invoke-virtual/range {p0 .. p0}, Lbiy;->g()Ljava/lang/String;

    move-result-object v17

    .line 89
    invoke-virtual/range {p0 .. p0}, Lbiy;->i()Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v18

    .line 91
    invoke-virtual/range {p0 .. p0}, Lbiy;->n()Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v10

    .line 92
    invoke-virtual/range {p0 .. p0}, Lbiy;->m()Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v23

    .line 94
    invoke-virtual/range {p0 .. p0}, Lbiy;->j()Ljava/lang/String;

    move-result-object v19

    .line 96
    if-eqz v11, :cond_7

    .line 97
    invoke-static/range {v21 .. v21}, Lavr;->a(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v10

    .line 98
    if-eqz v23, :cond_1

    .line 99
    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v10, v2, :cond_1

    .line 100
    sget-object v10, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 103
    :cond_1
    if-eqz v20, :cond_6

    .line 104
    new-instance v2, Lajj;

    invoke-direct/range {v2 .. v19}, Lajj;-><init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 126
    :goto_3
    return-object v2

    .line 70
    :cond_2
    const/16 v35, 0x0

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lbiy;->b()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 78
    invoke-virtual/range {p0 .. p0}, Lbiy;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v12, v10

    goto :goto_1

    .line 80
    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 85
    :cond_5
    const/4 v10, 0x0

    move/from16 v20, v10

    goto :goto_2

    .line 108
    :cond_6
    new-instance v20, Laka;

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-wide/from16 v26, v4

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-wide/from16 v32, v12

    move-object/from16 v34, v14

    move-object/from16 v36, v19

    invoke-direct/range {v20 .. v36}, Laka;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v2, v20

    goto :goto_3

    .line 110
    :cond_7
    if-eqz v22, :cond_b

    .line 111
    packed-switch v21, :pswitch_data_0

    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 112
    :goto_4
    if-eqz v10, :cond_9

    .line 113
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 121
    :cond_8
    :goto_5
    new-instance v9, Lake;

    move-object v10, v3

    move-object v11, v2

    move-wide v12, v4

    move-wide v14, v6

    move/from16 v16, v8

    move-object/from16 v18, v22

    invoke-direct/range {v9 .. v18}, Lake;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V

    .line 123
    move/from16 v0, v35

    invoke-virtual {v9, v0}, Lake;->d(Z)V

    move-object v2, v9

    .line 124
    goto :goto_3

    .line 111
    :pswitch_0
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    :pswitch_1
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    :pswitch_2
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    :pswitch_3
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    .line 114
    :cond_9
    if-eqz v23, :cond_8

    .line 115
    sget-object v9, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v17

    if-ne v0, v9, :cond_a

    .line 116
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    .line 118
    :cond_a
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_5

    .line 126
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
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

    .line 312
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 314
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
            "Laji;",
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
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 305
    new-instance v3, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Laji;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    return-object v1
.end method

.method public static a()V
    .locals 7

    .prologue
    .line 248
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    invoke-virtual {v1}, Lakx;->f()Ljava/util/List;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 250
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v5

    .line 251
    monitor-enter v5

    .line 252
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 253
    instance-of v3, v2, Laka;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Laka;

    move-object v3, v0

    invoke-virtual {v3}, Laka;->B()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Laka;

    move-object v3, v0

    invoke-virtual {v3}, Laka;->an()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    check-cast v0, Laka;

    move-object v3, v0

    invoke-virtual {v3}, Laka;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    :cond_1
    check-cast v2, Laka;

    invoke-virtual {v2, v1}, Laka;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :cond_3
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 3
    .param p0    # Lcom/snapchat/android/model/Mediabryo;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/snapchat/android/model/Mediabryo;->h()I

    move-result v1

    .line 319
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
    .locals 7

    .prologue
    .line 283
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    invoke-virtual {v1}, Lakx;->f()Ljava/util/List;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 285
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v5

    .line 286
    monitor-enter v5

    .line 287
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 288
    instance-of v3, v2, Laka;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Laka;

    move-object v3, v0

    invoke-virtual {v3}, Laka;->an()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    check-cast v2, Laka;

    invoke-virtual {v2, v1}, Laka;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :cond_2
    return-void
.end method

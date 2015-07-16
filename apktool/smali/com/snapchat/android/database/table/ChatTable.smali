.class public final Lcom/snapchat/android/database/table/ChatTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ChatTable$ChatSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lakw;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/snapchat/android/database/table/ChatTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v2

    .line 56
    array-length v3, v2

    .line 57
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 58
    :goto_0
    if-ge v1, v3, :cond_0

    .line 59
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ChatTable;->b:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 65
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/ChatTable;
    .locals 2

    .prologue
    .line 129
    const-class v1, Lcom/snapchat/android/database/table/ChatTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable;->c:Lcom/snapchat/android/database/table/ChatTable;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/snapchat/android/database/table/ChatTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ChatTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ChatTable;->c:Lcom/snapchat/android/database/table/ChatTable;

    .line 132
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable;->c:Lcom/snapchat/android/database/table/ChatTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 29
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v3, "Chat"

    sget-object v4, Lcom/snapchat/android/database/table/ChatTable;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 263
    if-eqz v7, :cond_9

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    :cond_0
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 269
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    :cond_1
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->USER_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->STATUS_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ACK_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v20

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_RELEASED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    move v6, v2

    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    move v5, v2

    :goto_2
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEQ_NUM:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->HAS_LINKS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    move v3, v2

    :goto_4
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_WIDTH:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_HEIGHT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v2, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    :cond_2
    :goto_5
    packed-switch v2, :pswitch_data_0

    new-instance v2, Lale$a;

    invoke-direct {v2, v11, v12}, Lale$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lale;

    const/4 v11, 0x0

    invoke-direct {v3, v2, v11}, Lale;-><init>(Lale$a;B)V

    :goto_6
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RELEASED_TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v3, v8}, Lakw;->c(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lakw;->a(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lakw;->c(J)V

    invoke-virtual {v3, v5}, Lakw;->b(Z)V

    invoke-virtual {v3, v4}, Lakw;->c(Z)V

    invoke-virtual {v3, v6}, Lakw;->a(Z)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lakw;->a(I)V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lakw;->b(I)V

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lakw;->b(J)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lakw;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lakw;->d(J)V

    if-eqz v6, :cond_3

    invoke-virtual {v3, v12, v13}, Lakw;->f(J)V

    :cond_3
    invoke-virtual {v3, v14}, Lakw;->b(Ljava/lang/String;)V

    const-string v2, "media"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "dsnap"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    new-instance v4, Layv;

    invoke-direct {v4}, Layv;-><init>()V

    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    move-object v2, v0

    iget-object v5, v4, Layv;->mSlightlySecurePreferences:Laze;

    sget-object v6, Lazh;->CHAT_MEDIA_KEYS_AND_IVS:Lazf;

    invoke-virtual {v5, v6}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_5

    const/4 v3, 0x0

    .line 274
    :cond_5
    if-eqz v3, :cond_8

    .line 275
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 277
    if-nez v2, :cond_6

    .line 278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v5, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v5, v6, :cond_7

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lakw;->U()J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x4e20

    cmp-long v5, v8, v12

    if-lez v5, :cond_12

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v5, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 284
    :cond_7
    :goto_8
    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_a
    return-object v10

    .line 266
    :cond_b
    :try_start_1
    invoke-static {v2}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v2

    goto/16 :goto_0

    .line 270
    :cond_c
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_4

    :sswitch_0
    const-string v28, "text"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_5

    :sswitch_1
    const-string v28, "media"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_5

    :sswitch_2
    const-string v28, "dsnap"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_3
    const-string v28, "screenshot"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    const/4 v2, 0x3

    goto/16 :goto_5

    :pswitch_0
    new-instance v2, Lald$a;

    invoke-direct {v2, v11, v12}, Lald$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v2, Lald$a;->text:Ljava/lang/String;

    iput-boolean v3, v2, Lald$a;->hasLinks:Z

    invoke-virtual {v2}, Lald$a;->a()Lald;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_1
    new-instance v2, Lcom/snapchat/android/model/chat/ChatMedia$a;

    invoke-direct {v2, v11, v12}, Lcom/snapchat/android/model/chat/ChatMedia$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->mediaId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatMedia$a;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$a;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->width:I

    move/from16 v0, v27

    iput v0, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->height:I

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia$a;->a()Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_2
    new-instance v2, Lalc$a;

    invoke-direct {v2, v11, v12}, Lalc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->mediaId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatMedia$a;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$a;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->width:I

    move/from16 v0, v27

    iput v0, v2, Lcom/snapchat/android/model/chat/ChatMedia$a;->height:I

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia$a;->a()Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_3
    new-instance v2, Lalb$a;

    invoke-direct {v2, v11, v12}, Lalb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lalb$a;->a()Lalb;

    move-result-object v3

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v4, v5}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lays;

    if-nez v4, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_11
    iget-object v5, v4, Lays;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/snapchat/android/model/chat/ChatMedia;->f(Ljava/lang/String;)V

    iget-object v4, v4, Lays;->mIv:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/chat/ChatMedia;->g(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_7

    .line 282
    :cond_12
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/snapchat/android/database/table/ChatTable$1;

    invoke-direct {v6, v3, v4}, Lcom/snapchat/android/database/table/ChatTable$1;-><init>(Lakw;Ljava/lang/String;)V

    const-wide/16 v12, 0x4e20

    sub-long v8, v12, v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    .line 289
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_13

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v2

    .line 270
    :sswitch_data_0
    .sparse-switch
        -0x18d27a9a -> :sswitch_3
        0x36452d -> :sswitch_0
        0x5b71e2e -> :sswitch_2
        0x62f6fe4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lakw;Lcom/snapchat/android/model/Snap$TargetView;Layv;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 203
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->U()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    .line 209
    :cond_2
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ACK_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->USER_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEQ_NUM:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->t()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->u()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->v()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_RELEASED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lakw;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lakw;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lakw;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RELEASED_TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->y()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->STATUS_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    instance-of v0, p1, Lald;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 233
    check-cast v0, Lald;

    .line 234
    sget-object v4, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->HAS_LINKS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, v0, Lald;->mHasLinks:Z

    if-eqz v0, :cond_9

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    :cond_4
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_5

    .line 239
    check-cast p1, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 240
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_5
    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lazh;->CHAT_MEDIA_KEYS_AND_IVS:Lazf;

    new-instance v5, Lays;

    invoke-direct {v5, v0, v2}, Lays;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p3, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p3, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_6
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p3, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_WIDTH:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_HEIGHT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    :cond_5
    const-string v0, "Chat"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 222
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 224
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 225
    goto/16 :goto_3

    :cond_9
    move v1, v2

    .line 234
    goto/16 :goto_4

    .line 241
    :cond_a
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 245
    :cond_b
    iget-object v0, p3, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v0, v4}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_6

    :cond_c
    invoke-virtual {p3, v0}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lakw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "Chat"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    move-result-object v2

    .line 144
    array-length v3, v2

    .line 145
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 146
    aget-object v4, v2, v0

    .line 147
    if-lez v0, :cond_0

    .line 148
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/snapchat/android/database/table/ReceivedSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laka;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/snapchat/android/database/table/ReceivedSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v1

    .line 50
    array-length v2, v1

    .line 51
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 53
    sget-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/ReceivedSnapTable;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/snapchat/android/database/table/ReceivedSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;

    .line 61
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 40
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Lchd;
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
    .line 241
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v3, "ReceivedSnaps"

    sget-object v4, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 247
    if-eqz v39, :cond_4

    :try_start_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    :cond_0
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 253
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    :cond_1
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    const/4 v11, 0x1

    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENDER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    const/16 v17, 0x1

    :goto_2
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_MEDIA_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_HIDE_TIMER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_9

    const/16 v36, 0x1

    :goto_3
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_a

    const/4 v2, 0x1

    move/from16 v19, v2

    :goto_4
    if-nez v35, :cond_b

    new-instance v2, Laka;

    invoke-static {v12}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->fromString(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v12

    invoke-direct/range {v2 .. v18}, Laka;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v20, v2

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Laka;->a(Z)V

    .line 258
    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 263
    if-nez v2, :cond_2

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :cond_2
    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, v38

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 271
    :cond_4
    if-eqz v39, :cond_5

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_5
    return-object v38

    .line 250
    :cond_6
    :try_start_1
    invoke-static {v2}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v2

    goto/16 :goto_0

    .line 254
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v36, 0x0

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    move/from16 v19, v2

    goto :goto_4

    :cond_b
    new-instance v20, Lajj;

    invoke-static {v12}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->fromString(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v28

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v29, v13

    move-wide/from16 v30, v14

    move-object/from16 v32, v16

    move-object/from16 v37, v18

    invoke-direct/range {v20 .. v37}, Lajj;-><init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 271
    :catchall_0
    move-exception v2

    if-eqz v39, :cond_c

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laka;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 200
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->V()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->U()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Laka;->j()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    .line 207
    :cond_2
    sget-object v4, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENDER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->ai()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Laka;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Laka;->ao()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->G()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 214
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Laka;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->F()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    invoke-virtual {p2}, Laka;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_3
    instance-of v0, p2, Lajj;

    if-eqz v0, :cond_4

    .line 224
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_MEDIA_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lajj;

    iget-object v0, v0, Lajj;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lajj;

    iget-object v0, v0, Lajj;->mActionUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lajj;

    iget-object v0, v0, Lajj;->mActionText:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_HIDE_TIMER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laka;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    :cond_4
    const-string v0, "ReceivedSnaps"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 210
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 212
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 214
    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 227
    goto :goto_4
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
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
            "Laka;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "ReceivedSnaps"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    move-result-object v2

    .line 78
    array-length v3, v2

    .line 79
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 80
    aget-object v4, v2, v0

    .line 81
    if-lez v0, :cond_0

    .line 82
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/snapchat/android/database/table/SentSnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laji;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/snapchat/android/database/table/SentSnapTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v1

    .line 45
    array-length v2, v1

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 48
    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/SentSnapTable;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/snapchat/android/database/table/SentSnapTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/android/database/table/SentSnapTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/SentSnapTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;

    .line 56
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable;->b:Lcom/snapchat/android/database/table/SentSnapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 20
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
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
    .line 205
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 207
    const-string v3, "SentSnaps"

    sget-object v4, Lcom/snapchat/android/database/table/SentSnapTable;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 212
    if-eqz v19, :cond_5

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    :cond_0
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v2

    .line 217
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    :cond_1
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->RECIPIENT:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->URI:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TIME_OF_LAST_SEND_ATTEMPT:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    sget-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    const/16 v17, 0x1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v14, 0x0

    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_2
    new-instance v3, Laji;

    invoke-static {v11}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->fromString(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v11

    invoke-direct/range {v3 .. v17}, Laji;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    invoke-virtual {v3, v2}, Laji;->d(Z)V

    .line 222
    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 224
    if-nez v2, :cond_2

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v3}, Laji;->N()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Laji;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    invoke-virtual {v3}, Laji;->e()V

    .line 230
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v5

    iget-object v3, v3, Laji;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lajn;->c(Ljava/lang/String;)V

    .line 232
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 236
    :cond_5
    if-eqz v19, :cond_6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_6
    return-object v18

    .line 218
    :cond_7
    const/16 v17, 0x0

    goto :goto_0

    :cond_8
    :try_start_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 236
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laji;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 177
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->ag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Laji;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->W()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->RECIPIENT:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Laji;->mRecipient:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->ak()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p2, Laji;->mZipped:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Laji;->mDisplayTime:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->URI:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p2, Laji;->mSnapUriString:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TIME_OF_LAST_SEND_ATTEMPT:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p2, Laji;->mTimeOfLastSendAttempt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Laji;->aq()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v0, "SentSnapTable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "saveSnapInTransaction values="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const-string v0, "SentSnaps"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 183
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 191
    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "SentSnaps"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    move-result-object v2

    .line 73
    array-length v3, v2

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 75
    aget-object v4, v2, v0

    .line 76
    if-lez v0, :cond_0

    .line 77
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.class public final Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;
    .locals 2

    .prologue
    .line 230
    const-class v1, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    .line 233
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lakp;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "Save hashed phone number:"

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "requested at timestamp:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "FindFriendRequestCacheTable"

    const/4 v1, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    throw v0

    .line 73
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public static a(Lakp;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lbhp;->b()V

    .line 92
    if-eqz p0, :cond_0

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 101
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {}, Lbhp;->b()V

    const-string v3, "FindFriendRequestCacheTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    throw v0

    .line 104
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public static e(Lakp;)Ljava/util/Map;
    .locals 9
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 38
    if-eqz p0, :cond_0

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 56
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    const-string v1, "FindFriendRequestCacheTable"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 45
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FindFriendRequestCacheTable"

    aput-object v3, v0, v2

    .line 46
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v2, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 50
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_4
    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v8

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_5
    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 29
    check-cast p1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    iget-object v0, v1, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
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
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->values()[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "FindFriendRequestCacheTable"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->values()[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    move-result-object v2

    .line 152
    array-length v3, v2

    .line 153
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 154
    aget-object v4, v2, v0

    .line 155
    if-lez v0, :cond_0

    .line 156
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->a(Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->b(Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

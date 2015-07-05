.class Lcom/snapchat/android/analytics/framework/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/analytics/framework/DatabaseHelper;


# instance fields
.field private b:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/analytics/framework/Constants;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/Constants;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b:Ljava/io/File;

    .line 46
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;
    .locals 3

    .prologue
    .line 37
    const-class v1, Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a:Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a:Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    .line 40
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a:Lcom/snapchat/android/analytics/framework/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()J
    .locals 7

    .prologue
    .line 113
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 116
    const-string v3, "SELECT COUNT(*) FROM events"

    .line 117
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    :try_start_2
    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "getNumberRows failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 63
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v4, "event"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "events"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 69
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 70
    :try_start_1
    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "Insert failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 72
    :catch_0
    move-exception v0

    move-object v7, v0

    move-wide v0, v2

    move-object v2, v7

    .line 73
    :goto_1
    :try_start_3
    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "addEvent failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :try_start_4
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :catch_1
    move-exception v2

    :try_start_6
    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "delete failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 77
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 72
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method final declared-synchronized a(I)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 83
    monitor-enter p0

    const-wide/16 v10, -0x1

    .line 84
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    const-string v1, "events"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    move-wide v2, v10

    .line 91
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 93
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v0, "sequence_id"

    invoke-virtual {v4, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v2, v10

    .line 100
    goto :goto_1

    :cond_0
    move-object v8, v9

    .line 88
    goto :goto_0

    .line 104
    :cond_1
    if-eqz v1, :cond_2

    .line 105
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    .line 109
    :goto_2
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    move-object v1, v9

    move-wide v2, v10

    .line 102
    :goto_3
    :try_start_4
    const-string v4, "com.amplitude.api.DatabaseHelper"

    const-string v5, "getEvents failed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    if-eqz v1, :cond_3

    .line 105
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_4
    if-eqz v1, :cond_4

    .line 105
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 101
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method final declared-synchronized a(J)V
    .locals 5

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id <= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_2
    const-string v1, "com.amplitude.api.DatabaseHelper"

    const-string v2, "removeEvents failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final declared-synchronized b()J
    .locals 7

    .prologue
    const-wide/16 v0, -0x1

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 131
    const-string v3, "SELECT id FROM events LIMIT 1 OFFSET 19"

    .line 133
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 136
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 143
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    :try_start_3
    const-string v3, "com.amplitude.api.DatabaseHelper"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDoneException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v2

    .line 141
    :try_start_4
    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "getNthEventId failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    :try_start_5
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method final declared-synchronized b(J)V
    .locals 5

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_2
    const-string v1, "com.amplitude.api.DatabaseHelper"

    const-string v2, "removeEvent failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :try_start_3
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 58
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

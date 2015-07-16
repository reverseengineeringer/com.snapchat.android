.class public abstract Lcom/snapchat/android/database/table/IdToFileTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Laxn$a;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->SNAP_ID:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->FILE_PATH:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    iget-object v0, v0, Laxn$a;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->LAST_ACCESS_MILLISECONDS:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn$a;

    iget-wide v4, v0, Laxn$a;->mLastAccessMilliseconds:J

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    iget-object v0, v1, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->values()[Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 60
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->values()[Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->a(Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->b(Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public final f()Ljava/util/Map;
    .locals 8
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxn$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/database/table/IdToFileTable;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/IdToFileTable;->c()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/IdToFileTable;->m()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v2

    .line 34
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/IdToFileTable;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    sget-object v0, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->SNAP_ID:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v3, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->FILE_PATH:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->getColumnNumber()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    sget-object v4, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->LAST_ACCESS_MILLISECONDS:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 45
    new-instance v6, Laxn$a;

    invoke-direct {v6, v3, v4, v5}, Laxn$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 52
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_4
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_5
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

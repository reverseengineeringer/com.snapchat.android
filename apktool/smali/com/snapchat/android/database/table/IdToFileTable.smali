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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Laad;

    invoke-direct {v1}, Laad;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->SNAP_ID:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v2, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->FILE_PATH:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    iget-object v0, v1, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->values()[Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 57
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->values()[Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 58
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

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method public final f()Ljava/util/Map;
    .locals 8
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
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

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/IdToFileTable;->m()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v2

    .line 33
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v0, "IdToFileTable"

    const-string v3, "Querying [%s] database table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/IdToFileTable;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->SNAP_ID:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->FILE_PATH:Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/IdToFileTable$IdToFileSchema;->getColumnNumber()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 47
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_4
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_5
    invoke-static {}, Lcom/snapchat/android/database/table/IdToFileTable;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

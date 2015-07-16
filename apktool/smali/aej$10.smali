.class public final Laej$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method public constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Laej$10;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 465
    iget-object v0, p0, Laej$10;->a:Laej;

    invoke-static {v0}, Laej;->f(Laej;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Laej$10;->a:Laej;

    invoke-static {v0}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    move-result-object v0

    iget-object v2, p0, Laej$10;->a:Laej;

    invoke-static {v2}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "EditionViewState"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->c:Laef;

    iget-object v0, v0, Laef;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$c;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Laef$c;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "EditionViewState"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Insertion in DB failed for EditionViewState"

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    :goto_0
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a()Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    move-result-object v0

    iget-object v2, p0, Laej$10;->a:Laej;

    invoke-static {v2}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Landroid/content/Context;)V

    .line 469
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;->a()Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;

    move-result-object v0

    iget-object v2, p0, Laej$10;->a:Laej;

    invoke-static {v2}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;->a(Landroid/content/Context;)V

    .line 471
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 467
    :cond_2
    :try_start_4
    const-string v0, "EditionViewState"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v4, "Edition"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, v3, v4, v5}, Laau;->a(Ljava/lang/String;Laav;Ljava/lang/String;Laav;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 467
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

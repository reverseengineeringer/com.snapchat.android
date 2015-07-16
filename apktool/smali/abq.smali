.class public final Labq;
.super Lcom/snapchat/android/database/table/StorySnapTable;
.source "SourceFile"


# static fields
.field private static a:Labq;


# instance fields
.field private final b:Lacb;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-static {}, Lacb;->a()Lacb;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labq;-><init>(Layv;Lakr;Lacb;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Layv;Lakr;Lacb;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lazh;->MY_STORY_KEYS_AND_IVS:Lazf;

    invoke-direct {p0, p2, p1, v0}, Lcom/snapchat/android/database/table/StorySnapTable;-><init>(Lakr;Layv;Lazf;)V

    .line 42
    iput-object p3, p0, Labq;->b:Lacb;

    .line 43
    return-void
.end method

.method public static declared-synchronized a()Labq;
    .locals 2

    .prologue
    .line 46
    const-class v1, Labq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labq;->a:Labq;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Labq;

    invoke-direct {v0}, Labq;-><init>()V

    sput-object v0, Labq;->a:Labq;

    .line 49
    :cond_0
    sget-object v0, Labq;->a:Labq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v0, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lacb;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v6

    .line 62
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v7

    iget-object v8, v7, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v8

    :try_start_0
    iget-object v0, v7, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->ay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lakl;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v10, v0, Lakl;->mStoryId:Ljava/lang/String;

    if-nez v10, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lakk;->mStories:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    if-nez v1, :cond_9

    new-instance v1, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v1, v10}, Lcom/snapchat/android/model/StoryGroup;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lakk;->mStories:Ljava/util/Map;

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    :goto_1
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    new-instance v3, Lbki;

    invoke-direct {v3}, Lbki;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbki;->a(Ljava/lang/Integer;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbkk;

    invoke-virtual {v2}, Lbkk;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lbki;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbki;->b(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v1, v3

    :goto_3
    new-instance v3, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v3, v0, v2, v1}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lakl;Ljava/util/List;Lbki;)V

    iput-object v10, v3, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Lakk;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto/16 :goto_0

    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v7, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, v7, Lakk;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    instance-of v3, v0, Lajx;

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_4

    :cond_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v7}, Lakk;->j()V

    .line 63
    return-void

    :cond_7
    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :cond_8
    move-object v1, v4

    move-object v2, v4

    goto :goto_3

    :cond_9
    move-object v5, v1

    goto/16 :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "MyPostedStorySnapTable"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Labq;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Labq;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_0
    iget-object v0, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 82
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->g()Ljava/util/List;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-static {}, Labq;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 86
    :cond_2
    :try_start_1
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    sget-object v3, Lazh;->MY_STORY_KEYS_AND_IVS:Lazf;

    invoke-virtual {v0, v2, v3}, Layv;->a(Ljava/util/List;Lazf;)V

    .line 89
    invoke-virtual {p0}, Labq;->j()V

    .line 91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "saveToDatabase MyPostedStorySnapTable "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " item(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 94
    invoke-static {v0}, Labq;->a(Lakl;)Landroid/content/ContentValues;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 96
    iget-object v3, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MyPostedStorySnapTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 102
    :cond_4
    invoke-static {}, Lacb;->a()Lacb;

    move-result-object v0

    iget-object v2, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, v1}, Lacb;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v0, p0, Labq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-static {}, Labq;->i()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

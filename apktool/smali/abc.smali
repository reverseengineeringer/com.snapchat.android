.class public final Labc;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbjj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Labc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->values()[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    move-result-object v1

    .line 40
    array-length v2, v1

    .line 41
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Labc;->a:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 43
    sget-object v3, Labc;->a:[Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Labc;
    .locals 2

    .prologue
    .line 91
    const-class v1, Labc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labc;->b:Labc;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sput-object v0, Labc;->b:Labc;

    .line 94
    :cond_0
    sget-object v0, Labc;->b:Labc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 13
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 164
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string v1, "StorySnapNote"

    sget-object v2, Labc;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " DESC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 169
    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    if-nez v0, :cond_8

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 182
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 183
    if-nez v0, :cond_7

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 188
    :goto_1
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->VIEWER:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->SCREENSHOTTED:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    move v1, v8

    :goto_2
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_KEY:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_FIELD:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lbjk;

    invoke-direct {v0}, Lbjk;-><init>()V

    invoke-virtual {v0, v11}, Lbjk;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lbjk;->b(Ljava/lang/String;)V

    :goto_3
    new-instance v11, Lbjj;

    invoke-direct {v11}, Lbjj;-><init>()V

    invoke-virtual {v11, v5}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Lbjj;->a(Ljava/lang/Boolean;)Lbjj;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lbjj;->a(Ljava/lang/Long;)Lbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbjj;->a(Lbjk;)Lbjj;

    move-result-object v0

    .line 189
    const-string v1, "StorySnapNoteTable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Load snap note "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :cond_2
    if-eqz v4, :cond_3

    .line 196
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_3
    return-object v10

    :cond_4
    move v1, v9

    .line 188
    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3

    .line 195
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    .line 196
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
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
            "Lbjj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 10
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 111
    iget-object v4, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 112
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjj;

    .line 115
    invoke-virtual {v4}, Lajr;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 116
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    const-string v1, "StorySnapNoteTable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Save note into DB: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const-string v1, "StorySnapNote"

    const/4 v6, 0x5

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, v4, Lajr;->mStoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v1, "my_story_ads79sdf"

    :cond_3
    new-instance v7, Laad;

    invoke-direct {v7}, Laad;-><init>()V

    sget-object v8, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v7, v8, v6}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v6, v7, v1}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->VIEWER:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbjj;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->SCREENSHOTTED:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbjj;->b()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Laad;->a(Lzw;Z)Laad;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbjj;->c()Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Laad;->a(Lzw;J)Laad;

    move-result-object v1

    invoke-virtual {v0}, Lbjj;->d()Lbjk;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_KEY:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbjk;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_FIELD:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbjk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    :goto_2
    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    goto :goto_1

    .line 125
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->values()[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "StorySnapNote"

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

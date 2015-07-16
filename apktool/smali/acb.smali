.class public final Lacb;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbkk;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lacb;


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

    sput-object v0, Lacb;->a:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 43
    sget-object v3, Lacb;->a:[Ljava/lang/String;

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

.method public static declared-synchronized a()Lacb;
    .locals 2

    .prologue
    .line 91
    const-class v1, Lacb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lacb;->b:Lacb;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lacb;

    invoke-direct {v0}, Lacb;-><init>()V

    sput-object v0, Lacb;->b:Lacb;

    .line 94
    :cond_0
    sget-object v0, Lacb;->b:Lacb;
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
    .locals 12
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
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 164
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string v1, "StorySnapNote"

    sget-object v2, Lacb;->a:[Ljava/lang/String;

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
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    if-nez v0, :cond_8

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v10

    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_FIELD:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lbkl;

    invoke-direct {v0}, Lbkl;-><init>()V

    invoke-virtual {v0, v10}, Lbkl;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lbkl;->b(Ljava/lang/String;)V

    :goto_3
    new-instance v10, Lbkk;

    invoke-direct {v10}, Lbkk;-><init>()V

    invoke-virtual {v10, v5}, Lbkk;->a(Ljava/lang/String;)Lbkk;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Lbkk;->a(Ljava/lang/Boolean;)Lbkk;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lbkk;->a(Ljava/lang/Long;)Lbkk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbkk;->a(Lbkl;)Lbkk;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Load snap note "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    return-object v9

    .line 188
    :cond_4
    const/4 v0, 0x0

    move v1, v0

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

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lbkk;",
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
        .annotation build Lchc;
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
    iget-object v4, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

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

    check-cast v0, Lbkk;

    .line 115
    invoke-virtual {v4}, Lakl;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 116
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Save note into DB: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "StorySnapNote"

    const/4 v6, 0x5

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, v4, Lakl;->mStoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v1, "my_story_ads79sdf"

    :cond_3
    new-instance v7, Labc;

    invoke-direct {v7}, Labc;-><init>()V

    sget-object v8, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v7, v8, v6}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_ID:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v6, v7, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->VIEWER:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbkk;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->SCREENSHOTTED:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbkk;->b()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Labc;->a(Laav;Z)Labc;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbkk;->c()Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Labc;->a(Laav;J)Labc;

    move-result-object v1

    invoke-virtual {v0}, Lbkk;->d()Lbkl;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_KEY:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbkl;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->STORY_POINTER_FIELD:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, Lbkl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    :goto_2
    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    goto :goto_1

    .line 125
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final b()[Laav;
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

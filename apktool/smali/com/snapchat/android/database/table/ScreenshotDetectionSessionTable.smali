.class public final Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laos;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    .line 29
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 18
    check-cast p1, Laos;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Labc;

    invoke-direct {v1}, Labc;-><init>()V

    instance-of v2, p1, Laow;

    if-eqz v2, :cond_2

    const-string v0, "SnapViewingSession"

    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->SENDER:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    iget-object v3, p1, Laos;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->START_TIME:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    iget-wide v4, p1, Laos;->b:J

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->END_TIME:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    iget-wide v4, p1, Laos;->c:J

    invoke-virtual {v1, v2, v4, v5}, Labc;->a(Laav;J)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->TYPE:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v1, v2, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->EXTRA:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {p1}, Laos;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v0, v1, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0

    :cond_2
    instance-of v2, p1, Laor;

    if-eqz v2, :cond_0

    const-string v0, "ChatViewingSession"

    goto :goto_1
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 25

    .prologue
    .line 18
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->SENDER:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->START_TIME:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->END_TIME:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->TYPE:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "SnapViewingSession"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->EXTRA:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Laur;

    invoke-direct {v8}, Laur;-><init>()V

    const-class v9, Laow$a;

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Laur;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laow$a;

    if-nez v2, :cond_0

    new-instance v2, Laow;

    invoke-direct/range {v2 .. v7}, Laow;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v9, Laow;

    iget-object v10, v2, Laow$a;->c:Ljava/lang/String;

    iget-boolean v11, v2, Laow$a;->f:Z

    iget-wide v12, v2, Laow$a;->e:D

    iget-object v0, v2, Laow$a;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Laow$a;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v2, Laow$a;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v2, Laow$a;->h:Lmj;

    move-object/from16 v21, v0

    iget-boolean v0, v2, Laow$a;->g:Z

    move/from16 v22, v0

    iget-object v0, v2, Laow$a;->i:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v2, Laow$a;->j:I

    move/from16 v24, v0

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v9 .. v24}, Laow;-><init>(Ljava/lang/String;ZDJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmj;ZLjava/lang/String;I)V

    move-object v2, v9

    goto :goto_0

    :cond_1
    const-string v8, "ChatViewingSession"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Laor;

    invoke-direct/range {v2 .. v7}, Laor;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
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
            "Laos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Laot;->a()Laot;

    move-result-object v0

    invoke-virtual {v0}, Laot;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Laot;->a()Laot;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Laot;->b:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Laot;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iget-object v0, v0, Laot;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->values()[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "ViewingSessions"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 40
    invoke-static {}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->values()[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

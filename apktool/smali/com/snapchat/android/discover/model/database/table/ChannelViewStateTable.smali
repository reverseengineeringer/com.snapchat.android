.class public final Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laef$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;


# instance fields
.field private final d:Laef;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->c:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    .line 53
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    aget-object v3, v1, v0

    .line 59
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 60
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Laef;->a()Laef;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;-><init>(Laef;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Laef;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->d:Laef;

    .line 49
    return-void
.end method

.method private static a(Laef$a;)Landroid/content/ContentValues;
    .locals 4
    .param p0    # Laef$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 203
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    iget-object v2, p0, Laef$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->TIME_LAST_VIEWED_MILLISECONDS:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    iget-wide v2, p0, Laef$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Labc;->a(Laav;J)Labc;

    move-result-object v0

    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static a()Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->c:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 9
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Laef$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 212
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 214
    const-string v1, "ChannelViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->TIME_LAST_VIEWED_MILLISECONDS:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v4, Laef$a;

    invoke-direct {v4, v0, v2, v3}, Laef$a;-><init>(Ljava/lang/String;J)V

    .line 221
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2
    return-object v8

    .line 225
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Laef$a;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Laef$a;)Landroid/content/ContentValues;

    move-result-object v0

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
            "Laef$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 159
    invoke-static {p1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    :try_start_0
    const-string v0, "ChannelViewState"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->d:Laef;

    iget-object v0, v0, Laef;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$a;

    .line 169
    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Laef$a;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "ChannelViewState"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Insertion in DB failed for ChannelViewState"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_1
    :try_start_2
    const-string v0, "ChannelViewState"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->ID:Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    const-string v3, "PublisherChannel"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v0, v2, v3, v4}, Laau;->a(Ljava/lang/String;Laav;Ljava/lang/String;Laav;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    throw v0
.end method

.method public final b(Lakp;)V
    .locals 8

    .prologue
    .line 138
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    :try_start_0
    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->d:Laef;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laef$a;

    iget-object v4, v0, Laef$a;->a:Ljava/lang/String;

    iget-wide v6, v0, Laef$a;->b:J

    invoke-virtual {v2, v4, v6, v7}, Laef;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    throw v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, v2, Laef;->a:Laej;

    invoke-virtual {v0}, Laej;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "ChannelViewState"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;

    move-result-object v2

    .line 110
    array-length v3, v2

    .line 111
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 112
    aget-object v4, v2, v0

    .line 113
    if-lez v0, :cond_0

    .line 114
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->a(Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->b(Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable$ChannelViewStateSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

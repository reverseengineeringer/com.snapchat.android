.class public final Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbkv;",
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

.field private static c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;


# instance fields
.field private final d:Lakr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v1

    .line 59
    array-length v2, v1

    .line 60
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 63
    aget-object v3, v1, v0

    .line 64
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 65
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;-><init>(Lakr;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lakr;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->d:Lakr;

    .line 54
    return-void
.end method

.method private static a(Lbkv;)Landroid/content/ContentValues;
    .locals 4
    .param p0    # Lbkv;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p0, :cond_0

    move-object v0, v1

    .line 207
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Labc;

    invoke-direct {v0}, Labc;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->FILLED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INVERTED_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->LOADING_ICON:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ENABLED:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Labc;->a(Laav;Z)Labc;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lbkv;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;I)Labc;

    .line 191
    :cond_1
    invoke-virtual {p0}, Lbkv;->c()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 192
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->PROMOTED_STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {p0}, Lbkv;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Labc;->a(Laav;I)Labc;

    .line 196
    :cond_2
    invoke-virtual {p0}, Lbkv;->n()Lbhv;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_4

    .line 199
    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2}, Lbhv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2}, Lbhv;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Labc;->a(Laav;Ljava/util/Map;)Labc;

    .line 207
    :goto_2
    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 203
    :cond_4
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v0, v2, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v2, v3, v1}, Labc;->a(Laav;Ljava/util/Map;)Labc;

    goto :goto_2
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 121
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 299
    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 300
    return-void
.end method

.method public static a(Landroid/content/Context;Lbku;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {}, Lakr;->aK()J

    move-result-wide v2

    invoke-virtual {p1}, Lbku;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 221
    :cond_0
    if-nez p1, :cond_2

    .line 222
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel list response."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p1}, Lbku;->a()Ljava/util/List;

    move-result-object v2

    .line 230
    if-nez v2, :cond_4

    .line 231
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null channel response list."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_3
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 243
    :try_start_0
    const-string v1, "PublisherChannel"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    invoke-static {v3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 250
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-static {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move v1, v0

    .line 252
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkv;

    .line 254
    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lbkv;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "PublisherChannel"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for PublisherChannel"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 267
    :goto_2
    invoke-static {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 254
    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    invoke-virtual {v0}, Lbkv;->m()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lbkv;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lbkv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 257
    :cond_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 259
    invoke-virtual {p1}, Lbku;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lakr;->h(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lbkv;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Lbkv;)Landroid/content/ContentValues;

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
            "Lbkv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "PublisherChannel"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    move-result-object v2

    .line 138
    array-length v3, v2

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 140
    aget-object v4, v2, v0

    .line 141
    if-lez v0, :cond_0

    .line 142
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 147
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

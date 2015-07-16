.class public final Ladp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladp$a;
    }
.end annotation


# instance fields
.field private final a:Lalw;

.field private final b:Laej;

.field private final c:Laed;

.field private final d:Laxn;

.field private final e:Ladr;

.field private final f:Ladc;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lacq;

.field private final i:Lban;

.field private final j:Lacp;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ladp$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 62
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v1

    invoke-static {}, Laej;->a()Laej;

    move-result-object v2

    invoke-static {}, Laed;->a()Laed;

    move-result-object v3

    sget-object v4, Laec;->b:Laxn;

    new-instance v5, Ladr;

    invoke-direct {v5}, Ladr;-><init>()V

    new-instance v6, Ladc;

    invoke-direct {v6}, Ladc;-><init>()V

    new-instance v7, Lbgq;

    invoke-direct {v7}, Lbgq;-><init>()V

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v8

    new-instance v9, Lban;

    invoke-direct {v9}, Lban;-><init>()V

    new-instance v10, Lacp;

    invoke-direct {v10}, Lacp;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Ladp;-><init>(Lalw;Laej;Laed;Laxn;Ladr;Ladc;Ljavax/inject/Provider;Lacq;Lban;Lacp;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lalw;Laej;Laed;Laxn;Ladr;Ladc;Ljavax/inject/Provider;Lacq;Lban;Lacp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalw;",
            "Laej;",
            "Laed;",
            "Laxn;",
            "Ladr;",
            "Ladc;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lacq;",
            "Lban;",
            "Lacp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladp;->k:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ladp;->l:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Ladp;->a:Lalw;

    .line 75
    iput-object p2, p0, Ladp;->b:Laej;

    .line 76
    iput-object p3, p0, Ladp;->c:Laed;

    .line 77
    iput-object p4, p0, Ladp;->d:Laxn;

    .line 78
    iput-object p5, p0, Ladp;->e:Ladr;

    .line 79
    iput-object p6, p0, Ladp;->f:Ladc;

    .line 80
    iput-object p7, p0, Ladp;->g:Ljavax/inject/Provider;

    .line 81
    iput-object p8, p0, Ladp;->h:Lacq;

    .line 82
    iput-object p9, p0, Ladp;->i:Lban;

    .line 83
    iput-object p10, p0, Ladp;->j:Lacp;

    .line 84
    return-void
.end method

.method private a(Ljava/lang/String;)Ladp$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v1, p0, Ladp;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Ladp;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladp$a;

    monitor-exit v1

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Ladp;->b:Laej;

    iget-object v1, v0, Laej;->h:Landroid/os/Handler;

    new-instance v2, Laej$8;

    invoke-direct {v2, v0, p1, p2}, Laej$8;-><init>(Laej;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method


# virtual methods
.method public final a(Laly;)V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ladp;->a(Ljava/lang/String;)Ladp$a;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, v0, Ladp$a;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 221
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 222
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v1}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0
.end method

.method public final a(Laly;Lbgl;Lus;)V
    .locals 8
    .annotation build Lawj;
    .end annotation

    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ladp;->a(Ljava/lang/String;)Ladp$a;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Ladp;->h:Lacq;

    invoke-virtual {p1}, Laly;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v0, v2, v1}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 209
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, v0, Ladp$a;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 158
    iget-object v0, p1, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 159
    :goto_1
    iget-object v1, p0, Ladp;->h:Lacq;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lus;->d()Z

    move-result v4

    invoke-virtual {p3}, Lus;->c()I

    move-result v5

    int-to-long v6, v5

    const-string v5, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v1, v5, v3}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v1, v1, Lacq;->a:Lama;

    invoke-virtual {v1}, Lama;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v3, "return_size_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v3, "prefetch"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 161
    :cond_1
    invoke-virtual {p3}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 165
    iget-object v0, p3, Lus;->mCaughtException:Ljava/lang/Exception;

    instance-of v0, v0, Lamb;

    if-eqz v0, :cond_3

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 168
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 173
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 177
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 181
    :try_start_0
    iget-object v0, p0, Ladp;->d:Laxn;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lbgl;->mBuffer:[B

    iget v4, p2, Lbgl;->mSize:I

    invoke-virtual {v0, v1, v3, v4}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    if-nez v0, :cond_5

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 190
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 183
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 184
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 194
    :cond_5
    iget-object v1, p0, Ladp;->e:Ladr;

    invoke-virtual {v1, v0}, Ladr;->a(Ljava/lang/String;)Lbly;

    move-result-object v1

    .line 195
    if-nez v1, :cond_6

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 197
    const-string v0, "Bad Discover DSnap metadata! id: %s hash: %s edition_id: %s publisher: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Ladp;->i:Lban;

    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lban;->a(Ljava/lang/Throwable;)V

    .line 200
    iget-object v0, v2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v1, v2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DISCOVER_BAD_CHUNK_METADATA"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "publisher_name"

    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v4, "dsnap_id"

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 201
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    iget-object v0, p0, Ladp;->b:Laej;

    iget-object v3, v0, Laej;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    iget-object v3, v0, Laej;->i:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_7

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null metadata response."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v1}, Lbly;->a()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to initialize with null chunk metadata section list."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v3}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblz;

    invoke-static {v6, v4, v0}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lblz;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 206
    :cond_a
    iget-object v0, p0, Ladp;->b:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->EDITION_CHUNK_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Laej;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 208
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Ladp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 205
    :catch_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z
    .locals 9
    .param p1    # Ladf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Ladp;->f:Ladc;

    invoke-virtual {v0}, Ladc;->a()Landroid/os/Bundle;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    iget-object v1, p1, Ladf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 109
    if-eqz v1, :cond_2

    .line 110
    iget-object v0, v1, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v0

    .line 113
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ladp;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iput-object v0, p3, Laly$a;->d:Ljava/lang/String;

    iput-object v4, p3, Laly$a;->f:Landroid/os/Bundle;

    const-string v0, "DSnap-%s #%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Laly$a;->g:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "DISCOVER"

    aput-object v4, v0, v2

    const-string v4, "STORIES"

    aput-object v4, v0, v3

    iget-object v4, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    aput-object v4, v0, v6

    iput-object v0, p3, Laly$a;->h:[Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p3, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p3, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p3, Laly$a;->j:Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Laly$a;->e:Ljava/lang/String;

    const-string v0, "DISCOVER"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, v7}, Laly$a;->a(Ljava/lang/String;Ljava/lang/String;I)Laly$a;

    .line 123
    invoke-virtual {p3}, Laly$a;->a()Laly;

    move-result-object v1

    .line 126
    iget-object v4, p0, Ladp;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    :try_start_0
    iget-object v0, p0, Ladp;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladp$a;

    .line 128
    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 131
    monitor-exit v4

    move v0, v2

    .line 144
    :goto_1
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 135
    iget-object v0, p0, Ladp;->c:Laed;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p2, v2}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 136
    iget-object v0, p0, Ladp;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ladp$a;

    iget-object v6, v1, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-direct {v5, p2, v6}, Ladp$a;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Ladp;->a:Lalw;

    invoke-virtual {v0, v1, p0}, Lalw;->a(Laly;Lalw$a;)V

    .line 140
    iget-object v0, p0, Ladp;->h:Lacq;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v4, p2, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-static {v7}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v7

    const-string v8, "publisher_name"

    invoke-virtual {v7, v8, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v7, "dsnap_id"

    invoke-virtual {v2, v7, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v4, "hash"

    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v4, "ad_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v4, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v0, v4, v1, v2}, Lacq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    move v0, v3

    .line 142
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    .line 144
    goto :goto_1

    :cond_2
    move v1, v0

    goto/16 :goto_0
.end method

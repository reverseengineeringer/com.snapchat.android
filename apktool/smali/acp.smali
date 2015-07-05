.class public final Lacp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalb$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacp$a;
    }
.end annotation


# instance fields
.field private final a:Lalb;

.field private final b:Ladj;

.field private final c:Ladd;

.field private final d:Lawp;

.field private final e:Lacr;

.field private final f:Lacc;

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

.field private final h:Labq;

.field private final i:Lazo;

.field private final j:Labp;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lacp$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 62
    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v1

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v2

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v3

    sget-object v4, Ladc;->b:Lawp;

    new-instance v5, Lacr;

    invoke-direct {v5}, Lacr;-><init>()V

    new-instance v6, Lacc;

    invoke-direct {v6}, Lacc;-><init>()V

    new-instance v7, Lbfq;

    invoke-direct {v7}, Lbfq;-><init>()V

    invoke-static {}, Labq;->a()Labq;

    move-result-object v8

    new-instance v9, Lazo;

    invoke-direct {v9}, Lazo;-><init>()V

    new-instance v10, Labp;

    invoke-direct {v10}, Labp;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lacp;-><init>(Lalb;Ladj;Ladd;Lawp;Lacr;Lacc;Ljavax/inject/Provider;Labq;Lazo;Labp;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lalb;Ladj;Ladd;Lawp;Lacr;Lacc;Ljavax/inject/Provider;Labq;Lazo;Labp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb;",
            "Ladj;",
            "Ladd;",
            "Lawp;",
            "Lacr;",
            "Lacc;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Labq;",
            "Lazo;",
            "Labp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lacp;->k:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lacp;->l:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lacp;->a:Lalb;

    .line 75
    iput-object p2, p0, Lacp;->b:Ladj;

    .line 76
    iput-object p3, p0, Lacp;->c:Ladd;

    .line 77
    iput-object p4, p0, Lacp;->d:Lawp;

    .line 78
    iput-object p5, p0, Lacp;->e:Lacr;

    .line 79
    iput-object p6, p0, Lacp;->f:Lacc;

    .line 80
    iput-object p7, p0, Lacp;->g:Ljavax/inject/Provider;

    .line 81
    iput-object p8, p0, Lacp;->h:Labq;

    .line 82
    iput-object p9, p0, Lacp;->i:Lazo;

    .line 83
    iput-object p10, p0, Lacp;->j:Labp;

    .line 84
    return-void
.end method

.method private a(Ljava/lang/String;)Lacp$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v1, p0, Lacp;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lacp;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp$a;

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
    iget-object v0, p0, Lacp;->b:Ladj;

    iget-object v1, v0, Ladj;->g:Landroid/os/Handler;

    new-instance v2, Ladj$7;

    invoke-direct {v2, v0, p1, p2}, Ladj$7;-><init>(Ladj;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method


# virtual methods
.method public final a(Lalc;)V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lacp;->a(Ljava/lang/String;)Lacp$a;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, v0, Lacp$a;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 221
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: DSnap download canceled %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v1}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 8
    .annotation build Lavl;
    .end annotation

    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lacp;->a(Ljava/lang/String;)Lacp$a;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lacp;->h:Labq;

    invoke-virtual {p1}, Lalc;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v0, v2, v1}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 209
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, v0, Lacp$a;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 158
    iget-object v0, p1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 159
    :goto_1
    iget-object v1, p0, Lacp;->h:Labq;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Luc;->d()Z

    move-result v4

    invoke-virtual {p3}, Luc;->c()I

    move-result v5

    int-to-long v6, v5

    const-string v5, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v1, v5, v3}, Labq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    iget-object v1, v1, Labq;->a:Lale;

    invoke-virtual {v1}, Lale;->f()Ljava/lang/String;

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
    invoke-virtual {p3}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 165
    iget-object v0, p3, Luc;->mCaughtException:Ljava/lang/Exception;

    instance-of v0, v0, Lalf;

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Failed to download %s, network type does not allow the download %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lalc;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_3
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: %s trying to download %s from %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lalc;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 177
    :cond_4
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Downloaded %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lacp;->d:Lawp;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lbfl;->mBuffer:[B

    iget v4, p2, Lbfl;->mSize:I

    invoke-virtual {v0, v1, v3, v4}, Lawp;->a(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    if-nez v0, :cond_5

    .line 189
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Failed to cache %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 183
    :catch_0
    move-exception v0

    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Cannot %s, external storage is not available."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 194
    :cond_5
    iget-object v1, p0, Lacp;->e:Lacr;

    invoke-virtual {v1, v0}, Lacr;->a(Ljava/lang/String;)Lbkx;

    move-result-object v1

    .line 195
    if-nez v1, :cond_6

    .line 196
    const-string v1, "DSnapDownloader"

    const-string v3, "DISCOVER-MEDIA: Failed to parse %s directory %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
    iget-object v1, p0, Lacp;->i:Lazo;

    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lazo;->a(Ljava/lang/Throwable;)V

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

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    iget-object v0, p0, Lacp;->b:Ladj;

    iget-object v3, v0, Ladj;->c:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    iget-object v3, v0, Ladj;->h:Landroid/content/Context;

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
    invoke-virtual {v1}, Lbkx;->a()Ljava/util/List;

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

    const-string v0, "DSnapTable"

    const-string v1, "safeUpdate - beginTransaction"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    check-cast v0, Lbky;

    invoke-static {v6, v4, v0}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lbky;)V

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

    const-string v0, "DSnapTable"

    const-string v1, "safeUpdate - endTransaction"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 206
    :cond_a
    iget-object v0, p0, Lacp;->b:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->EDITION_CHUNK_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ladj;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 208
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v2, v0}, Lacp;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 205
    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "DSnap"

    const-string v4, "Error while writing to database: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "DSnapTable"

    const-string v1, "safeUpdate - endTransaction"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "DSnapTable"

    const-string v2, "safeUpdate - endTransaction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z
    .locals 9
    .param p1    # Lacf;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lacp;->f:Lacc;

    invoke-virtual {v0}, Lacc;->a()Landroid/os/Bundle;

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
    iget-object v1, p1, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

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

    iget-object v0, p0, Lacp;->g:Ljavax/inject/Provider;

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
    iput-object v0, p3, Lalc$a;->d:Ljava/lang/String;

    iput-object v4, p3, Lalc$a;->f:Landroid/os/Bundle;

    const-string v0, "DSnap-%s #%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lalc$a;->g:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v4, "DISCOVER"

    aput-object v4, v0, v2

    const-string v4, "STORIES"

    aput-object v4, v0, v3

    iget-object v4, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    aput-object v4, v0, v6

    iput-object v0, p3, Lalc$a;->h:[Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p3, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p3, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p3, Lalc$a;->j:Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lalc$a;->e:Ljava/lang/String;

    const-string v0, "DISCOVER"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, v7}, Lalc$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lalc$a;

    .line 123
    invoke-virtual {p3}, Lalc$a;->a()Lalc;

    move-result-object v1

    .line 126
    iget-object v4, p0, Lacp;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    :try_start_0
    iget-object v0, p0, Lacp;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacp$a;

    .line 128
    if-eqz v0, :cond_0

    .line 130
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Duplicate download request for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    monitor-exit v4

    move v0, v2

    .line 144
    :goto_1
    return v0

    .line 134
    :cond_0
    const-string v0, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: Queueing download for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v0, v2, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lacp;->c:Ladd;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p2, v2}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 136
    iget-object v0, p0, Lacp;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lacp$a;

    iget-object v6, v1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-direct {v5, p2, v6}, Lacp$a;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)V

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Lacp;->a:Lalb;

    invoke-virtual {v0, v1, p0}, Lalb;->a(Lalc;Lalb$a;)V

    .line 140
    iget-object v0, p0, Lacp;->h:Labq;

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

    invoke-virtual {v0, v4, v1, v2}, Labq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

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

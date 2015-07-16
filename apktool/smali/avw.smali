.class public final Lavw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavw$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lavw;

.field private static final LRU_CACHE_SIZE:F = 0.025f

.field private static final TAG:Ljava/lang/String; = "StoriesThumbnailCache"

.field private static final THUMBNAIL_EXPIRATION_MINUTES:I = 0x1e


# instance fields
.field private final mBitmapPool:Lawo;

.field private final mThumbnailCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lavw$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailCacheMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lavw;

    invoke-direct {v0}, Lavw;-><init>()V

    sput-object v0, Lavw;->INSTANCE:Lavw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-direct {p0, v0}, Lavw;-><init>(Lawo;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lawo;)V
    .locals 4

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavw;->mThumbnailCacheMutex:Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Lavw;->mBitmapPool:Lawo;

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 109
    const v1, 0x3ccccccd    # 0.025f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StoriesThumbnailCache size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kilobytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Lavw$1;

    invoke-direct {v1, p0, v0}, Lavw$1;-><init>(Lavw;I)V

    iput-object v1, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    .line 125
    return-void
.end method

.method public static a()Lavw;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lavw;->INSTANCE:Lavw;

    return-object v0
.end method

.method static synthetic a(Lavw;)Lawo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lavw;->mBitmapPool:Lawo;

    return-object v0
.end method

.method static synthetic b(Lavw;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public final a(Lavx;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p1, Lavx;->mCacheKey:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavw$a;

    .line 166
    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lavw$a;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lavx;)V
    .locals 12
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 149
    iget-object v0, p2, Lavx;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;

    if-eq v0, v1, :cond_a

    .line 150
    iget-object v0, p2, Lavx;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getStorySnaps: Null StorySnap added to the list from feed item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p2, Lavx;->mCacheKey:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v4, p0, Lavw;->mThumbnailCacheMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavw$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakl;

    invoke-virtual {v1}, Lakl;->U()J

    move-result-wide v8

    iget-wide v10, v0, Lavw$a;->mFirstStoryTimestamp:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :cond_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    new-instance v1, Lavw$a;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6, v3}, Lavw$a;-><init>(Lavw;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v6, v2

    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    new-instance v0, Lavw$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lavw$2;-><init>(Lavw;Landroid/content/Context;Ljava/util/List;Lavx;Ljava/lang/String;Ljava/util/List;Lavx;)V

    invoke-virtual {v0}, Latv;->a()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakl;

    invoke-virtual {v1}, Lakl;->U()J

    move-result-wide v8

    iget-wide v10, v0, Lavw$a;->mLastStoryTimestamp:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lavw$a;->mThumbnailCreationTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    cmp-long v1, v8, v10

    if-ltz v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v6

    goto :goto_1

    :cond_8
    iget-boolean v1, v0, Lavw$a;->mIsExpired:Z

    if-eqz v1, :cond_9

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lavw$a;->mIsExpired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 152
    :cond_a
    iget-object v0, p2, Lavx;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;

    if-ne v0, v1, :cond_c

    move v0, v2

    :goto_3
    invoke-static {v0}, Lco;->a(Z)V

    iget-object v0, p2, Lavx;->mThumbnail:Lbkm;

    invoke-virtual {v0}, Lbkm;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lavx;->mCacheKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p2, Lavx;->mThumbnail:Lbkm;

    aput-object v1, v0, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v4}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    move v0, v6

    goto :goto_3

    :cond_d
    iget-object v7, p0, Lavw;->mThumbnailCacheMutex:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavw$a;

    if-nez v0, :cond_e

    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    new-instance v1, Lavw$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lavw$a;-><init>(Lavw;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lavw$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lavw$3;-><init>(Lavw;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lavx;)V

    iget-object v1, v0, Laag;->mCache:Laxn;

    iget-object v2, v0, Laag;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laag;->a(I)V

    :cond_e
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_f
    :try_start_4
    iget-object v1, v0, Laag;->mDownloader:Laah;

    iget-object v3, v0, Laag;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Laag;->mCacheKey:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {}, Ldu;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Thumbnail-[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Laah;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Laah$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lavw;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 139
    sget-object v0, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 140
    sget-object v0, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 141
    return-void
.end method

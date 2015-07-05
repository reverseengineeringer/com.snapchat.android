.class public final Lauy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauy$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lauy;

.field private static final LRU_CACHE_SIZE:F = 0.025f

.field private static final TAG:Ljava/lang/String; = "StoriesThumbnailCache"

.field private static final THUMBNAIL_EXPIRATION_MINUTES:I = 0x1e


# instance fields
.field private final mBitmapPool:Lavq;

.field private final mStoryLibrary:Lajq;

.field private final mThumbnailCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lauy$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final mThumbnailCacheMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lauy;

    invoke-direct {v0}, Lauy;-><init>()V

    sput-object v0, Lauy;->INSTANCE:Lauy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lauy;-><init>(Lajq;Lavq;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lajq;Lavq;)V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lauy;->mThumbnailCacheMutex:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lauy;->mStoryLibrary:Lajq;

    .line 94
    iput-object p2, p0, Lauy;->mBitmapPool:Lavq;

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 101
    const v1, 0x3ccccccd    # 0.025f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 102
    const-string v1, "StoriesThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StoriesThumbnailCache size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kilobytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v1, Lauy$1;

    invoke-direct {v1, p0, v0}, Lauy$1;-><init>(Lauy;I)V

    iput-object v1, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    .line 117
    return-void
.end method

.method public static a()Lauy;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lauy;->INSTANCE:Lauy;

    return-object v0
.end method

.method static synthetic a(Lauy;)Lavq;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lauy;->mBitmapPool:Lavq;

    return-object v0
.end method

.method static synthetic b(Lauy;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public final a(Lauz;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p1, Lauz;->mCacheKey:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauy$a;

    .line 196
    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lauy$a;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lauz;)V
    .locals 12
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 141
    iget-object v0, p2, Lauz;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StoriesThumbnailCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getStorySnaps: Null StorySnap added to the list from feed item: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 143
    iget-object v5, p2, Lauz;->mCacheKey:Ljava/lang/String;

    .line 145
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget-object v6, p0, Lauy;->mThumbnailCacheMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 154
    :try_start_0
    iget-object v0, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauy$a;

    .line 155
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    invoke-virtual {v1}, Lajr;->W()J

    move-result-wide v8

    iget-wide v10, v0, Lauy$a;->mFirstStoryTimestamp:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    move v1, v4

    :goto_1
    if-eqz v1, :cond_9

    .line 157
    :cond_3
    if-nez v0, :cond_7

    .line 158
    iget-object v0, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    new-instance v1, Lauy$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lauy$a;-><init>(Lauy;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v0, v4

    .line 167
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lauy$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lauy$2;-><init>(Lauy;Landroid/content/Context;Ljava/util/List;Lauz;Ljava/lang/String;Ljava/util/List;Lauz;)V

    .line 182
    invoke-virtual {v0}, Lasw;->a()V

    goto :goto_0

    .line 155
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    invoke-virtual {v1}, Lajr;->W()J

    move-result-wide v8

    iget-wide v10, v0, Lauy$a;->mLastStoryTimestamp:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lauy$a;->mThumbnailCreationTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    cmp-long v1, v8, v10

    if-ltz v1, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1

    .line 160
    :cond_7
    iget-boolean v1, v0, Lauy$a;->mIsExpired:Z

    if-eqz v1, :cond_8

    .line 161
    monitor-exit v6

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 163
    :cond_8
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lauy$a;->mIsExpired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lauy;->mThumbnailCache:Landroid/support/v4/util/LruCache;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 131
    sget-object v0, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v0}, Lawp;->b()V

    .line 132
    sget-object v0, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v0}, Lawp;->b()V

    .line 133
    return-void
.end method

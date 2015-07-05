.class public final Lbfy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfy$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lbfy;

.field private static final LRU_CACHE_SIZE:F = 0.025f

.field private static final TAG:Ljava/lang/String; = "FriendsProfileImagesCache"


# instance fields
.field private final mBitmapPool:Lavq;

.field private final mCache:Lawp;

.field private mPendingRequestIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileImagesCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lbfy$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProfileImagesCacheMutex:Ljava/lang/Object;

.field private mServiceListener:Laok;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lbfy;

    invoke-direct {v0}, Lbfy;-><init>()V

    sput-object v0, Lbfy;->INSTANCE:Lbfy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v0

    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lbfy;-><init>(Lavq;Lawp;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lavq;Lawp;)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbfy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbfy;->mPendingRequestIds:Ljava/util/HashSet;

    .line 53
    new-instance v0, Lbfy$1;

    invoke-direct {v0, p0}, Lbfy$1;-><init>(Lbfy;)V

    iput-object v0, p0, Lbfy;->mServiceListener:Laok;

    .line 87
    iput-object p1, p0, Lbfy;->mBitmapPool:Lavq;

    .line 88
    iput-object p2, p0, Lbfy;->mCache:Lawp;

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 95
    const v1, 0x3ccccccd    # 0.025f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 96
    const-string v1, "FriendsProfileImagesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FriendsProfileImagesCache has size = "

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

    .line 98
    new-instance v1, Lbfy$2;

    invoke-direct {v1, p0, v0}, Lbfy$2;-><init>(Lbfy;I)V

    iput-object v1, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    .line 112
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    const/16 v1, 0x407

    iget-object v2, p0, Lbfy;->mServiceListener:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 114
    return-void
.end method

.method public static a()Lbfy;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lbfy;->INSTANCE:Lbfy;

    return-object v0
.end method

.method static synthetic a(Lbfy;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbfy;->mPendingRequestIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lbfy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lbfy;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lbfy;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lbfv;

    invoke-direct {v0, p1}, Lbfv;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Lbfy$3;

    invoke-direct {v1, p0, p1}, Lbfy$3;-><init>(Lbfy;Ljava/lang/String;)V

    new-instance v2, Lbfv$1;

    invoke-direct {v2, v0, v1}, Lbfv$1;-><init>(Lbfv;Lbfx;)V

    iget-object v0, v0, Lbfv;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lbfv$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method static synthetic c(Lbfy;)Lavq;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbfy;->mBitmapPool:Lavq;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lbfy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfy$a;

    .line 183
    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lbfy$a;->mBitmapList:Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 7
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lbfy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-boolean v0, p2, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfy;->mCache:Lawp;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "FriendsProfileImagesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "friends profile images - friend "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no profile images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    monitor-exit v1

    .line 170
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfy$a;

    .line 155
    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbfy$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lbfy$a;-><init>(Lbfy;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lbfy;->mCache:Lawp;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbfy;->b(Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Laol;->a()Laol;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->THUMBNAIL:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "op_code"

    const/16 v6, 0x407

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "size"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "added_friends"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v2, p1, v4}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 167
    iget-object v2, p0, Lbfy;->mPendingRequestIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 127
    iget-object v1, p0, Lbfy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfy$a;

    iget-object v0, v0, Lbfy$a;->mBitmapList:Ljava/util/List;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 132
    iget-object v4, p0, Lbfy;->mBitmapPool:Lavq;

    invoke-virtual {v4, v0}, Lavq;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbfy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 137
    iget-object v0, p0, Lbfy;->mCache:Lawp;

    invoke-virtual {v0}, Lawp;->b()V

    .line 138
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

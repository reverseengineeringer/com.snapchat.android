.class public final Lbgy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgy$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lbgy;

.field private static final LRU_CACHE_SIZE:F = 0.025f

.field private static final TAG:Ljava/lang/String; = "FriendsProfileImagesCache"


# instance fields
.field private final mBitmapPool:Lawo;

.field private final mCache:Laxn;

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
            "Lbgy$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final mProfileImagesCacheMutex:Ljava/lang/Object;

.field private mServiceListener:Lapg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lbgy;

    invoke-direct {v0}, Lbgy;-><init>()V

    sput-object v0, Lbgy;->INSTANCE:Lbgy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    sget-object v1, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Lbgy;-><init>(Lawo;Laxn;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lawo;Laxn;)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbgy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbgy;->mPendingRequestIds:Ljava/util/HashSet;

    .line 53
    new-instance v0, Lbgy$1;

    invoke-direct {v0, p0}, Lbgy$1;-><init>(Lbgy;)V

    iput-object v0, p0, Lbgy;->mServiceListener:Lapg;

    .line 87
    iput-object p1, p0, Lbgy;->mBitmapPool:Lawo;

    .line 88
    iput-object p2, p0, Lbgy;->mCache:Laxn;

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
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendsProfileImagesCache has size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kilobytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Lbgy$2;

    invoke-direct {v1, p0, v0}, Lbgy$2;-><init>(Lbgy;I)V

    iput-object v1, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    .line 112
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    const/16 v1, 0x407

    iget-object v2, p0, Lbgy;->mServiceListener:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 114
    return-void
.end method

.method public static a()Lbgy;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lbgy;->INSTANCE:Lbgy;

    return-object v0
.end method

.method static synthetic a(Lbgy;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbgy;->mPendingRequestIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lbgy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lbgy;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lbgy;)Landroid/support/v4/util/LruCache;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lbgv;

    invoke-direct {v0, p1}, Lbgv;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Lbgy$3;

    invoke-direct {v1, p0, p1}, Lbgy$3;-><init>(Lbgy;Ljava/lang/String;)V

    new-instance v2, Lbgv$1;

    invoke-direct {v2, v0, v1}, Lbgv$1;-><init>(Lbgv;Lbgx;)V

    iget-object v0, v0, Lbgv;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lbgv$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method static synthetic c(Lbgy;)Lawo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbgy;->mBitmapPool:Lawo;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Lawj;
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
    iget-object v1, p0, Lbgy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgy$a;

    .line 183
    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lbgy$a;->mBitmapList:Ljava/util/List;

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
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lbgy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-boolean v0, p2, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgy;->mCache:Laxn;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "friends profile images - friend "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no profile images"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v1

    .line 170
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgy$a;

    .line 155
    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgy$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lbgy$a;-><init>(Lbgy;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lbgy;->mCache:Laxn;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbgy;->b(Ljava/lang/String;)V

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
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Laph;->a()Laph;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->THUMBNAIL:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v3}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "op_code"

    const/16 v6, 0x407

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "size"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "added_friends"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v2, p1, v4}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 167
    iget-object v2, p0, Lbgy;->mPendingRequestIds:Ljava/util/HashSet;

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
    iget-object v1, p0, Lbgy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

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

    check-cast v0, Lbgy$a;

    iget-object v0, v0, Lbgy$a;->mBitmapList:Ljava/util/List;

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
    iget-object v4, p0, Lbgy;->mBitmapPool:Lawo;

    invoke-virtual {v4, v0}, Lawo;->a(Landroid/graphics/Bitmap;)V

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
    iget-object v0, p0, Lbgy;->mProfileImagesCache:Landroid/support/v4/util/LruCache;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 137
    iget-object v0, p0, Lbgy;->mCache:Laxn;

    invoke-virtual {v0}, Laxn;->b()V

    .line 138
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

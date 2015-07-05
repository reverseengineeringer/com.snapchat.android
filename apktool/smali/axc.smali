.class public final Laxc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbwq;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSnapPreviewCacheWrapper"

.field private static final VIDEO_FILE_EXTENSION:Ljava/lang/String; = ".mp4.nomedia"

.field private static final VIDEO_FILE_PREFIX:Ljava/lang/String; = "tracked_video_"

.field private static final mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laxb;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Laxc;


# instance fields
.field final mCache:Lawp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laxc;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW:Lcom/snapchat/android/util/cache/CacheType;

    const-wide/16 v2, 0x5a0

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    invoke-direct {p0, v0}, Laxc;-><init>(Lawp;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lawp;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Laxc;->mCache:Lawp;

    .line 39
    return-void
.end method

.method public static a()Laxc;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Laxc;->sInstance:Laxc;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Laxc;

    invoke-direct {v0}, Laxc;-><init>()V

    sput-object v0, Laxc;->sInstance:Laxc;

    .line 45
    :cond_0
    sget-object v0, Laxc;->sInstance:Laxc;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    sget-object v0, Laxc;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Laxc;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget-object v1, v0, Laxb;->mCache:Lawp;

    iget-object v0, v0, Laxb;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lawp;->c(Ljava/lang/String;)V

    .line 63
    sget-object v0, Laxc;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "VideoSnapPreviewCacheWrapper"

    const-string v1, "Preview cache file get removed: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "VideoSnapPreviewCacheWrapper"

    const-string v1, "Try to remove an invalid cache file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laxc;->mCache:Lawp;

    const-string v1, "tracked_video_"

    const-string v2, ".mp4.nomedia"

    invoke-virtual {v0, v1, v2}, Lawp;->a(Ljava/lang/String;Ljava/lang/String;)Laxb;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Laxc;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Laxb;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, v0, Laxb;->mFile:Ljava/io/File;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

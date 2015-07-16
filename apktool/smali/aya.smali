.class public final Laya;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxr;
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
            "Laxz;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Laya;


# instance fields
.field final mCache:Laxn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laya;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Laxn;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW:Lcom/snapchat/android/util/cache/CacheType;

    const-wide/16 v2, 0x5a0

    invoke-direct {v0, v1, v2, v3}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    invoke-direct {p0, v0}, Laya;-><init>(Laxn;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Laxn;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Laya;->mCache:Laxn;

    .line 39
    return-void
.end method

.method public static a()Laya;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Laya;->sInstance:Laya;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Laya;->sInstance:Laya;

    .line 45
    :cond_0
    sget-object v0, Laya;->sInstance:Laya;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 59
    sget-object v0, Laya;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Laya;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    iget-object v1, v0, Laxz;->mCache:Laxn;

    iget-object v0, v0, Laxz;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Laxn;->c(Ljava/lang/String;)V

    .line 63
    sget-object v0, Laya;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 68
    return-void
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laya;->mCache:Laxn;

    const-string v1, "tracked_video_"

    const-string v2, ".mp4.nomedia"

    invoke-virtual {v0, v1, v2}, Laxn;->a(Ljava/lang/String;Ljava/lang/String;)Laxz;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Laya;->mTempCacheFiles:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Laxz;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, v0, Laxz;->mFile:Ljava/io/File;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

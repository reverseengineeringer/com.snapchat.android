.class public final Lawx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbwq;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SendSnapCacheWrapper"

.field private static sInstance:Lawx;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lawx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lawx;->sInstance:Lawx;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lawx;

    invoke-direct {v0}, Lawx;-><init>()V

    sput-object v0, Lawx;->sInstance:Lawx;

    .line 40
    :cond_0
    sget-object v0, Lawx;->sInstance:Lawx;

    return-object v0
.end method

.method public static a(Laim;)[B
    .locals 2
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lbgp;->b()V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    invoke-virtual {v1, v0}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    invoke-virtual {v1, v0}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Laim;)Z
    .locals 7
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Laim;->g()[B

    move-result-object v3

    .line 93
    if-nez v3, :cond_0

    .line 94
    const-string v2, "SendSnapCacheWrapper"

    const-string v3, "Invalid image Snap with null media bytes. Client Id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_0
    return v0

    .line 99
    :cond_0
    :try_start_0
    sget-object v4, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    invoke-virtual {v4, v2, v3}, Lawp;->a(Ljava/lang/String;[B)V

    .line 100
    iget-object v2, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Laur;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lawp;->a(Ljava/lang/String;[B)V

    :goto_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "SendSnapCacheWrapper"

    const-string v3, "Not able to create thumbnail for image snap: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 102
    const-string v2, "SendSnapCacheWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveImageToCache exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lajm;Lbfj;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lajm;->g()[B

    move-result-object v3

    .line 112
    if-nez v3, :cond_0

    .line 113
    const-string v2, "SendSnapCacheWrapper"

    const-string v3, "Invalid video Snap with null media bytes. Client Id: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_0
    return v0

    .line 118
    :cond_0
    :try_start_0
    new-instance v4, Laug;

    invoke-direct {v4}, Laug;-><init>()V

    new-instance v5, Lawx$2;

    invoke-direct {v5, p0, v2, v3}, Lawx$2;-><init>(Lawx;Ljava/lang/String;[B)V

    invoke-virtual {v4, v5}, Laug;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lajm;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lbfj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v4, p1, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v4}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v5, v3, v4}, Lawp;->a(Ljava/lang/String;[B)V

    .line 131
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    const-string v2, "SendSnapCacheWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveVideoToCache exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Laim;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lawx$1;

    invoke-direct {v0, p0, p1}, Lawx$1;-><init>(Lawx;Laim;)V

    sget-object v1, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lawx$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.class public final Lapb;
.super Lcom/snapchat/android/ui/SnapchatResource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapb$a;
    }
.end annotation


# static fields
.field protected static final a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:Z


# instance fields
.field private final f:Lcom/snapchat/android/model/chat/ChatMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lapb;->d:Ljava/lang/Object;

    .line 45
    sput-boolean v4, Lapb;->e:Z

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    const v1, 0x3dcccccd    # 0.1f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 52
    const-string v1, "ImageResource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImageResource LruCache size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kilobytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lapb$1;

    invoke-direct {v1, v0}, Lapb$1;-><init>(I)V

    sput-object v1, Lapb;->a:Landroid/support/v4/util/LruCache;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/SnapchatResource$a;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapchatResource;-><init>()V

    .line 75
    iput-object p1, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    .line 76
    sget-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->NOT_LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    iput-object v0, p0, Lapb;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 77
    invoke-virtual {p0, p2}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$a;)V

    .line 78
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 193
    .line 196
    :try_start_0
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    instance-of v0, v0, Lakh;

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lawq;->DISCOVER_SHARE:Lawp;

    check-cast v0, Lcom/snapchat/android/util/cache/DiscoverShareCache;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v1, v2, :cond_2

    .line 200
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 208
    :goto_0
    if-nez v2, :cond_0

    .line 209
    :try_start_2
    iget-object v1, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    check-cast v1, Lakh;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lakh;->mIsExtracted:Z

    .line 210
    iget-object v1, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v0, v2

    .line 230
    :cond_1
    :goto_1
    return-object v0

    .line 203
    :cond_2
    :try_start_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_0

    .line 216
    :cond_3
    :try_start_4
    sget-object v1, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    const/4 v0, 0x0

    :try_start_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1, p2, v0, v2}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    .line 219
    if-nez v0, :cond_1

    .line 220
    :try_start_6
    sget-object v1, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    .line 221
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1, p2, p3, v2}, Lawp;->a(Landroid/content/Context;Ljava/lang/String;Layc;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v0, v6

    :goto_2
    if-eqz p4, :cond_1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1, p2}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v6

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method static synthetic a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    return-object v0
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 237
    sget-object v1, Lapb;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sput-boolean p0, Lapb;->e:Z

    .line 239
    sget-object v0, Lapb;->a:Landroid/support/v4/util/LruCache;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Lapb;->e:Z

    .line 241
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lapb;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-object v1, Lapb;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lapb;->a:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-string v2, "ImageResource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "getImageBitmap - memory cache lookup: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v1, "MISS"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lapb;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-nez v0, :cond_3

    .line 92
    iget-object v1, p0, Lapb;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v2, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v1, v2, :cond_0

    .line 93
    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->NOT_LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {p0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lapb;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v2, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lapb;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    sget-object v2, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {p0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    new-instance v1, Lapb$a;

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v1, p0, p1, v2}, Lapb$a;-><init>(Lapb;Landroid/content/Context;Ljavax/inject/Provider;)V

    sget-object v2, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lapb$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    :cond_1
    :goto_1
    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 89
    :cond_2
    const-string v1, "HIT"

    goto :goto_0

    .line 97
    :cond_3
    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {p0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_1
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    move v4, v2

    .line 166
    :goto_0
    const/4 v0, 0x2

    if-lt v4, v0, :cond_0

    move v0, v1

    .line 167
    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lapb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_1

    .line 169
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->d(Z)V

    .line 170
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/ChatMedia;->f(J)V

    .line 172
    sget-object v1, Lapb;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lapb;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit v1

    move-object v0, v3

    .line 182
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 166
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 178
    :cond_1
    iget-object v3, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d(Z)V

    .line 181
    if-eqz v0, :cond_2

    .line 182
    const/4 v0, 0x0

    goto :goto_2

    .line 184
    :cond_2
    add-int/lit8 v0, v4, 0x1

    .line 185
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Lbgp;->a(J)V

    move v4, v0

    .line 186
    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lapb;->f:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class public final Laxv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxr;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SendSnapCacheWrapper"

.field private static sInstance:Laxv;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Laxv;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Laxv;->sInstance:Laxv;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Laxv;

    invoke-direct {v0}, Laxv;-><init>()V

    sput-object v0, Laxv;->sInstance:Laxv;

    .line 40
    :cond_0
    sget-object v0, Laxv;->sInstance:Laxv;

    return-object v0
.end method

.method public static a(Laji;)[B
    .locals 2
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lbhp;->b()V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    invoke-virtual {v1, v0}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-virtual {v1, v0}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Laji;)Z
    .locals 5
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Laji;->g()[B

    move-result-object v3

    .line 93
    if-nez v3, :cond_0

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 106
    :goto_0
    return v0

    .line 99
    :cond_0
    :try_start_0
    sget-object v4, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-virtual {v4, v2, v3}, Laxn;->a(Ljava/lang/String;[B)V

    .line 100
    iget-object v2, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lavp;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Laxn;->a(Ljava/lang/String;[B)V

    :goto_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 100
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v4, v2, v3
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveImageToCache exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public final a(Laku;Lbgj;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Laku;->g()[B

    move-result-object v3

    .line 112
    if-nez v3, :cond_0

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 138
    :goto_0
    return v0

    .line 118
    :cond_0
    :try_start_0
    new-instance v4, Lave;

    invoke-direct {v4}, Lave;-><init>()V

    new-instance v5, Laxv$2;

    invoke-direct {v5, p0, v2, v3}, Laxv$2;-><init>(Laxv;Ljava/lang/String;[B)V

    invoke-virtual {v4, v5}, Lave;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Laku;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lbgj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_2

    .line 130
    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v4, p1, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v4}, Lavp;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v5, v3, v4}, Laxn;->a(Ljava/lang/String;[B)V

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
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveVideoToCache exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Laji;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Laxv$1;

    invoke-direct {v0, p0, p1}, Laxv$1;-><init>(Laxv;Laji;)V

    sget-object v1, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Laxv$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

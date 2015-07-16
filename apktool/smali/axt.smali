.class public Laxt;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Laji;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveSentSnapToCacheTask"


# instance fields
.field private mDiscoverShareCacheWrapper:Laxp;

.field private final mExceptionReporter:Lban;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Laxp$a;->a()Laxp;

    move-result-object v0

    new-instance v1, Lban;

    invoke-direct {v1}, Lban;-><init>()V

    invoke-direct {p0, v0, v1}, Laxt;-><init>(Laxp;Lban;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Laxp;Lban;)V
    .locals 0
    .param p1    # Laxp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lban;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Laxt;->mDiscoverShareCacheWrapper:Laxp;

    .line 30
    iput-object p2, p0, Laxt;->mExceptionReporter:Lban;

    .line 31
    return-void
.end method

.method private a(Laji;)Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p0}, Laxt;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    .line 71
    :goto_0
    return v1

    .line 58
    :cond_0
    :try_start_0
    iget-object v4, p0, Laxt;->mDiscoverShareCacheWrapper:Laxp;

    iget-object v5, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v1, Laeb;

    if-eqz v1, :cond_7

    iget-object v9, v4, Laxp;->mCompressor:Lack;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    move-object v0, v2

    check-cast v0, Laeb;

    move-object v6, v0

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v3, :cond_1

    if-nez v6, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect snap type or need extra information about the DSnap."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :catch_0
    move-exception v1

    move v1, v7

    goto :goto_0

    .line 58
    :cond_2
    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    new-instance v1, Lact;

    const-string v2, "Media provided has both snap and video url being null."

    iget-object v3, v6, Laeb;->a:Ljava/lang/String;

    iget-object v4, v6, Laeb;->d:Ljava/lang/String;

    iget-object v5, v6, Laeb;->e:Ljava/lang/String;

    iget v6, v6, Laeb;->w:I

    invoke-direct/range {v1 .. v6}, Lact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 63
    :catch_1
    move-exception v1

    move v1, v7

    goto :goto_0

    .line 58
    :cond_3
    new-instance v1, Lact;

    const-string v2, "Discover videos must have a thumbnail. "

    iget-object v3, v6, Laeb;->a:Ljava/lang/String;

    iget-object v4, v6, Laeb;->d:Ljava/lang/String;

    iget-object v5, v6, Laeb;->e:Ljava/lang/String;

    iget v6, v6, Laeb;->w:I

    invoke-direct/range {v1 .. v6}, Lact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lack$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lact; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    :catch_2
    move-exception v1

    .line 66
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    .line 67
    iget-object v2, p0, Laxt;->mExceptionReporter:Lban;

    invoke-virtual {v2, v1}, Lban;->a(Ljava/lang/Throwable;)V

    move v1, v7

    .line 68
    goto :goto_0

    .line 58
    :cond_4
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v11, v2, v10

    invoke-static {p1}, Lns;->a(Laji;)Lhv;

    move-result-object v10

    invoke-static {p1}, Lns;->b(Laji;)Lhx;

    move-result-object v11

    new-instance v12, Laco;

    invoke-direct {v12}, Laco;-><init>()V

    iget-object v2, v6, Laeb;->a:Ljava/lang/String;

    iput-object v2, v12, Laco;->b:Ljava/lang/String;

    iget-object v2, v6, Laeb;->b:Ljava/lang/String;

    iput-object v2, v12, Laco;->c:Ljava/lang/String;

    iget-object v2, v6, Laeb;->c:Ljava/lang/String;

    iput-object v2, v12, Laco;->d:Ljava/lang/String;

    iget-object v2, v6, Laeb;->d:Ljava/lang/String;

    iput-object v2, v12, Laco;->e:Ljava/lang/String;

    iget-object v2, v6, Laeb;->e:Ljava/lang/String;

    iput-object v2, v12, Laco;->f:Ljava/lang/String;

    iget-object v2, v6, Laeb;->x:Ljava/lang/String;

    iput-object v2, v12, Laco;->g:Ljava/lang/String;

    iget v2, v6, Laeb;->h:F

    iput v2, v12, Laco;->m:F

    iget v2, v6, Laeb;->i:F

    iput v2, v12, Laco;->n:F

    iget v2, v6, Laeb;->f:F

    iput v2, v12, Laco;->k:F

    iget v2, v6, Laeb;->g:F

    iput v2, v12, Laco;->l:F

    iget v2, v6, Laeb;->j:F

    iput v2, v12, Laco;->o:F

    iget v2, v6, Laeb;->k:F

    iput v2, v12, Laco;->p:F

    iget-boolean v2, v6, Laeb;->n:Z

    iput-boolean v2, v12, Laco;->q:Z

    const/4 v2, 0x1

    iput v2, v12, Laco;->v:I

    invoke-virtual {p1}, Laji;->h()I

    move-result v2

    iput v2, v12, Laco;->a:I

    iget-object v2, p1, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-static {v2}, Lafv;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Laco;->r:I

    iget-boolean v2, p1, Laji;->mHasDrawing:Z

    if-nez v2, :cond_8

    move v2, v7

    :goto_1
    iput v2, v12, Laco;->s:I

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lhv;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Laco;->t:Ljava/lang/String;

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lhx;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Laco;->u:Ljava/lang/String;

    :cond_6
    iget-object v6, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    iget-object v2, p1, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Laji;->h()I

    move-result v10

    if-nez v10, :cond_9

    if-eqz v2, :cond_c

    :goto_2
    invoke-static {v2}, Lavp;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v12, v2}, Lack;->a(Laco;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_3
    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v6, v1, Laeb;->l:Ljava/lang/String;

    iget-object v1, v1, Laeb;->m:Ljava/lang/String;

    invoke-direct {v3, v6, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "no dataId provided"

    invoke-virtual {v3, v2, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B

    move-result-object v1

    iget-object v2, v4, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    invoke-virtual {v2, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    iget-object v2, v4, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    sget-object v3, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v2, v5, v1, v3}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    :cond_7
    move v1, v8

    .line 71
    goto/16 :goto_0

    :cond_8
    move v2, v8

    .line 58
    goto :goto_1

    :cond_9
    invoke-static {p1}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v2, :cond_a

    invoke-static {v2}, Lavp;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_a
    invoke-static {v3}, Lavp;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v9, v12, v6, v3, v2}, Lack;->a(Laco;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_3

    :cond_b
    new-instance v1, Lack$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported media type! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Laji;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lack$a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lack$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lact; {:try_start_1 .. :try_end_1} :catch_2

    :cond_c
    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 16
    check-cast p1, [Laji;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Laji;->h()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save the media to the cache! of type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Laji;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Laxt;->a(Laji;)Z

    const/4 v0, 0x0

    return-object v0
.end method

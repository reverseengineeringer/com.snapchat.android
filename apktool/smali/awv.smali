.class public Lawv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Laim;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SaveSentSnapToCacheTask"


# instance fields
.field private mDiscoverShareCacheWrapper:Lawr;

.field private final mExceptionReporter:Lazo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lawr$a;->a()Lawr;

    move-result-object v0

    new-instance v1, Lazo;

    invoke-direct {v1}, Lazo;-><init>()V

    invoke-direct {p0, v0, v1}, Lawv;-><init>(Lawr;Lazo;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lawr;Lazo;)V
    .locals 0
    .param p1    # Lawr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lawv;->mDiscoverShareCacheWrapper:Lawr;

    .line 30
    iput-object p2, p0, Lawv;->mExceptionReporter:Lazo;

    .line 31
    return-void
.end method

.method private a(Laim;)Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p0}, Lawv;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    .line 71
    :goto_0
    return v1

    .line 58
    :cond_0
    :try_start_0
    iget-object v4, p0, Lawv;->mDiscoverShareCacheWrapper:Lawr;

    iget-object v5, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    check-cast v1, Ladb;

    if-eqz v1, :cond_7

    iget-object v9, v4, Lawr;->mCompressor:Labk;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    move-object v0, v2

    check-cast v0, Ladb;

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
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labk$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Labt; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :catch_0
    move-exception v1

    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "External storage not available."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    .line 61
    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    new-instance v1, Labt;

    const-string v2, "Media provided has both snap and video url being null."

    iget-object v3, v6, Ladb;->a:Ljava/lang/String;

    iget-object v4, v6, Ladb;->d:Ljava/lang/String;

    iget-object v5, v6, Ladb;->e:Ljava/lang/String;

    iget v6, v6, Ladb;->w:I

    invoke-direct/range {v1 .. v6}, Labt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_0
    .catch Labk$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Labt; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    :catch_1
    move-exception v1

    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "Discover blob compressing error."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    .line 64
    goto :goto_0

    .line 58
    :cond_3
    :try_start_2
    new-instance v1, Labt;

    const-string v2, "Discover videos must have a thumbnail. "

    iget-object v3, v6, Ladb;->a:Ljava/lang/String;

    iget-object v4, v6, Ladb;->d:Ljava/lang/String;

    iget-object v5, v6, Ladb;->e:Ljava/lang/String;

    iget v6, v6, Ladb;->w:I

    invoke-direct/range {v1 .. v6}, Labt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
    :try_end_2
    .catch Laws; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labk$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Labt; {:try_start_2 .. :try_end_2} :catch_2

    .line 65
    :catch_2
    move-exception v1

    .line 66
    const-string v2, "SaveSentSnapToCacheTask"

    const-string v3, "Invalid DSnap:\n%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lawv;->mExceptionReporter:Lazo;

    invoke-virtual {v2, v1}, Lazo;->a(Ljava/lang/Throwable;)V

    move v1, v7

    .line 68
    goto :goto_0

    .line 58
    :cond_4
    :try_start_3
    const-string v2, "DSnapMediaExtractor"

    const-string v10, "CHAT-LOG: Compressing Discover media %s "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v2, v10, v11}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lnb;->a(Laim;)Lhm;

    move-result-object v10

    invoke-static {p1}, Lnb;->b(Laim;)Lho;

    move-result-object v11

    new-instance v12, Labo;

    invoke-direct {v12}, Labo;-><init>()V

    iget-object v2, v6, Ladb;->a:Ljava/lang/String;

    iput-object v2, v12, Labo;->b:Ljava/lang/String;

    iget-object v2, v6, Ladb;->b:Ljava/lang/String;

    iput-object v2, v12, Labo;->c:Ljava/lang/String;

    iget-object v2, v6, Ladb;->c:Ljava/lang/String;

    iput-object v2, v12, Labo;->d:Ljava/lang/String;

    iget-object v2, v6, Ladb;->d:Ljava/lang/String;

    iput-object v2, v12, Labo;->e:Ljava/lang/String;

    iget-object v2, v6, Ladb;->e:Ljava/lang/String;

    iput-object v2, v12, Labo;->f:Ljava/lang/String;

    iget-object v2, v6, Ladb;->x:Ljava/lang/String;

    iput-object v2, v12, Labo;->g:Ljava/lang/String;

    iget v2, v6, Ladb;->h:F

    iput v2, v12, Labo;->m:F

    iget v2, v6, Ladb;->i:F

    iput v2, v12, Labo;->n:F

    iget v2, v6, Ladb;->f:F

    iput v2, v12, Labo;->k:F

    iget v2, v6, Ladb;->g:F

    iput v2, v12, Labo;->l:F

    iget v2, v6, Ladb;->j:F

    iput v2, v12, Labo;->o:F

    iget v2, v6, Ladb;->k:F

    iput v2, v12, Labo;->p:F

    iget-boolean v2, v6, Ladb;->n:Z

    iput-boolean v2, v12, Labo;->q:Z

    const/4 v2, 0x1

    iput v2, v12, Labo;->v:I

    invoke-virtual {p1}, Laim;->h()I

    move-result v2

    iput v2, v12, Labo;->a:I

    iget-object v2, p1, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-static {v2}, Laev;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Labo;->r:I

    iget-boolean v2, p1, Laim;->mHasDrawing:Z

    if-nez v2, :cond_8

    move v2, v7

    :goto_1
    iput v2, v12, Labo;->s:I

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lhm;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Labo;->t:Ljava/lang/String;

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lho;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Labo;->u:Ljava/lang/String;

    :cond_6
    iget-object v6, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    iget-object v2, p1, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Laim;->h()I

    move-result v10

    if-nez v10, :cond_9

    if-eqz v2, :cond_c

    :goto_2
    invoke-static {v2}, Laur;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v12, v2}, Labk;->a(Labo;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_3
    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v6, v1, Ladb;->l:Ljava/lang/String;

    iget-object v1, v1, Ladb;->m:Ljava/lang/String;

    invoke-direct {v3, v6, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "no dataId provided"

    invoke-virtual {v3, v2, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B

    move-result-object v1

    iget-object v2, v4, Lawr;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    invoke-virtual {v2, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    iget-object v2, v4, Lawr;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

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
    invoke-static {p1}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v2, :cond_a

    invoke-static {v2}, Laur;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_a
    invoke-static {v3}, Laur;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v9, v12, v6, v3, v2}, Labk;->a(Labo;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_3

    :cond_b
    new-instance v1, Labk$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported media type! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Laim;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labk$a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Laws; {:try_start_3 .. :try_end_3} :catch_0
    .catch Labk$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Labt; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    check-cast p1, [Laim;

    aget-object v0, p1, v4

    invoke-virtual {v0}, Laim;->h()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const-string v1, "SaveSentSnapToCacheTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save the media to the cache! of type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Laim;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lawv;->a(Laim;)Z

    const/4 v0, 0x0

    return-object v0
.end method

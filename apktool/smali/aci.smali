.class public final Laci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lace;
.implements Lalb$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laci$4;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lawp;

.field final c:Ladj;

.field final d:Ladd;

.field protected e:Ladj$a;

.field protected f:Ladj$a;

.field protected g:Ladj$a;

.field private final h:Lalb;

.field private final i:Labq;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 48
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v1

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v2

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v3

    sget-object v4, Ladc;->c:Lawp;

    invoke-static {}, Labq;->a()Labq;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laci;-><init>(Ladj;Ladd;Lalb;Lawp;Labq;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Ladj;Ladd;Lalb;Lawp;Labq;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laci;->a:Ljava/util/Map;

    .line 107
    new-instance v0, Laci$1;

    invoke-direct {v0, p0}, Laci$1;-><init>(Laci;)V

    iput-object v0, p0, Laci;->e:Ladj$a;

    .line 151
    new-instance v0, Laci$2;

    invoke-direct {v0, p0}, Laci$2;-><init>(Laci;)V

    iput-object v0, p0, Laci;->f:Ladj$a;

    .line 188
    new-instance v0, Laci$3;

    invoke-direct {v0, p0}, Laci$3;-><init>(Laci;)V

    iput-object v0, p0, Laci;->g:Ladj$a;

    .line 61
    iput-object p1, p0, Laci;->c:Ladj;

    .line 62
    iput-object p2, p0, Laci;->d:Ladd;

    .line 63
    iput-object p4, p0, Laci;->b:Lawp;

    .line 64
    iput-object p3, p0, Laci;->h:Lalb;

    .line 65
    iput-object p5, p0, Laci;->i:Labq;

    .line 66
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    .locals 3

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    sget-object v1, Laci$4;->a:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 385
    :goto_0
    return v0

    .line 376
    :pswitch_0
    iget-object v0, p0, Laci;->d:Ladd;

    invoke-virtual {v0, p1, p2}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 377
    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Laci;->d:Ladd;

    invoke-virtual {v0, p1, p2}, Ladd;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 381
    goto :goto_0

    .line 384
    :pswitch_2
    iget-object v0, p0, Laci;->d:Ladd;

    invoke-virtual {v0, p1, p2}, Ladd;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Laci;->c:Ladj;

    iget-object v1, p0, Laci;->g:Ladj$a;

    invoke-virtual {v0, v1}, Ladj;->a(Ladj$a;)V

    .line 71
    return-void
.end method

.method public final a(Lacf;)V
    .locals 0
    .param p1    # Lacf;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 76
    return-void
.end method

.method public final a(Lalc;)V
    .locals 5
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 277
    const-string v0, "PublisherIconMediaLoader"

    const-string v1, "DISCOVER-MEDIA-BRAND-ICON: Download cancelled for publisher icon %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lalc;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Laci;->a:Ljava/util/Map;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public final a(Lalc;Lbfl;Luc;)V
    .locals 9
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    iget-object v0, p0, Laci;->a:Ljava/util/Map;

    iget-object v1, p1, Lalc;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 229
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p1, Lalc;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    iget-object v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->n:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    :goto_1
    if-nez v1, :cond_3

    .line 235
    const-string v0, "PublisherIconMediaLoader"

    const-string v1, "DISCOVER-MEDIA-BRAND-ICON: Unknown URL %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lalc;->d:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p3}, Luc;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Downloaded publisher icon %s for %s (executed with %s priority)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lalc;->d:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p1, Lalc;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object v2, p0, Laci;->b:Lawp;

    iget-object v3, p1, Lalc;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lbfl;->mBuffer:[B

    iget v5, p2, Lbfl;->mSize:I

    invoke-virtual {v2, v3, v4, v5}, Lawp;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_5

    .line 246
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 266
    :goto_2
    if-eqz v1, :cond_4

    .line 267
    iget-object v1, p0, Laci;->c:Ladj;

    invoke-virtual {v1}, Ladj;->b()V

    .line 268
    iget-object v1, p0, Laci;->c:Ladj;

    new-array v2, v8, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->PUBLISHER_ICONS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Ladj;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 271
    :cond_4
    iget-object v1, p0, Laci;->i:Labq;

    invoke-virtual {v1, v0}, Labq;->c(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto/16 :goto_0

    .line 248
    :cond_5
    :try_start_1
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Cannot cache publisher icon %s for %s, cache write failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lalc;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_1
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_2

    .line 255
    :catch_0
    move-exception v2

    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "BDISCOVER-MEDIA-BRAND-ICON: annot cache publisher icon %s, external storage is not available."

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lalc;->d:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v1, v7

    .line 258
    goto :goto_2

    .line 262
    :cond_6
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Failed to download publisher icon %s %s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lalc;->d:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p3, v4, v8

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 91
    return-void
.end method

.method final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 8
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_0

    iget-object v0, p0, Laci;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 349
    :goto_0
    return v0

    .line 319
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 321
    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v4, :cond_4

    .line 323
    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v4, :cond_4

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v4, p0, Laci;->b:Lawp;

    invoke-virtual {v4, v0}, Lawp;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    const-string v0, "PublisherIconMediaLoader"

    const-string v4, "DISCOVER-MEDIA-BRAND-ICON: File exists in cache for publisher icon %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0, p2}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 332
    :cond_2
    iget-object v4, p0, Laci;->b:Lawp;

    invoke-virtual {v4}, Lawp;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: Missing file for publisher icon %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v3, p0, Laci;->b:Lawp;

    invoke-virtual {v3, v0}, Lawp;->c(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PublisherIconMediaLoader"

    const-string v4, "DISCOVER-MEDIA-BRAND-ICON: Requesting download for %s publisher icon (%s)."

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Laci;->a:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v3, p2}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    new-instance v3, Lalc$a;

    invoke-direct {v3}, Lalc$a;-><init>()V

    iput-object p3, v3, Lalc$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v3, Lalc$a;->e:Ljava/lang/String;

    iput-object v0, v3, Lalc$a;->d:Ljava/lang/String;

    const-string v0, "%s-%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lalc$a;->g:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v3, Lalc$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "DISCOVER"

    aput-object v4, v0, v2

    const-string v2, "STORIES"

    aput-object v2, v0, v1

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v0, v7

    iput-object v0, v3, Lalc$a;->h:[Ljava/lang/String;

    invoke-virtual {v3}, Lalc$a;->a()Lalc;

    move-result-object v0

    iget-object v2, p0, Laci;->h:Lalb;

    invoke-virtual {v2, v0, p0}, Lalb;->a(Lalc;Lalb$a;)V

    iget-object v0, p0, Laci;->i:Labq;

    invoke-virtual {v0, p1}, Labq;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    move v0, v1

    .line 340
    goto/16 :goto_0

    .line 344
    :cond_3
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0, p2}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Laci;->c:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$a;

    const/4 v2, 0x0

    iget-object v3, p0, Laci;->e:Ladj$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$a;)V

    .line 81
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Laci;->c:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$a;

    const/4 v2, 0x0

    iget-object v3, p0, Laci;->f:Ladj$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$a;)V

    .line 86
    return-void
.end method

.method public final d()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method

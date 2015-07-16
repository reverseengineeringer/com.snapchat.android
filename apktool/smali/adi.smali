.class public final Ladi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lade;
.implements Lalw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladi$4;
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

.field final b:Laxn;

.field final c:Laej;

.field final d:Laed;

.field protected e:Laej$a;

.field protected f:Laej$a;

.field protected g:Laej$a;

.field private final h:Lalw;

.field private final i:Lacq;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 48
    invoke-static {}, Laej;->a()Laej;

    move-result-object v1

    invoke-static {}, Laed;->a()Laed;

    move-result-object v2

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v3

    sget-object v4, Laec;->c:Laxn;

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ladi;-><init>(Laej;Laed;Lalw;Laxn;Lacq;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Laej;Laed;Lalw;Laxn;Lacq;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ladi;->a:Ljava/util/Map;

    .line 107
    new-instance v0, Ladi$1;

    invoke-direct {v0, p0}, Ladi$1;-><init>(Ladi;)V

    iput-object v0, p0, Ladi;->e:Laej$a;

    .line 151
    new-instance v0, Ladi$2;

    invoke-direct {v0, p0}, Ladi$2;-><init>(Ladi;)V

    iput-object v0, p0, Ladi;->f:Laej$a;

    .line 188
    new-instance v0, Ladi$3;

    invoke-direct {v0, p0}, Ladi$3;-><init>(Ladi;)V

    iput-object v0, p0, Ladi;->g:Laej$a;

    .line 61
    iput-object p1, p0, Ladi;->c:Laej;

    .line 62
    iput-object p2, p0, Ladi;->d:Laed;

    .line 63
    iput-object p4, p0, Ladi;->b:Laxn;

    .line 64
    iput-object p3, p0, Ladi;->h:Lalw;

    .line 65
    iput-object p5, p0, Ladi;->i:Lacq;

    .line 66
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    .locals 3

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    sget-object v1, Ladi$4;->a:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 385
    :goto_0
    return v0

    .line 376
    :pswitch_0
    iget-object v0, p0, Ladi;->d:Laed;

    invoke-virtual {v0, p1, p2}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 377
    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p0, Ladi;->d:Laed;

    invoke-virtual {v0, p1, p2}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 381
    goto :goto_0

    .line 384
    :pswitch_2
    iget-object v0, p0, Ladi;->d:Laed;

    invoke-virtual {v0, p1, p2}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

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
    iget-object v0, p0, Ladi;->c:Laej;

    iget-object v1, p0, Ladi;->g:Laej$a;

    invoke-virtual {v0, v1}, Laej;->a(Laej$a;)V

    .line 71
    return-void
.end method

.method public final a(Ladf;)V
    .locals 0
    .param p1    # Ladf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 76
    return-void
.end method

.method public final a(Laly;)V
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Laly;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 278
    iget-object v0, p0, Ladi;->a:Ljava/util/Map;

    iget-object v1, p1, Laly;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public final a(Laly;Lbgl;Lus;)V
    .locals 8
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    iget-object v0, p0, Ladi;->a:Ljava/util/Map;

    iget-object v1, p1, Laly;->d:Ljava/lang/String;

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
    iget-object v3, p1, Laly;->d:Ljava/lang/String;

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
    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p1, Laly;->d:Ljava/lang/String;

    aput-object v1, v0, v6

    goto :goto_0

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p3}, Lus;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 244
    :try_start_0
    iget-object v2, p0, Ladi;->b:Laxn;

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lbgl;->mBuffer:[B

    iget v5, p2, Lbgl;->mSize:I

    invoke-virtual {v2, v3, v4, v5}, Laxn;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_5

    .line 246
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 266
    :goto_2
    if-eqz v1, :cond_4

    .line 267
    iget-object v1, p0, Ladi;->c:Laej;

    invoke-virtual {v1}, Laej;->c()V

    .line 268
    iget-object v1, p0, Ladi;->c:Laej;

    new-array v2, v7, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->PUBLISHER_ICONS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Laej;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 271
    :cond_4
    iget-object v1, p0, Ladi;->i:Lacq;

    invoke-virtual {v1, v0}, Lacq;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto :goto_0

    .line 248
    :cond_5
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Laly;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 251
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_1
    .catch Laxq; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_2

    .line 255
    :catch_0
    move-exception v2

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 257
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v1, v6

    .line 258
    goto :goto_2

    .line 262
    :cond_6
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Laly;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    .line 263
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 91
    return-void
.end method

.method final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 7
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_0

    iget-object v0, p0, Ladi;->a:Ljava/util/Map;

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
    iget-object v4, p0, Ladi;->b:Laxn;

    invoke-virtual {v4, v0}, Laxn;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    .line 330
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0, p2}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 332
    :cond_2
    iget-object v4, p0, Ladi;->b:Laxn;

    invoke-virtual {v4}, Laxn;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 334
    iget-object v3, p0, Ladi;->b:Laxn;

    invoke-virtual {v3, v0}, Laxn;->c(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    iget-object v3, p0, Ladi;->a:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v3, p2}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    new-instance v3, Laly$a;

    invoke-direct {v3}, Laly$a;-><init>()V

    iput-object p3, v3, Laly$a;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v3, Laly$a;->e:Ljava/lang/String;

    iput-object v0, v3, Laly$a;->d:Ljava/lang/String;

    const-string v0, "%s-%s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Laly$a;->g:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, v3, Laly$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "DISCOVER"

    aput-object v4, v0, v2

    const-string v2, "STORIES"

    aput-object v2, v0, v1

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v0, v6

    iput-object v0, v3, Laly$a;->h:[Ljava/lang/String;

    invoke-virtual {v3}, Laly$a;->a()Laly;

    move-result-object v0

    iget-object v2, p0, Ladi;->h:Lalw;

    invoke-virtual {v2, v0, p0}, Lalw;->a(Laly;Lalw$a;)V

    iget-object v0, p0, Ladi;->i:Lacq;

    invoke-virtual {v0, p1}, Lacq;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    move v0, v1

    .line 340
    goto/16 :goto_0

    .line 344
    :cond_3
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0, p2}, Ladi;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

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
    iget-object v0, p0, Ladi;->c:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$a;

    const/4 v2, 0x0

    iget-object v3, p0, Ladi;->e:Laej$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$a;)V

    .line 81
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Ladi;->c:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$a;

    const/4 v2, 0x0

    iget-object v3, p0, Ladi;->f:Laej$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$a;)V

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

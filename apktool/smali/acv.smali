.class final Lacv;
.super Lacn;
.source "SourceFile"


# instance fields
.field private final e:Lbgk;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    new-instance v1, Lajx;

    invoke-direct {v1}, Lajx;-><init>()V

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v2

    new-instance v3, Lacd;

    invoke-direct {v3}, Lacd;-><init>()V

    new-instance v4, Lact;

    invoke-direct {v4}, Lact;-><init>()V

    new-instance v5, Lbgk;

    invoke-direct {v5}, Lbgk;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lacv;-><init>(Lajx;Ladf;Lacd;Lact;Lbgk;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lajx;Ladf;Lacd;Lact;Lbgk;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lacn;-><init>(Lajx;Ladf;Lacd;Lact;)V

    .line 32
    iput-object p5, p0, Lacv;->e:Lbgk;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z
    .locals 10

    .prologue
    const/16 v9, 0x48

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 37
    iget-object v1, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p3, Lalc$a;->c:Z

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 38
    const-string v1, "WifiDSnapLoadingStrategy"

    const-string v2, "DISCOVER-MEDIA: Elected to download %s, it is in the selected edition"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_1
    return v0

    :cond_0
    move v1, v7

    .line 37
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lajx;->aK()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :goto_2
    iget-object v1, p0, Lacv;->b:Lacd;

    iget-object v1, v1, Lacd;->a:Lajt;

    const-string v4, "DISCOVER_V2"

    const-string v5, "WIFI_RECENT_USER_THRESHOLD_HOURS"

    invoke-virtual {v1, v4, v5, v9}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lacv;->b:Lacd;

    iget-object v1, v1, Lacd;->a:Lajt;

    const-string v6, "DISCOVER_V2"

    const-string v8, "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD"

    invoke-virtual {v1, v6, v8, v0}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lact;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v0, p3, Lalc$a;->c:Z

    move v1, v0

    :goto_3
    if-eqz v1, :cond_4

    .line 43
    const-string v1, "WifiDSnapLoadingStrategy"

    const-string v2, "DISCOVER-MEDIA: Elected to download %s, user has been to discover recently"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Lajx;->aK()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    move v1, v7

    goto :goto_3

    .line 47
    :cond_4
    iget-object v1, p0, Lacv;->c:Ladf;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ladf;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lacv;->b:Lacd;

    iget-object v1, v1, Lacd;->a:Lajt;

    const-string v4, "DISCOVER_V2"

    const-string v5, "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS"

    invoke-virtual {v1, v4, v5, v9}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lacv;->b:Lacd;

    iget-object v1, v1, Lacd;->a:Lajt;

    const-string v6, "DISCOVER_V2"

    const-string v8, "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    const/16 v9, 0x64

    invoke-virtual {v1, v6, v8, v9}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lact;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v0, p3, Lalc$a;->c:Z

    move v1, v0

    :goto_4
    if-eqz v1, :cond_6

    .line 48
    const-string v1, "WifiDSnapLoadingStrategy"

    const-string v2, "DISCOVER-MEDIA: Elected to download %s, user has seen this channel recently"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    move v1, v7

    .line 47
    goto :goto_4

    :cond_6
    move v0, v7

    .line 52
    goto/16 :goto_1
.end method

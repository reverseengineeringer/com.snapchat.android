.class final Lacu;
.super Lacn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v1

    new-instance v2, Lacd;

    invoke-direct {v2}, Lacd;-><init>()V

    new-instance v3, Lact;

    invoke-direct {v3}, Lact;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lacu;-><init>(Lajx;Ladf;Lacd;Lact;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lajx;Ladf;Lacd;Lact;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lacn;-><init>(Lajx;Ladf;Lacd;Lact;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    iget-object v0, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lacf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_6

    .line 33
    const-string v0, "WanDSnapLoadingStrategy"

    const-string v1, "DISCOVER-MEDIA: Elected to download %s, it is in range in the selected edition"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v8

    .line 43
    :cond_1
    :goto_1
    return v7

    .line 32
    :cond_2
    iget-object v0, p1, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lacf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v1, p0, Lacu;->b:Lacd;

    iget-object v1, v1, Lacd;->a:Lajt;

    const-string v2, "DISCOVER_V2"

    const-string v3, "WAN_NUM_DSNAPS_TO_LOAD_BEFORE_CURRENT"

    invoke-virtual {v1, v2, v3, v8}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lacu;->b:Lacd;

    iget-object v2, v2, Lacd;->a:Lajt;

    const-string v3, "DISCOVER_V2"

    const-string v4, "WAN_NUM_DSNAPS_TO_LOAD_AFTER_CURRENT"

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_4

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_5

    move v0, v7

    goto :goto_0

    :cond_5
    iput-boolean v7, p3, Lalc$a;->c:Z

    move v0, v8

    goto :goto_0

    .line 37
    :cond_6
    iget-object v0, p0, Lacu;->c:Ladf;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladf;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lacu;->b:Lacd;

    iget-object v0, v0, Lacd;->a:Lajt;

    const-string v1, "DISCOVER_V2"

    const-string v4, "WAN_RECENT_CHANNEL_THRESHOLD_HOURS"

    const/16 v5, 0x30

    invoke-virtual {v0, v1, v4, v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lacu;->b:Lacd;

    iget-object v0, v0, Lacd;->a:Lajt;

    const-string v1, "DISCOVER_V2"

    const-string v6, "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    invoke-virtual {v0, v1, v6, v8}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lact;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v7, p3, Lalc$a;->c:Z

    move v0, v8

    :goto_3
    if-eqz v0, :cond_1

    .line 38
    const-string v0, "WanDSnapLoadingStrategy"

    const-string v1, "DISCOVER-MEDIA: Elected to download %s, user has seen this channel recently"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v7

    sget-object v3, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v8

    .line 40
    goto/16 :goto_1

    :cond_7
    move v0, v7

    .line 37
    goto :goto_3
.end method

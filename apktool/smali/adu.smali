.class final Ladu;
.super Ladn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    invoke-static {}, Laef;->a()Laef;

    move-result-object v1

    new-instance v2, Ladd;

    invoke-direct {v2}, Ladd;-><init>()V

    new-instance v3, Ladt;

    invoke-direct {v3}, Ladt;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Ladu;-><init>(Lakr;Laef;Ladd;Ladt;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lakr;Laef;Ladd;Ladt;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Ladn;-><init>(Lakr;Laef;Ladd;Ladt;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    iget-object v0, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

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
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p2, v0, v7

    move v7, v8

    .line 43
    :cond_1
    :goto_1
    return v7

    .line 32
    :cond_2
    iget-object v0, p1, Ladf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ladf;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v1, p0, Ladu;->b:Ladd;

    iget-object v1, v1, Ladd;->a:Lakn;

    const-string v2, "DISCOVER_V2"

    const-string v3, "WAN_NUM_DSNAPS_TO_LOAD_BEFORE_CURRENT"

    invoke-virtual {v1, v2, v3, v8}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Ladu;->b:Ladd;

    iget-object v2, v2, Ladd;->a:Lakn;

    const-string v3, "DISCOVER_V2"

    const-string v4, "WAN_NUM_DSNAPS_TO_LOAD_AFTER_CURRENT"

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

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
    iput-boolean v7, p3, Laly$a;->c:Z

    move v0, v8

    goto :goto_0

    .line 37
    :cond_6
    iget-object v0, p0, Ladu;->c:Laef;

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laef;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Ladu;->b:Ladd;

    iget-object v0, v0, Ladd;->a:Lakn;

    const-string v1, "DISCOVER_V2"

    const-string v4, "WAN_RECENT_CHANNEL_THRESHOLD_HOURS"

    const/16 v5, 0x30

    invoke-virtual {v0, v1, v4, v5}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Ladu;->b:Ladd;

    iget-object v0, v0, Ladd;->a:Lakn;

    const-string v1, "DISCOVER_V2"

    const-string v6, "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    invoke-virtual {v0, v1, v6, v8}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Ladt;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v7, p3, Laly$a;->c:Z

    move v0, v8

    :goto_3
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v7

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    move v7, v8

    .line 40
    goto/16 :goto_1

    :cond_7
    move v0, v7

    .line 37
    goto :goto_3
.end method

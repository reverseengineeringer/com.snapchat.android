.class final Ladv;
.super Ladn;
.source "SourceFile"


# instance fields
.field private final e:Lbhk;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    new-instance v1, Lakr;

    invoke-direct {v1}, Lakr;-><init>()V

    invoke-static {}, Laef;->a()Laef;

    move-result-object v2

    new-instance v3, Ladd;

    invoke-direct {v3}, Ladd;-><init>()V

    new-instance v4, Ladt;

    invoke-direct {v4}, Ladt;-><init>()V

    new-instance v5, Lbhk;

    invoke-direct {v5}, Lbhk;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ladv;-><init>(Lakr;Laef;Ladd;Ladt;Lbhk;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lakr;Laef;Ladd;Ladt;Lbhk;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Ladn;-><init>(Lakr;Laef;Ladd;Ladt;)V

    .line 32
    iput-object p5, p0, Ladv;->e:Lbhk;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ladf;Lcom/snapchat/android/discover/model/DSnapPage;Laly$a;)Z
    .locals 10

    .prologue
    const/16 v9, 0x48

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 37
    iget-object v1, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p3, Laly$a;->c:Z

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 38
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v7

    .line 52
    :goto_1
    return v0

    :cond_0
    move v1, v7

    .line 37
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lakr;->aJ()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :goto_2
    iget-object v1, p0, Ladv;->b:Ladd;

    iget-object v1, v1, Ladd;->a:Lakn;

    const-string v4, "DISCOVER_V2"

    const-string v5, "WIFI_RECENT_USER_THRESHOLD_HOURS"

    invoke-virtual {v1, v4, v5, v9}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Ladv;->b:Ladd;

    iget-object v1, v1, Ladd;->a:Lakn;

    const-string v6, "DISCOVER_V2"

    const-string v8, "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD"

    invoke-virtual {v1, v6, v8, v0}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Ladt;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v0, p3, Laly$a;->c:Z

    move v1, v0

    :goto_3
    if-eqz v1, :cond_4

    .line 43
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v7

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {}, Lakr;->aJ()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    move v1, v7

    goto :goto_3

    .line 47
    :cond_4
    iget-object v1, p0, Ladv;->c:Laef;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laef;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Ladv;->b:Ladd;

    iget-object v1, v1, Ladd;->a:Lakn;

    const-string v4, "DISCOVER_V2"

    const-string v5, "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS"

    invoke-virtual {v1, v4, v5, v9}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Ladv;->b:Ladd;

    iget-object v1, v1, Ladd;->a:Lakn;

    const-string v6, "DISCOVER_V2"

    const-string v8, "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    const/16 v9, 0x64

    invoke-virtual {v1, v6, v8, v9}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Ladt;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v0, p3, Laly$a;->c:Z

    move v1, v0

    :goto_4
    if-eqz v1, :cond_6

    .line 48
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v7

    goto :goto_1

    :cond_5
    move v1, v7

    .line 47
    goto :goto_4

    :cond_6
    move v0, v7

    .line 52
    goto :goto_1
.end method

.class final Laxo$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 106
    sget-object v0, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 107
    sget-object v0, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 108
    sget-object v0, Laxo;->DSNAP_MEDIA_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 109
    sget-object v0, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 110
    sget-object v0, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 111
    sget-object v0, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 112
    sget-object v0, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 113
    sget-object v0, Laxo;->CHAT_MEDIA_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 114
    sget-object v0, Laxo;->UNENCRYPTED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 115
    sget-object v0, Laxo;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 116
    sget-object v0, Laxo;->GEOFILTER_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 117
    sget-object v0, Laxo;->DISCOVER_SHARE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 118
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    iget-object v0, v0, Laya;->mCache:Laxn;

    invoke-virtual {v0, v1}, Laxn;->a(Z)V

    .line 119
    sget-object v0, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 120
    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laxn;->e()V

    .line 121
    new-instance v3, Layv;

    invoke-direct {v3}, Layv;-><init>()V

    sget-object v4, Lazh;->CHAT_MEDIA_KEYS_AND_IVS:Lazf;

    iget-object v0, v3, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v0, v4}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lays;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lays;->mTimestamp:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Layv;->a(Lazf;Ljava/util/Map;)V

    .line 122
    :cond_4
    return-void
.end method

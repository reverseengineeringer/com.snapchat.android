.class public final Lalv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Lalv;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lalu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field private final d:Ltd;

.field private final e:Lawr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lalv;

    invoke-direct {v0}, Lalv;-><init>()V

    sput-object v0, Lalv;->b:Lalv;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lalv;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v0

    invoke-static {}, Lawr$a;->a()Lawr;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lalv;-><init>(Ltd;Lawr;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ltd;Lawr;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V
    .locals 0
    .param p1    # Ltd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lawr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lalv;->d:Ltd;

    .line 65
    iput-object p2, p0, Lalv;->e:Lawr;

    .line 66
    iput-object p3, p0, Lalv;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    .line 67
    return-void
.end method

.method public static a()Lalv;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lalv;->b:Lalv;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->X()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltd;->b(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    .line 264
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lalv;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lalv;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalu;

    .line 205
    iget-object v1, v0, Lalu;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lalu;->b:Lalb;

    iget-object v0, v0, Lalu;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lalb;->a(Ljava/lang/String;)Z

    .line 206
    :cond_0
    sget-object v0, Lalv;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatMedia;Ljava/lang/String;)[B
    .locals 8

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "/bq/chat_media"

    invoke-static {v0, v1}, Lpc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "conversation_id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->X()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "timestamp"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "req_token"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "username"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bq/chat_media"

    invoke-static {v1}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bq/chat_media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "CHAT"

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lalt;

    invoke-direct {v0}, Lalt;-><init>()V

    sget-object v3, Lalv;->c:Ljava/util/Map;

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v6}, Lalt;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lalv;->c:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p0}, Lalv;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 256
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lakh;)Z
    .locals 13
    .annotation build Lcaq;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Lakh;->d()Ljava/lang/String;

    move-result-object v8

    .line 94
    const-string v0, "MediaDownloader"

    const-string v1, "CHAT-LOG: waiting to load Discover share media with Id [%s]"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v8, v5, v3

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v9, p1, Lakh;->mExtractionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 97
    :try_start_0
    const-string v0, "MediaDownloader"

    const-string v1, "CHAT-LOG: loading Discover share media with Id [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 100
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v10

    .line 101
    if-eqz v0, :cond_0

    if-nez v10, :cond_1

    .line 102
    :cond_0
    const-string v0, "MediaDownloader"

    const-string v1, "Discover share media with Id [%s] failed to load as the user may have logged out"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    monitor-exit v9

    move v0, v3

    .line 198
    :goto_0
    return v0

    .line 106
    :cond_1
    sget-object v1, Lawq;->DISCOVER_SHARE:Lawp;

    check-cast v1, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    .line 107
    iget-boolean v5, p1, Lakh;->mIsExtracted:Z

    if-eqz v5, :cond_2

    .line 108
    monitor-exit v9

    move v0, v2

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lakh;->C()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v5, v6, :cond_3

    .line 110
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 111
    iget-object v5, p0, Lalv;->e:Lawr;

    invoke-virtual {v5, v8}, Lawr;->a(Ljava/lang/String;)Labo;

    move-result-object v5

    .line 112
    if-eqz v5, :cond_7

    .line 113
    invoke-virtual {p1, v5}, Lakh;->a(Labo;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 115
    const-string v0, "MediaDownloader"

    const-string v1, "Loaded Discover share image media and metadata with Id [%s] from cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    monitor-exit v9

    move v0, v2

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1}, Lakh;->V()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 121
    iget-object v5, p0, Lalv;->e:Lawr;

    invoke-virtual {v5, v8}, Lawr;->a(Ljava/lang/String;)Labo;

    move-result-object v11

    .line 122
    if-eqz v11, :cond_7

    .line 123
    iget-object v5, v11, Labo;->i:Ljava/lang/String;

    if-eqz v5, :cond_5

    move v7, v2

    .line 124
    :goto_1
    if-eqz v7, :cond_e

    .line 125
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 127
    :goto_2
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move v5, v2

    .line 128
    :goto_3
    sget-object v12, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v12}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v12

    .line 129
    if-eqz v12, :cond_7

    if-eqz v5, :cond_7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_7

    .line 130
    :cond_4
    invoke-virtual {p1, v11}, Lakh;->a(Labo;)V

    .line 131
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lakh;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 133
    const-string v0, "MediaDownloader"

    const-string v1, "Loaded Discover share video media and metadata with Id [%s] from cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    monitor-exit v9

    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v7, v3

    .line 123
    goto :goto_1

    :cond_6
    move v5, v3

    .line 127
    goto :goto_3

    .line 140
    :cond_7
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)[B

    move-result-object v5

    .line 142
    if-nez v5, :cond_a

    .line 143
    invoke-virtual {p1}, Lakh;->V()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_VIDEO:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    .line 147
    :goto_4
    iget-object v6, p0, Lalv;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    .line 149
    invoke-static {p1, v10}, Lalv;->a(Lcom/snapchat/android/model/chat/ChatMedia;Ljava/lang/String;)[B

    move-result-object v5

    .line 151
    if-nez v5, :cond_9

    .line 152
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 154
    const-string v0, "MediaDownloader"

    const-string v1, "Discover share media with Id [%s] failed to load from server"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    monitor-exit v9

    move v0, v3

    goto/16 :goto_0

    .line 143
    :cond_8
    sget-object v5, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_IMAGE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    goto :goto_4

    .line 158
    :cond_9
    array-length v7, v5

    invoke-static {v6, v7}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V

    .line 160
    sget-object v6, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5, v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    .line 164
    :cond_a
    new-instance v6, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {p1}, Lakh;->D()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lakh;->E()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    invoke-interface {v6, v5}, Layc;->b([B)[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v5, v4

    move v4, v3

    .line 174
    :goto_5
    if-nez v4, :cond_b

    if-nez v5, :cond_c

    .line 175
    :cond_b
    :try_start_2
    invoke-virtual {v1, v8}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 177
    const-string v0, "MediaDownloader"

    const-string v1, "Failed to decrypt discover resource with Id [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    monitor-exit v9

    move v0, v3

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v5

    move-object v5, v4

    move v4, v2

    goto :goto_5

    .line 181
    :cond_c
    new-instance v1, Labm;

    invoke-direct {v1}, Labm;-><init>()V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    invoke-virtual {p1}, Lakh;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7, v5, v6}, Labm;->a(Landroid/content/Context;Ljava/lang/String;[BLayc;)Laim;

    move-result-object v4

    .line 184
    if-nez v4, :cond_d

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 186
    const-string v0, "MediaDownloader"

    const-string v1, "Failed to extract discover resource with Id [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    monitor-exit v9

    move v0, v3

    goto/16 :goto_0

    .line 190
    :cond_d
    iget-object v1, v4, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    check-cast v1, Ladb;

    .line 191
    iget-object v3, v4, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    iget-object v4, v4, Lcom/snapchat/android/model/Mediabryo;->mOverlayPath:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lakh;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v1}, Lakh;->a(Ladb;)V

    .line 194
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->DISCOVER_SHARE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p1, Lakh;->mIsExtracted:Z

    .line 197
    const-string v0, "MediaDownloader"

    const-string v1, "Extracted and loaded Discover share media with Id [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    monitor-exit v9

    move v0, v2

    goto/16 :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_e
    move-object v6, v4

    goto/16 :goto_2
.end method

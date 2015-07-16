.class public final Lams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final b:Lams;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lamr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

.field private final d:Ltt;

.field private final e:Laxp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lams;

    invoke-direct {v0}, Lams;-><init>()V

    sput-object v0, Lams;->b:Lams;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lams;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v0

    invoke-static {}, Laxp$a;->a()Laxp;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a()Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lams;-><init>(Ltt;Laxp;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Ltt;Laxp;Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;)V
    .locals 0
    .param p1    # Ltt;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laxp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lams;->d:Ltt;

    .line 65
    iput-object p2, p0, Lams;->e:Laxp;

    .line 66
    iput-object p3, p0, Lams;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    .line 67
    return-void
.end method

.method public static a()Lams;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lams;->b:Lams;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->Y()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltt;->b(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    .line 264
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lams;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lams;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamr;

    .line 205
    iget-object v1, v0, Lamr;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lamr;->b:Lalw;

    iget-object v0, v0, Lamr;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lalw;->a(Ljava/lang/String;)Z

    .line 206
    :cond_0
    sget-object v0, Lams;->c:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "/bq/chat_media"

    invoke-static {v0, v1}, Lpt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "conversation_id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatMedia;->Y()Ljava/lang/String;

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

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v0, Lamq;

    invoke-direct {v0}, Lamq;-><init>()V

    sget-object v3, Lams;->c:Ljava/util/Map;

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v6}, Lamq;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lams;->c:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p0}, Lams;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 256
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lalc;)Z
    .locals 13
    .annotation build Lcbr;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Lalc;->d()Ljava/lang/String;

    move-result-object v8

    .line 94
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v8, v0, v3

    .line 96
    iget-object v9, p1, Lalc;->mExtractionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 97
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 98
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 100
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v10

    .line 101
    if-eqz v0, :cond_0

    if-nez v10, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 103
    monitor-exit v9

    move v0, v3

    .line 198
    :goto_0
    return v0

    .line 106
    :cond_1
    sget-object v1, Laxo;->DISCOVER_SHARE:Laxn;

    check-cast v1, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    .line 107
    iget-boolean v5, p1, Lalc;->mIsExtracted:Z

    if-eqz v5, :cond_2

    .line 108
    monitor-exit v9

    move v0, v2

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lalc;->D()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v5, v6, :cond_3

    .line 110
    sget-object v5, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v8, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->b(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 111
    iget-object v5, p0, Lams;->e:Laxp;

    invoke-virtual {v5, v8}, Laxp;->a(Ljava/lang/String;)Laco;

    move-result-object v5

    .line 112
    if-eqz v5, :cond_7

    .line 113
    invoke-virtual {p1, v5}, Lalc;->a(Laco;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 116
    monitor-exit v9

    move v0, v2

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1}, Lalc;->X()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 121
    iget-object v5, p0, Lams;->e:Laxp;

    invoke-virtual {v5, v8}, Laxp;->a(Ljava/lang/String;)Laco;

    move-result-object v11

    .line 122
    if-eqz v11, :cond_7

    .line 123
    iget-object v5, v11, Laco;->i:Ljava/lang/String;

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
    invoke-virtual {p1, v11}, Lalc;->a(Laco;)V

    .line 131
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lalc;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 134
    monitor-exit v9

    move v0, v2

    goto :goto_0

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
    invoke-virtual {p1}, Lalc;->X()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_VIDEO:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    .line 147
    :goto_4
    iget-object v6, p0, Lams;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    .line 149
    invoke-static {p1, v10}, Lams;->a(Lcom/snapchat/android/model/chat/ChatMedia;Ljava/lang/String;)[B

    move-result-object v5

    .line 151
    if-nez v5, :cond_9

    .line 152
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

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

    invoke-virtual {p1}, Lalc;->E()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lalc;->F()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    invoke-interface {v6, v5}, Laza;->b([B)[B
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

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

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
    new-instance v1, Lacm;

    invoke-direct {v1}, Lacm;-><init>()V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    invoke-virtual {p1}, Lalc;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7, v5, v6}, Lacm;->a(Landroid/content/Context;Ljava/lang/String;[BLaza;)Laji;

    move-result-object v4

    .line 184
    if-nez v4, :cond_d

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 187
    monitor-exit v9

    move v0, v3

    goto/16 :goto_0

    .line 190
    :cond_d
    iget-object v1, v4, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v1, Laeb;

    .line 191
    iget-object v3, v4, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    iget-object v4, v4, Lcom/snapchat/android/model/Mediabryo;->mOverlayPath:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lalc;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v1}, Lalc;->a(Laeb;)V

    .line 194
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->DISCOVER_SHARE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p1, Lalc;->mIsExtracted:Z

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

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

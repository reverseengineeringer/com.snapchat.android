.class public final Laki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laki$1;
    }
.end annotation


# static fields
.field private static sInstance:Laki;


# instance fields
.field public mFailedChatMediaSnapbryos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field protected mFailedPostSnapbryoMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mFailedSendDSnapbryos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field public mFailedSendSnapbryos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field private mPostingSnapbryoMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSendingDSnapbryos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field public mSendingSnapbryos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapWombMutex:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mSendingDSnapbryos:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laki;->mFailedChatMediaSnapbryos:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public static declared-synchronized a()Laki;
    .locals 2

    .prologue
    .line 66
    const-class v1, Laki;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laki;->sInstance:Laki;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Laki;

    invoke-direct {v0}, Laki;-><init>()V

    sput-object v0, Laki;->sInstance:Laki;

    .line 69
    :cond_0
    sget-object v0, Laki;->sInstance:Laki;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Laji;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;",
            "Ljava/lang/String;",
            "Laji;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 190
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    iget-object v2, p3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 207
    if-nez v0, :cond_0

    monitor-exit v1

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 73
    const-class v0, Laki;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Laki;->sInstance:Laki;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;Laji;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;",
            "Ljava/lang/String;",
            "Laji;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Laki;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 343
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 345
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 346
    invoke-virtual {p0, v0}, Laki;->a(Laji;)V

    goto :goto_0

    .line 349
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final a(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v2, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v0, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 221
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v2

    .line 224
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laji;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 389
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 391
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 394
    iget-object v3, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v3, v4, :cond_0

    .line 395
    iget-object v3, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v3, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 399
    iget-object v0, v0, Lajy;->mStoryId:Ljava/lang/String;

    .line 400
    invoke-virtual {p0, v0, v2}, Laki;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 402
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v3, :cond_1

    .line 403
    iget-object v0, p0, Laki;->mSendingDSnapbryos:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    check-cast v0, Lalc;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v3, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 407
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 405
    :cond_2
    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lakx;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lakx;->b(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V
    .locals 8

    .prologue
    .line 140
    iget-object v2, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v0, v1, :cond_0

    .line 142
    monitor-exit v2

    .line 183
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 145
    invoke-virtual {v0, p2}, Lakg;->a(Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 147
    iget-object v1, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 148
    iget-object v3, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 151
    iget-object v5, v0, Lajy;->mStoryId:Ljava/lang/String;

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p1}, Laji;->a()Laji;

    move-result-object v7

    .line 158
    iget-object v1, v7, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v1, Lakg;

    .line 160
    iput-object v6, v1, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 162
    sget-object v1, Laki$1;->$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$PostStatus:[I

    invoke-virtual {v3}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_2
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v1

    iget-object v1, v1, Lakk;->mStories:Ljava/util/Map;

    .line 178
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 179
    new-instance v6, Lcom/snapchat/android/model/StoryGroup;

    iget-object v0, v0, Lajy;->mStoryGroupDisplayName:Ljava/lang/String;

    invoke-direct {v6, v5, v0}, Lcom/snapchat/android/model/StoryGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v1, v5, v7}, Laki;->b(Ljava/util/Map;Ljava/lang/String;Laji;)V

    goto :goto_2

    .line 167
    :pswitch_1
    iget-object v1, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v1, v5, v7}, Laki;->b(Ljava/util/Map;Ljava/lang/String;Laji;)V

    .line 168
    iget-object v1, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v1, v5, v7}, Laki;->a(Ljava/util/Map;Ljava/lang/String;Laji;)V

    goto :goto_2

    .line 173
    :pswitch_2
    iget-object v1, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v1, v5, v7}, Laki;->b(Ljava/util/Map;Ljava/lang/String;Laji;)V

    .line 174
    iget-object v1, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v1, v5, v7}, Laki;->a(Ljava/util/Map;Ljava/lang/String;Laji;)V

    goto :goto_2

    .line 183
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 102
    iget-object v4, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 104
    iput-object p2, v2, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 106
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    iget-object v5, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    if-le v6, v1, :cond_2

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lakx;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conversation is null : Recipients size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Recipient String = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_b

    .line 108
    sget-object v0, Laki$1;->$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus:[I

    invoke-virtual {p2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_1
    :goto_2
    monitor-exit v4

    return-void

    .line 106
    :cond_2
    invoke-virtual {v5}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_3
    iget-object v2, v5, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v7, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v2, v7, :cond_7

    move v2, v1

    :goto_3
    if-nez v2, :cond_4

    if-ne v6, v1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    iput-boolean v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v7, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v7, :cond_9

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Ljava/lang/String;)Lake;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lake;

    invoke-direct {v0, p1}, Lake;-><init>(Laji;)V

    :cond_6
    if-ne v6, v1, :cond_8

    if-nez v2, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Lake;->mIsSavableSnap:Z

    :goto_4
    sget-object v1, Lzi$1;->a:[I

    iget-object v2, v5, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :goto_5
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbca;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lake;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move v2, v0

    .line 106
    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lake;->mIsSavableSnap:Z

    goto :goto_4

    :pswitch_0
    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lake;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0}, Lake;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-wide v6, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v1, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lake;->e()V

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v0}, Lake;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-wide v6, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v1, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_5

    :cond_9
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    check-cast v0, Lalc;

    if-nez v0, :cond_a

    new-instance v0, Lalc;

    invoke-direct {v0, p1}, Lalc;-><init>(Laji;)V

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    :cond_a
    sget-object v1, Lzi$1;->a:[I

    iget-object v2, v5, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    :goto_6
    iget-object v1, v5, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    if-eq v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbca;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_6

    :pswitch_4
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_6

    :pswitch_5
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_6

    .line 110
    :pswitch_6
    iget-object v0, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 113
    :pswitch_7
    iget-object v0, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 118
    :pswitch_8
    iget-object v0, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 121
    :cond_b
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_1

    .line 122
    sget-object v0, Laki$1;->$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$SendStatus:[I

    invoke-virtual {p2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 124
    :pswitch_9
    iget-object v0, p0, Laki;->mSendingDSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 127
    :pswitch_a
    iget-object v0, p0, Laki;->mSendingDSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 132
    :pswitch_b
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Laki;->mSendingDSnapbryos:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 122
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 79
    iput-object p2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    .line 80
    sget-object v0, Laki$1;->$SwitchMap$com$snapchat$android$model$MediaMailingMetadata$UploadStatus:[I

    invoke-virtual {p2}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 84
    :pswitch_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v2, :cond_1

    .line 85
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Laki;->mFailedChatMediaSnapbryos:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v2, :cond_2

    .line 92
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_2
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Laki;->mFailedChatMediaSnapbryos:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Laki;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Laki;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lzp;)V
    .locals 5

    .prologue
    .line 245
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 247
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v0, v3, v4}, Lzp;->a(Laji;ZZ)Z

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v2, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Laki;->c(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    iget-object v1, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 272
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v1, Lakg;

    .line 274
    iget-object v1, v1, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajy;

    .line 276
    iget-object v5, v1, Lajy;->mStoryId:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 278
    if-nez v1, :cond_1

    .line 279
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 280
    iget-object v6, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1
    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v2, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v0, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 237
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v2

    .line 240
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Laji;)V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {p0, p1, v0}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 429
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laji;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Laki;->c(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    .line 320
    return-void
.end method

.method public final c()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Laki;->mPostingSnapbryoMaps:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laji;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v2, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 356
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    sget-object v1, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Laxo;->DISCOVER_SHARE:Laxn;

    check-cast v1, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    iget-object v5, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    sget-object v6, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v1, v5, v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 363
    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Laki;->a(Laji;)V

    goto :goto_0

    .line 368
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Laki;->mSendingSnapbryos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v2, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    iget-object v0, p0, Laki;->mFailedPostSnapbryoMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 259
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Laki;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final e()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Laki;->mFailedSendSnapbryos:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Laki;->mFailedSendDSnapbryos:Ljava/util/Map;

    invoke-virtual {p0, v0}, Laki;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Laji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v1, p0, Laki;->mSnapWombMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Laki;->mFailedChatMediaSnapbryos:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

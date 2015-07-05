.class public final Lym;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym$1;
    }
.end annotation


# direct methods
.method public static a()Latw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Latw",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lajv;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 82
    invoke-static {v0}, Lym;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1}, Latw;->a(Ljava/util/List;)Latw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p0}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    move-object v0, v1

    .line 239
    :goto_0
    return-object v0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v2

    .line 232
    monitor-enter v2

    .line 233
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 234
    instance-of v4, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    check-cast v0, Lcom/snapchat/android/model/Snap;

    monitor-exit v2

    goto :goto_0

    .line 238
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

    move-object v0, v1

    .line 239
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 57
    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 333
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 334
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v6

    invoke-static {v5, v6}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v1, v1, 0x1

    array-length v5, v3

    if-eq v1, v5, :cond_0

    .line 336
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-static {p0}, Laxi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 3
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 316
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 318
    :cond_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lakc;->e()Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 251
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 253
    monitor-enter v4

    .line 254
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 255
    instance-of v6, v0, Lakb;

    if-eqz v6, :cond_1

    .line 256
    check-cast v0, Lakb;

    .line 257
    invoke-virtual {v0}, Lakb;->Y()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lakb;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_1
    instance-of v6, v0, Laje;

    if-eqz v6, :cond_0

    .line 261
    check-cast v0, Laje;

    .line 262
    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 268
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

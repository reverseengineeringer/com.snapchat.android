.class public final Lzi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi$1;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-static {p0}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    move-object v0, v1

    .line 213
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v2

    .line 206
    monitor-enter v2

    .line 207
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

    .line 208
    instance-of v4, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    check-cast v0, Lcom/snapchat/android/model/Snap;

    monitor-exit v2

    goto :goto_0

    .line 212
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

    .line 213
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 55
    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 307
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 308
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v6

    invoke-static {v5, v6}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v1, v1, 0x1

    array-length v5, v3

    if-eq v1, v5, :cond_0

    .line 310
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 3
    .annotation build Lchc;
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
    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 290
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 292
    :cond_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {p0}, Layg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
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

    .line 220
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lakx;->f()Ljava/util/List;

    move-result-object v1

    .line 224
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

    .line 225
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 227
    monitor-enter v4

    .line 228
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

    .line 229
    instance-of v6, v0, Lakw;

    if-eqz v6, :cond_1

    .line 230
    check-cast v0, Lakw;

    .line 231
    invoke-virtual {v0}, Lakw;->Z()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lakw;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_1
    instance-of v6, v0, Laka;

    if-eqz v6, :cond_0

    .line 235
    check-cast v0, Laka;

    .line 236
    invoke-virtual {v0}, Laka;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

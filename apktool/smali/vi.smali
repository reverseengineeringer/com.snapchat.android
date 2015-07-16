.class public final Lvi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi$4;
    }
.end annotation


# instance fields
.field final a:Lcom/snapchat/android/model/chat/ChatConversation;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lq;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvi;->b:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 189
    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_1

    const-class v1, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 190
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v6

    .line 192
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 193
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_1
    instance-of v1, v0, Lakw;

    if-eqz v1, :cond_2

    const-class v1, Lakw;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_3

    const-class v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 196
    :cond_4
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 4

    .prologue
    .line 543
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    .line 551
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->U()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 552
    :cond_2
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    check-cast p1, Lcom/snapchat/android/model/Snap;

    iput-object p1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    goto :goto_0

    .line 554
    :cond_3
    instance-of v0, p1, Lakw;

    if-eqz v0, :cond_5

    .line 555
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    .line 556
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-virtual {v0}, Lakw;->U()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 557
    :cond_4
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    check-cast p1, Lakw;

    iput-object p1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    goto :goto_0

    .line 559
    :cond_5
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 561
    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 562
    :cond_6
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: updateItemForFeedIconAndPriorityIfNecessary not updating because "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    .line 511
    :cond_0
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 512
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: updateItemForFeedIconAndPriorityIfNecessary updated icons. Previous priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    iput-object p3, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 520
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 240
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 241
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 208
    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v4

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 211
    goto :goto_0

    .line 212
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    .line 123
    monitor-enter v4

    .line 124
    :try_start_0
    invoke-direct {p0, v4}, Lvi;->c(Ljava/util/List;)V

    .line 126
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    .line 128
    iget-object v3, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lakw;

    .line 129
    iget-object v5, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    if-eqz v3, :cond_1

    .line 136
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    if-eqz v5, :cond_2

    .line 139
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    const/4 v0, -0x1

    .line 147
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 148
    iget-object v3, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v0, v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v3

    .line 149
    if-le v3, v2, :cond_4

    .line 150
    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v2, v3

    .line 153
    :cond_4
    if-ne v3, v2, :cond_3

    .line 154
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->values()[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    move-result-object v0

    aget-object v2, v0, v2

    .line 161
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-ne v2, v0, :cond_6

    .line 163
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Laka;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 172
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FEEDICON-LOG: getHighestPriorityItemsForIcon for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    :goto_2
    monitor-exit v4

    .line 179
    return-object v0

    .line 164
    :cond_6
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-ne v2, v0, :cond_7

    .line 166
    invoke-static {v5}, Lvi;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 169
    :cond_7
    invoke-static {v5}, Lvi;->b(Ljava/util/List;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FEEDICON-LOG: getHighestPriorityItemForIcon but no items in conversation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_2
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p1

    .line 525
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 526
    invoke-direct {p0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FEEDICON-LOG: updateFeedIcons for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, p0, Lvi;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lvi;->b()Ljava/util/List;

    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    monitor-exit v2

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->values()[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v6, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v0, v6}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    aget-object v5, v5, v0

    .line 64
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eq v5, v0, :cond_1

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-ne v0, v5, :cond_1

    invoke-static {v3, v4}, Lvi;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 68
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 69
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    iput-object v5, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: updateFeedIcons determined priority "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with items: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    monitor-exit v2

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v3, p0, Lvi;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v0, Lvi$4;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 108
    monitor-exit v3

    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 90
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: onItemReceived "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    sget-object v4, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FEEDICON-LOG: Previous priority is > NEW "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    sget-object v4, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lvi;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-static {v5, v4}, Lvi;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: items for feed icon: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    iput-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    monitor-exit v3

    goto/16 :goto_0

    .line 94
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: onItemViewed "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    instance-of v4, p1, Laka;

    if-eqz v4, :cond_4

    iget-object v1, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {p1, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v1

    sget-object v4, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lvi;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Laka;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: onItemViewed previous priority: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and priority is now UNOPENED_SNAP_AVAILABLE_NEXT with icon "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    iput-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    :goto_3
    invoke-direct {p0, p1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lvi$3;

    invoke-direct {v1, p0}, Lvi$3;-><init>(Lvi;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    :goto_4
    monitor-exit v3

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "FEEDICON-LOG: onItemViewed previous priority: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and priority is now RECENTLY_OPENED_LAST_SNAP with icon "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    iput-object v0, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_3

    :cond_4
    instance-of v4, p1, Lake;

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemViewed SentSnap and updating last item as viewed. Previous priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lvi;->c:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_4

    .line 96
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemSending "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    monitor-exit v3

    goto/16 :goto_0

    .line 98
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemSent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    invoke-direct {p0, p1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lvi$1;

    invoke-direct {v2, p0}, Lvi$1;-><init>(Lvi;)V

    const-wide/16 v4, 0x44c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v3

    goto/16 :goto_0

    .line 100
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemFailedToSend "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v1}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lvi$2;

    invoke-direct {v2, p0}, Lvi$2;-><init>(Lvi;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    monitor-exit v3

    goto/16 :goto_0

    .line 102
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemLoading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    monitor-exit v3

    goto/16 :goto_0

    .line 104
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemLoaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    monitor-exit v3

    goto/16 :goto_0

    .line 106
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FEEDICON-LOG: onItemFailedToLoad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-direct {p0, p1, v0, v0}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

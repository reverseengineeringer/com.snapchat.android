.class public final Lin;
.super Lml;
.source "SourceFile"


# instance fields
.field private final eventName:Ljava/lang/String;

.field public exitEvent:Lkf;

.field public nextPage:Ljava/lang/String;

.field public suggestFriendAddCount:Ljava/lang/Long;

.field public suggestFriendCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 44
    const-string v0, "PROFILE_ADD_FRIENDS_PAGE_EXIT"

    iput-object v0, p0, Lin;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v1, "event_name"

    const-string v2, "PROFILE_ADD_FRIENDS_PAGE_EXIT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lin;->exitEvent:Lkf;

    if-eqz v1, :cond_0

    const-string v1, "exit_event"

    iget-object v2, p0, Lin;->exitEvent:Lkf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iget-object v1, p0, Lin;->nextPage:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "next_page"

    iget-object v2, p0, Lin;->nextPage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    iget-object v1, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "suggest_friend_add_count"

    iget-object v2, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    iget-object v1, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const-string v1, "suggest_friend_count"

    iget-object v2, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_3
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 67
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 69
    :cond_4
    check-cast p1, Lin;

    .line 71
    iget-object v2, p0, Lin;->exitEvent:Lkf;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lin;->exitEvent:Lkf;

    iget-object v3, p1, Lin;->exitEvent:Lkf;

    invoke-virtual {v2, v3}, Lkf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lin;->exitEvent:Lkf;

    if-nez v2, :cond_5

    .line 72
    :cond_7
    iget-object v2, p0, Lin;->nextPage:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lin;->nextPage:Ljava/lang/String;

    iget-object v3, p1, Lin;->nextPage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lin;->nextPage:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 73
    :cond_a
    iget-object v2, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    iget-object v3, p1, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    if-nez v2, :cond_b

    .line 74
    :cond_d
    iget-object v2, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    iget-object v3, p1, Lin;->suggestFriendCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lin;->suggestFriendCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 81
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lin;->exitEvent:Lkf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin;->exitEvent:Lkf;

    invoke-virtual {v0}, Lkf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lin;->nextPage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin;->nextPage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin;->suggestFriendAddCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lin;->suggestFriendCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 85
    return v0

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_1

    :cond_3
    move v0, v1

    .line 83
    goto :goto_2
.end method

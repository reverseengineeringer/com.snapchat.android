.class public final Lkn;
.super Lml;
.source "SourceFile"


# instance fields
.field public addedMeSearchCount:Ljava/lang/Long;

.field public addressBookSearchCount:Ljava/lang/Long;

.field public charCount:Ljava/lang/Long;

.field private final eventName:Ljava/lang/String;

.field public keystrokeCount:Ljava/lang/Long;

.field public myFriendSearchCount:Ljava/lang/Long;

.field public usernameSearchCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 60
    const-string v0, "PROFILE_USERNAME_SEARCH_PERFORM"

    iput-object v0, p0, Lkn;->eventName:Ljava/lang/String;

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
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "event_name"

    const-string v2, "PROFILE_USERNAME_SEARCH_PERFORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "added_me_search_count"

    iget-object v2, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v1, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "address_book_search_count"

    iget-object v2, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v1, p0, Lkn;->charCount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "char_count"

    iget-object v2, p0, Lkn;->charCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    iget-object v1, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const-string v1, "keystroke_count"

    iget-object v2, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_3
    iget-object v1, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const-string v1, "my_friend_search_count"

    iget-object v2, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    iget-object v1, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, "username_search_count"

    iget-object v2, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_5
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 84
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

    .line 85
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 87
    :cond_4
    check-cast p1, Lkn;

    .line 89
    iget-object v2, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 90
    :cond_7
    iget-object v2, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 91
    :cond_a
    iget-object v2, p0, Lkn;->charCount:Ljava/lang/Long;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lkn;->charCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->charCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lkn;->charCount:Ljava/lang/Long;

    if-nez v2, :cond_b

    .line 92
    :cond_d
    iget-object v2, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->keystrokeCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lkn;->keystrokeCount:Ljava/lang/Long;

    if-nez v2, :cond_e

    .line 93
    :cond_10
    iget-object v2, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_11

    .line 94
    :cond_13
    iget-object v2, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Lkn;->usernameSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lkn;->usernameSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lkn;->charCount:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkn;->charCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkn;->keystrokeCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 107
    return v0

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    :cond_2
    move v0, v1

    .line 102
    goto :goto_1

    :cond_3
    move v0, v1

    .line 103
    goto :goto_2

    :cond_4
    move v0, v1

    .line 104
    goto :goto_3

    :cond_5
    move v0, v1

    .line 105
    goto :goto_4
.end method

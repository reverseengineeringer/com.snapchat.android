.class public final Ljx;
.super Lml;
.source "SourceFile"


# instance fields
.field private final eventName:Ljava/lang/String;

.field public exitEvent:Lkf;

.field public myFriendBlockCount:Ljava/lang/Long;

.field public myFriendBlockInSearchCount:Ljava/lang/Long;

.field public myFriendCount:Ljava/lang/Long;

.field public myFriendNameEditCount:Ljava/lang/Long;

.field public myFriendNameEditInSearchCount:Ljava/lang/Long;

.field public myFriendReAddCount:Ljava/lang/Long;

.field public myFriendReAddInSearchCount:Ljava/lang/Long;

.field public myFriendRemoveCount:Ljava/lang/Long;

.field public myFriendRemoveInSearchCount:Ljava/lang/Long;

.field public myFriendTapCount:Ljava/lang/Long;

.field public myFriendTapInSearchCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 108
    const-string v0, "PROFILE_MY_FRIENDS_PAGE_EXIT"

    iput-object v0, p0, Ljx;->eventName:Ljava/lang/String;

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
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string v1, "event_name"

    const-string v2, "PROFILE_MY_FRIENDS_PAGE_EXIT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Ljx;->exitEvent:Lkf;

    if-eqz v1, :cond_0

    const-string v1, "exit_event"

    iget-object v2, p0, Ljx;->exitEvent:Lkf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v1, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "my_friend_block_count"

    iget-object v2, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    iget-object v1, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "my_friend_block_in_search_count"

    iget-object v2, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    iget-object v1, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const-string v1, "my_friend_count"

    iget-object v2, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    iget-object v1, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const-string v1, "my_friend_name_edit_count"

    iget-object v2, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_4
    iget-object v1, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, "my_friend_name_edit_in_search_count"

    iget-object v2, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_5
    iget-object v1, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, "my_friend_re_add_count"

    iget-object v2, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_6
    iget-object v1, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, "my_friend_re_add_in_search_count"

    iget-object v2, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_7
    iget-object v1, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, "my_friend_remove_count"

    iget-object v2, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_8
    iget-object v1, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_9

    const-string v1, "my_friend_remove_in_search_count"

    iget-object v2, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_9
    iget-object v1, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    if-eqz v1, :cond_a

    const-string v1, "my_friend_tap_count"

    iget-object v2, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_a
    iget-object v1, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    if-eqz v1, :cond_b

    const-string v1, "my_friend_tap_in_search_count"

    iget-object v2, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_b
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 138
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

    .line 139
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 141
    :cond_4
    check-cast p1, Ljx;

    .line 143
    iget-object v2, p0, Ljx;->exitEvent:Lkf;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljx;->exitEvent:Lkf;

    iget-object v3, p1, Ljx;->exitEvent:Lkf;

    invoke-virtual {v2, v3}, Lkf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Ljx;->exitEvent:Lkf;

    if-nez v2, :cond_5

    .line 144
    :cond_7
    iget-object v2, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 145
    :cond_a
    iget-object v2, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_b

    .line 146
    :cond_d
    iget-object v2, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Ljx;->myFriendCount:Ljava/lang/Long;

    if-nez v2, :cond_e

    .line 147
    :cond_10
    iget-object v2, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    if-nez v2, :cond_11

    .line 148
    :cond_13
    iget-object v2, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_15

    iget-object v2, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_14

    .line 149
    :cond_16
    iget-object v2, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget-object v2, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    if-nez v2, :cond_17

    .line 150
    :cond_19
    iget-object v2, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_1a

    .line 151
    :cond_1c
    iget-object v2, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    if-nez v2, :cond_1d

    .line 152
    :cond_1f
    iget-object v2, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_21

    iget-object v2, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    if-nez v2, :cond_20

    .line 153
    :cond_22
    iget-object v2, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    if-eqz v2, :cond_24

    iget-object v2, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendTapCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Ljx;->myFriendTapCount:Ljava/lang/Long;

    if-nez v2, :cond_23

    .line 154
    :cond_25
    iget-object v2, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    iget-object v3, p1, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->exitEvent:Lkf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljx;->exitEvent:Lkf;

    invoke-virtual {v0}, Lkf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljx;->myFriendBlockCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljx;->myFriendBlockInSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljx;->myFriendCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljx;->myFriendNameEditCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljx;->myFriendNameEditInSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljx;->myFriendReAddCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljx;->myFriendReAddInSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 169
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljx;->myFriendRemoveCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljx;->myFriendRemoveInSearchCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljx;->myFriendTapCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljx;->myFriendTapInSearchCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 173
    return v0

    :cond_1
    move v0, v1

    .line 161
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 162
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 163
    goto :goto_2

    :cond_4
    move v0, v1

    .line 164
    goto :goto_3

    :cond_5
    move v0, v1

    .line 165
    goto :goto_4

    :cond_6
    move v0, v1

    .line 166
    goto :goto_5

    :cond_7
    move v0, v1

    .line 167
    goto :goto_6

    :cond_8
    move v0, v1

    .line 168
    goto :goto_7

    :cond_9
    move v0, v1

    .line 169
    goto :goto_8

    :cond_a
    move v0, v1

    .line 170
    goto :goto_9

    :cond_b
    move v0, v1

    .line 171
    goto :goto_a
.end method

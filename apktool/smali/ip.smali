.class public final Lip;
.super Lml;
.source "SourceFile"


# instance fields
.field private final eventName:Ljava/lang/String;

.field public exitEvent:Lkf;

.field public newRequestCount:Ljava/lang/Long;

.field public requestAcceptCount:Ljava/lang/Long;

.field public requestBlockCount:Ljava/lang/Long;

.field public requestIgnoreCount:Ljava/lang/Long;

.field public requestNameEditCount:Ljava/lang/Long;

.field public totalRequestCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 68
    const-string v0, "PROFILE_ADDED_ME_PAGE_EXIT"

    iput-object v0, p0, Lip;->eventName:Ljava/lang/String;

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
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "event_name"

    const-string v2, "PROFILE_ADDED_ME_PAGE_EXIT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lip;->exitEvent:Lkf;

    if-eqz v1, :cond_0

    const-string v1, "exit_event"

    iget-object v2, p0, Lip;->exitEvent:Lkf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    iget-object v1, p0, Lip;->newRequestCount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "new_request_count"

    iget-object v2, p0, Lip;->newRequestCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    iget-object v1, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, "request_accept_count"

    iget-object v2, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    iget-object v1, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const-string v1, "request_block_count"

    iget-object v2, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_3
    iget-object v1, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const-string v1, "request_ignore_count"

    iget-object v2, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_4
    iget-object v1, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, "request_name_edit_count"

    iget-object v2, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_5
    iget-object v1, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, "total_request_count"

    iget-object v2, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_6
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 93
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

    .line 94
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 96
    :cond_4
    check-cast p1, Lip;

    .line 98
    iget-object v2, p0, Lip;->exitEvent:Lkf;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lip;->exitEvent:Lkf;

    iget-object v3, p1, Lip;->exitEvent:Lkf;

    invoke-virtual {v2, v3}, Lkf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lip;->exitEvent:Lkf;

    if-nez v2, :cond_5

    .line 99
    :cond_7
    iget-object v2, p0, Lip;->newRequestCount:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lip;->newRequestCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->newRequestCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lip;->newRequestCount:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 100
    :cond_a
    iget-object v2, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->requestAcceptCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lip;->requestAcceptCount:Ljava/lang/Long;

    if-nez v2, :cond_b

    .line 101
    :cond_d
    iget-object v2, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->requestBlockCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lip;->requestBlockCount:Ljava/lang/Long;

    if-nez v2, :cond_e

    .line 102
    :cond_10
    iget-object v2, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->requestIgnoreCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lip;->requestIgnoreCount:Ljava/lang/Long;

    if-nez v2, :cond_11

    .line 103
    :cond_13
    iget-object v2, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->requestNameEditCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lip;->requestNameEditCount:Ljava/lang/Long;

    if-nez v2, :cond_14

    .line 104
    :cond_16
    iget-object v2, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    iget-object v3, p1, Lip;->totalRequestCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lip;->totalRequestCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->exitEvent:Lkf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lip;->exitEvent:Lkf;

    invoke-virtual {v0}, Lkf;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->newRequestCount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lip;->newRequestCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lip;->requestAcceptCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 114
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lip;->requestBlockCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lip;->requestIgnoreCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lip;->requestNameEditCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lip;->totalRequestCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 118
    return v0

    :cond_1
    move v0, v1

    .line 111
    goto :goto_0

    :cond_2
    move v0, v1

    .line 112
    goto :goto_1

    :cond_3
    move v0, v1

    .line 113
    goto :goto_2

    :cond_4
    move v0, v1

    .line 114
    goto :goto_3

    :cond_5
    move v0, v1

    .line 115
    goto :goto_4

    :cond_6
    move v0, v1

    .line 116
    goto :goto_5
.end method

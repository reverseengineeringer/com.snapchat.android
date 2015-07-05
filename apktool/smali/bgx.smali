.class public Lbgx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected conversationsResponse:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversations_response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;"
        }
    .end annotation
.end field

.field protected conversationsResponseInfo:Lbho;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversations_response_info"
    .end annotation
.end field

.field protected discover:Lbhr;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discover"
    .end annotation
.end field

.field protected friendsResponse:Lbhx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends_response"
    .end annotation
.end field

.field protected identityCheckResponse:Lbki;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "identity_check_response"
    .end annotation
.end field

.field protected messagingGatewayInfo:Lbil;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messaging_gateway_info"
    .end annotation
.end field

.field protected serverInfo:Lbiw;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_info"
    .end annotation
.end field

.field protected storiesResponse:Lbjf;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories_response"
    .end annotation
.end field

.field protected updatesResponse:Lbjp;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates_response"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbiw;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbgx;->serverInfo:Lbiw;

    return-object v0
.end method

.method public final b()Lbil;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbgx;->messagingGatewayInfo:Lbil;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbgx;->messagingGatewayInfo:Lbil;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lbjp;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbgx;->updatesResponse:Lbjp;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lbgx;->updatesResponse:Lbjp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 239
    if-ne p1, p0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 242
    :cond_0
    instance-of v0, p1, Lbgx;

    if-nez v0, :cond_1

    .line 243
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_1
    check-cast p1, Lbgx;

    .line 246
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbgx;->serverInfo:Lbiw;

    iget-object v2, p1, Lbgx;->serverInfo:Lbiw;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->messagingGatewayInfo:Lbil;

    iget-object v2, p1, Lbgx;->messagingGatewayInfo:Lbil;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->updatesResponse:Lbjp;

    iget-object v2, p1, Lbgx;->updatesResponse:Lbjp;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->friendsResponse:Lbhx;

    iget-object v2, p1, Lbgx;->friendsResponse:Lbhx;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->storiesResponse:Lbjf;

    iget-object v2, p1, Lbgx;->storiesResponse:Lbjf;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->conversationsResponse:Ljava/util/List;

    iget-object v2, p1, Lbgx;->conversationsResponse:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->conversationsResponseInfo:Lbho;

    iget-object v2, p1, Lbgx;->conversationsResponseInfo:Lbho;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->discover:Lbhr;

    iget-object v2, p1, Lbgx;->discover:Lbhr;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->identityCheckResponse:Lbki;

    iget-object v2, p1, Lbgx;->identityCheckResponse:Lbki;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Lbhx;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbgx;->friendsResponse:Lbhx;

    return-object v0
.end method

.method public final g()Lbjf;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbgx;->storiesResponse:Lbjf;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lbgx;->conversationsResponse:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbgx;->serverInfo:Lbiw;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->messagingGatewayInfo:Lbil;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->updatesResponse:Lbjp;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->friendsResponse:Lbhx;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->storiesResponse:Lbjf;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->conversationsResponse:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->conversationsResponseInfo:Lbho;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->discover:Lbhr;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgx;->identityCheckResponse:Lbki;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lbho;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lbgx;->conversationsResponseInfo:Lbho;

    return-object v0
.end method

.method public final j()Lbhr;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lbgx;->discover:Lbhr;

    return-object v0
.end method

.method public final k()Lbki;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lbgx;->identityCheckResponse:Lbki;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lbjl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected gatewayAuthToken:Lbjy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_auth_token"
    .end annotation
.end field

.field protected gatewayServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_server"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbjy;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbjl;->gatewayAuthToken:Lbjy;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbjl;->gatewayServer:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbjl;->gatewayServer:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 76
    if-ne p1, p0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 79
    :cond_0
    instance-of v0, p1, Lbjl;

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lbjl;

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbjl;->gatewayAuthToken:Lbjy;

    iget-object v2, p1, Lbjl;->gatewayAuthToken:Lbjy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjl;->gatewayServer:Ljava/lang/String;

    iget-object v2, p1, Lbjl;->gatewayServer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbjl;->gatewayAuthToken:Lbjy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjl;->gatewayServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

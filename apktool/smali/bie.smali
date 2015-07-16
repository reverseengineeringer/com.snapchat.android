.class public final Lbie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbih;",
            ">;"
        }
    .end annotation
.end field

.field protected messagingAuth:Lbjy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messaging_auth"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lbie;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbih;",
            ">;)",
            "Lbie;"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lbie;->messages:Ljava/util/List;

    .line 52
    return-object p0
.end method

.method public final a()Lbjy;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbie;->messagingAuth:Lbjy;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbih;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lbie;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 78
    if-ne p1, p0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    instance-of v0, p1, Lbie;

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lbie;

    .line 85
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbie;->messagingAuth:Lbjy;

    iget-object v2, p1, Lbie;->messagingAuth:Lbjy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbie;->messages:Ljava/util/List;

    iget-object v2, p1, Lbie;->messages:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbie;->messagingAuth:Lbjy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbie;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

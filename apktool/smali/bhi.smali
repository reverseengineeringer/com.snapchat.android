.class public Lbhi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected conversationsChecksum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversations_checksum"
    .end annotation
.end field

.field protected friendsChecksum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends_checksum"
    .end annotation
.end field

.field protected storiesChecksum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories_checksum"
    .end annotation
.end field

.field protected updatesChecksum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates_checksum"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lbhi;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbhi;->storiesChecksum:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbhi;->storiesChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lbhi;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lbhi;->updatesChecksum:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbhi;->updatesChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lbhi;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbhi;->friendsChecksum:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbhi;->friendsChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lbhi;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lbhi;->conversationsChecksum:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbhi;->conversationsChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 119
    if-ne p1, p0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    instance-of v0, p1, Lbhi;

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    check-cast p1, Lbhi;

    .line 126
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhi;->storiesChecksum:Ljava/lang/String;

    iget-object v2, p1, Lbhi;->storiesChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->updatesChecksum:Ljava/lang/String;

    iget-object v2, p1, Lbhi;->updatesChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->friendsChecksum:Ljava/lang/String;

    iget-object v2, p1, Lbhi;->friendsChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->conversationsChecksum:Ljava/lang/String;

    iget-object v2, p1, Lbhi;->conversationsChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhi;->storiesChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->updatesChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->friendsChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhi;->conversationsChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

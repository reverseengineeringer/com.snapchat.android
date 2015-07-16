.class public Lblb;
.super Lbhy;
.source "SourceFile"


# instance fields
.field protected lastUpdated:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_updated"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lbhy;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lblb;->lastUpdated:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lblb;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lblb;->lastUpdated:Ljava/lang/Long;

    .line 38
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 66
    if-ne p1, p0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Lblb;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lblb;

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lblb;->lastUpdated:Ljava/lang/Long;

    iget-object v2, p1, Lblb;->lastUpdated:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lblb;->lastUpdated:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

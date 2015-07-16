.class public Lbij;
.super Lbji;
.source "SourceFile"


# instance fields
.field protected appVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_version"
    .end annotation
.end field

.field protected auth:Lbjy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth"
    .end annotation
.end field

.field protected platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field protected username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field protected version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbji;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbjy;)Lbij;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbij;->auth:Lbjy;

    .line 138
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbij;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbij;->username:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbij;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbij;->platform:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lbij;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbij;->version:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lbij;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lbij;->appVersion:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 167
    if-ne p1, p0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 170
    :cond_0
    instance-of v0, p1, Lbij;

    if-nez v0, :cond_1

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    check-cast p1, Lbij;

    .line 174
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbij;->username:Ljava/lang/String;

    iget-object v2, p1, Lbij;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->platform:Ljava/lang/String;

    iget-object v2, p1, Lbij;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->version:Ljava/lang/String;

    iget-object v2, p1, Lbij;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->appVersion:Ljava/lang/String;

    iget-object v2, p1, Lbij;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->auth:Lbjy;

    iget-object v2, p1, Lbij;->auth:Lbjy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbij;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbij;->auth:Lbjy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

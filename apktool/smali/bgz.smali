.class public final Lbgz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected orientation:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field protected position:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field protected text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbgz;->orientation:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Double;)Lbgz;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lbgz;->position:Ljava/lang/Double;

    .line 70
    return-object p0
.end method

.method public final a(Ljava/lang/Long;)Lbgz;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lbgz;->orientation:Ljava/lang/Long;

    .line 52
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbgz;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbgz;->text:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbgz;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbgz;->orientation:Ljava/lang/Long;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbgz;->orientation:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbgz;->position:Ljava/lang/Double;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbgz;->position:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 97
    if-ne p1, p0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 100
    :cond_0
    instance-of v0, p1, Lbgz;

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    check-cast p1, Lbgz;

    .line 104
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbgz;->text:Ljava/lang/String;

    iget-object v2, p1, Lbgz;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->orientation:Ljava/lang/Long;

    iget-object v2, p1, Lbgz;->orientation:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->position:Ljava/lang/Double;

    iget-object v2, p1, Lbgz;->position:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbgz;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->orientation:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->position:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

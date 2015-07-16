.class public final Lbjd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected lastReadTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_read_timestamp"
    .end annotation
.end field

.field protected lastReader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_reader"
    .end annotation
.end field

.field protected lastWriteTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_write_timestamp"
    .end annotation
.end field

.field protected lastWriteType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_write_type"
    .end annotation
.end field

.field protected lastWriter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_writer"
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
.method public final a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbjd;->lastReadTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbjd;->lastWriter:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lbjd;->lastWriteTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lbjd;->lastWriteType:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 141
    if-ne p1, p0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    .line 144
    :cond_0
    instance-of v0, p1, Lbjd;

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_1
    check-cast p1, Lbjd;

    .line 148
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbjd;->lastReader:Ljava/lang/String;

    iget-object v2, p1, Lbjd;->lastReader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastReadTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbjd;->lastReadTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriter:Ljava/lang/String;

    iget-object v2, p1, Lbjd;->lastWriter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriteTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbjd;->lastWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriteType:Ljava/lang/String;

    iget-object v2, p1, Lbjd;->lastWriteType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbjd;->lastReader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastReadTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjd;->lastWriteType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

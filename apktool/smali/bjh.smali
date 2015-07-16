.class public final Lbjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field protected iv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iv"
    .end annotation
.end field

.field protected key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field protected mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field protected mediaType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field protected width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
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
.method public final a(Ljava/lang/Integer;)Lbjh;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lbjh;->width:Ljava/lang/Integer;

    .line 127
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbjh;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbjh;->mediaId:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbjh;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Integer;)Lbjh;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lbjh;->height:Ljava/lang/Integer;

    .line 145
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbjh;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lbjh;->key:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbjh;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lbjh;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lbjh;->iv:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbjh;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbjh;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lbjh;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 175
    if-ne p1, p0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 178
    :cond_0
    instance-of v0, p1, Lbjh;

    if-nez v0, :cond_1

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    check-cast p1, Lbjh;

    .line 182
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbjh;->mediaId:Ljava/lang/String;

    iget-object v2, p1, Lbjh;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->mediaType:Ljava/lang/String;

    iget-object v2, p1, Lbjh;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->key:Ljava/lang/String;

    iget-object v2, p1, Lbjh;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->iv:Ljava/lang/String;

    iget-object v2, p1, Lbjh;->iv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->width:Ljava/lang/Integer;

    iget-object v2, p1, Lbjh;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->height:Ljava/lang/Integer;

    iget-object v2, p1, Lbjh;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lbjh;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbjh;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->iv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjh;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

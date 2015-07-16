.class public Lbhw;
.super Lbhy;
.source "SourceFile"


# instance fields
.field protected checksumsDict:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checksums_dict"
    .end annotation
.end field

.field protected featuresMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "features_map"
    .end annotation
.end field

.field protected height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field protected maxVideoHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_video_height"
    .end annotation
.end field

.field protected maxVideoWidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_video_width"
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
    .line 17
    invoke-direct {p0}, Lbhy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lbhw;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lbhw;->height:Ljava/lang/Integer;

    .line 62
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbhw;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lbhw;->checksumsDict:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final b(Ljava/lang/Integer;)Lbhw;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lbhw;->width:Ljava/lang/Integer;

    .line 80
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbhw;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lbhw;->featuresMap:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public final c(Ljava/lang/Integer;)Lbhw;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbhw;->maxVideoHeight:Ljava/lang/Integer;

    .line 98
    return-object p0
.end method

.method public final d(Ljava/lang/Integer;)Lbhw;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lbhw;->maxVideoWidth:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 164
    if-ne p1, p0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    instance-of v0, p1, Lbhw;

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_1
    check-cast p1, Lbhw;

    .line 171
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhw;->checksumsDict:Ljava/lang/String;

    iget-object v2, p1, Lbhw;->checksumsDict:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->height:Ljava/lang/Integer;

    iget-object v2, p1, Lbhw;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->width:Ljava/lang/Integer;

    iget-object v2, p1, Lbhw;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->maxVideoHeight:Ljava/lang/Integer;

    iget-object v2, p1, Lbhw;->maxVideoHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->maxVideoWidth:Ljava/lang/Integer;

    iget-object v2, p1, Lbhw;->maxVideoWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->featuresMap:Ljava/lang/String;

    iget-object v2, p1, Lbhw;->featuresMap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhw;->checksumsDict:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->maxVideoHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->maxVideoWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhw;->featuresMap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

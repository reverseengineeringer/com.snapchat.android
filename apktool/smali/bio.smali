.class public Lbio;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected story:Lbjg;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field

.field protected storyExtras:Lbjh;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_extras"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbjg;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbio;->story:Lbjg;

    return-object v0
.end method

.method public final b()Lbjh;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbio;->storyExtras:Lbjh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 77
    if-ne p1, p0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_0
    instance-of v0, p1, Lbio;

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    check-cast p1, Lbio;

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbio;->story:Lbjg;

    iget-object v2, p1, Lbio;->story:Lbjg;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbio;->storyExtras:Lbjh;

    iget-object v2, p1, Lbio;->storyExtras:Lbjh;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbio;->story:Lbjg;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbio;->storyExtras:Lbjh;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

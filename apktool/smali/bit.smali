.class public final Lbit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected frontFacingFlash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "front_facing_flash"
    .end annotation
.end field

.field protected replaySnaps:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replay_snaps"
    .end annotation
.end field

.field protected smartFilters:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smart_filters"
    .end annotation
.end field

.field protected visualFilters:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visual_filters"
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
.method public final a(Ljava/lang/Boolean;)Lbit;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbit;->smartFilters:Ljava/lang/Boolean;

    .line 37
    return-object p0
.end method

.method public final a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbit;->smartFilters:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b(Ljava/lang/Boolean;)Lbit;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbit;->frontFacingFlash:Ljava/lang/Boolean;

    .line 73
    return-object p0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbit;->frontFacingFlash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
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
    instance-of v0, p1, Lbit;

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    check-cast p1, Lbit;

    .line 126
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbit;->smartFilters:Ljava/lang/Boolean;

    iget-object v2, p1, Lbit;->smartFilters:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->visualFilters:Ljava/lang/Boolean;

    iget-object v2, p1, Lbit;->visualFilters:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->frontFacingFlash:Ljava/lang/Boolean;

    iget-object v2, p1, Lbit;->frontFacingFlash:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->replaySnaps:Ljava/lang/Boolean;

    iget-object v2, p1, Lbit;->replaySnaps:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbit;->smartFilters:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->visualFilters:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->frontFacingFlash:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbit;->replaySnaps:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

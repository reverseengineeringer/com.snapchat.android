.class public Lbia;
.super Lbil;
.source "SourceFile"


# instance fields
.field protected count:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field protected createdAt:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lbil;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbia;->createdAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbia;->createdAt:Ljava/lang/Long;

    .line 28
    return-void
.end method

.method public final b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbia;->count:Ljava/lang/Long;

    return-object v0
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbia;->count:Ljava/lang/Long;

    .line 46
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 76
    if-ne p1, p0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 79
    :cond_0
    instance-of v0, p1, Lbia;

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lbia;

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbia;->createdAt:Ljava/lang/Long;

    iget-object v2, p1, Lbia;->createdAt:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbia;->count:Ljava/lang/Long;

    iget-object v2, p1, Lbia;->count:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbia;->createdAt:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbia;->count:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

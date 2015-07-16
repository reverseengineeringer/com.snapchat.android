.class public final Lbkk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected screenshotted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshotted"
    .end annotation
.end field

.field protected storypointer:Lbkl;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storypointer"
    .end annotation
.end field

.field protected timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field protected viewer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewer"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbkl;)Lbkk;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lbkk;->storypointer:Lbkl;

    .line 92
    return-object p0
.end method

.method public final a(Ljava/lang/Boolean;)Lbkk;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lbkk;->screenshotted:Ljava/lang/Boolean;

    .line 56
    return-object p0
.end method

.method public final a(Ljava/lang/Long;)Lbkk;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lbkk;->timestamp:Ljava/lang/Long;

    .line 74
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbkk;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbkk;->viewer:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbkk;->viewer:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbkk;->screenshotted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbkk;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()Lbkl;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbkk;->storypointer:Lbkl;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 120
    if-ne p1, p0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 123
    :cond_0
    instance-of v0, p1, Lbkk;

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    check-cast p1, Lbkk;

    .line 127
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbkk;->viewer:Ljava/lang/String;

    iget-object v2, p1, Lbkk;->viewer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->screenshotted:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkk;->screenshotted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->timestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbkk;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->storypointer:Lbkl;

    iget-object v2, p1, Lbkk;->storypointer:Lbkl;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbkk;->viewer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->screenshotted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkk;->storypointer:Lbkl;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

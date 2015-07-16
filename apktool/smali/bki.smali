.class public final Lbki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected screenshotCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count"
    .end annotation
.end field

.field protected viewCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count"
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
.method public final a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbki;->viewCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lbki;->viewCount:Ljava/lang/Integer;

    .line 27
    return-void
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbki;->screenshotCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lbki;->screenshotCount:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 75
    if-ne p1, p0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 78
    :cond_0
    instance-of v0, p1, Lbki;

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Lbki;

    .line 82
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbki;->viewCount:Ljava/lang/Integer;

    iget-object v2, p1, Lbki;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->screenshotCount:Ljava/lang/Integer;

    iget-object v2, p1, Lbki;->screenshotCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbki;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->screenshotCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

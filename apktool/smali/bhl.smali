.class public Lbhl;
.super Lbii;
.source "SourceFile"


# instance fields
.field protected header:Lbib;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field protected retried:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retried"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lbii;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbib;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbhl;->header:Lbib;

    .line 29
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lbhl;->retried:Ljava/lang/Boolean;

    .line 47
    return-void
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
    instance-of v0, p1, Lbhl;

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    check-cast p1, Lbhl;

    .line 84
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhl;->header:Lbib;

    iget-object v2, p1, Lbhl;->header:Lbib;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhl;->retried:Ljava/lang/Boolean;

    iget-object v2, p1, Lbhl;->retried:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Lbib;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbhl;->header:Lbib;

    return-object v0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbhl;->retried:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhl;->header:Lbib;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhl;->retried:Ljava/lang/Boolean;

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

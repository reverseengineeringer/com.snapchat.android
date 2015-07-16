.class public final Lbjb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected auth:Lbjy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth"
    .end annotation
.end field

.field protected connSeqNum:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conn_seq_num"
    .end annotation
.end field

.field protected convId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conv_id"
    .end annotation
.end field

.field protected from:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field protected to:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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
.method public final a(Ljava/lang/String;)Lbjb;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbjb;->from:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lbjb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbjb;"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lbjb;->to:Ljava/util/List;

    .line 60
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbjb;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lbjy;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lbjb;->auth:Lbjy;

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lbjb;->connSeqNum:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public final b(Lbjy;)Lbjb;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lbjb;->auth:Lbjy;

    .line 96
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbjb;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lbjb;->convId:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lbjb;->to:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbjb;->convId:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lbjy;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbjb;->auth:Lbjy;

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbjb;->connSeqNum:Ljava/lang/Long;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 143
    if-ne p1, p0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    instance-of v0, p1, Lbjb;

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lbjb;

    .line 150
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbjb;->from:Ljava/lang/String;

    iget-object v2, p1, Lbjb;->from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->to:Ljava/util/List;

    iget-object v2, p1, Lbjb;->to:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->convId:Ljava/lang/String;

    iget-object v2, p1, Lbjb;->convId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->auth:Lbjy;

    iget-object v2, p1, Lbjb;->auth:Lbjy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->connSeqNum:Ljava/lang/Long;

    iget-object v2, p1, Lbjb;->connSeqNum:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lbjb;->connSeqNum:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbjb;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->to:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->convId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->auth:Lbjy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbjb;->connSeqNum:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

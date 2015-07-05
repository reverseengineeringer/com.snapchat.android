.class public Lbhf;
.super Lbhl;
.source "SourceFile"


# instance fields
.field protected body:Lbij;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field protected chatMessageId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message_id"
    .end annotation
.end field

.field protected savedState:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saved_state"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbiu;",
            ">;"
        }
    .end annotation
.end field

.field protected seqNum:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_num"
    .end annotation
.end field

.field protected timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 18
    invoke-direct {p0}, Lbhl;-><init>()V

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbhf;->seqNum:Ljava/lang/Long;

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbhf;->timestamp:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Lbij;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbhf;->body:Lbij;

    return-object v0
.end method

.method public final a(Lbij;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lbhf;->body:Lbij;

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lbhf;->seqNum:Ljava/lang/Long;

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lbhf;->chatMessageId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lbhf;->timestamp:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbhf;->body:Lbij;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbhf;->chatMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbiu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lbhf;->savedState:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbhf;->seqNum:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    instance-of v0, p1, Lbhf;

    if-nez v0, :cond_1

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lbhf;

    .line 150
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhf;->body:Lbij;

    iget-object v2, p1, Lbhf;->body:Lbij;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->chatMessageId:Ljava/lang/String;

    iget-object v2, p1, Lbhf;->chatMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->savedState:Ljava/util/Map;

    iget-object v2, p1, Lbhf;->savedState:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->seqNum:Ljava/lang/Long;

    iget-object v2, p1, Lbhf;->seqNum:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->timestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbhf;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbhf;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhf;->body:Lbij;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->chatMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->savedState:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->seqNum:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhf;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

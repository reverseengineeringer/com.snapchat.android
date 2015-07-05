.class public final Lbhh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cashTransaction:Lbhc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_transaction"
    .end annotation
.end field

.field protected chatMessage:Lbhf;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message"
    .end annotation
.end field

.field protected iterToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iter_token"
    .end annotation
.end field

.field protected snap:Lbhy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbhf;)Lbhh;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbhh;->chatMessage:Lbhf;

    .line 58
    return-object p0
.end method

.method public final a()Lbhy;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbhh;->snap:Lbhy;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbhh;->snap:Lbhy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lbhf;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbhh;->chatMessage:Lbhf;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbhh;->chatMessage:Lbhf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lbhc;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbhh;->cashTransaction:Lbhc;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 122
    if-ne p1, p0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 125
    :cond_0
    instance-of v0, p1, Lbhh;

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    check-cast p1, Lbhh;

    .line 129
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbhh;->snap:Lbhy;

    iget-object v2, p1, Lbhh;->snap:Lbhy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->chatMessage:Lbhf;

    iget-object v2, p1, Lbhh;->chatMessage:Lbhf;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->cashTransaction:Lbhc;

    iget-object v2, p1, Lbhh;->cashTransaction:Lbhc;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->iterToken:Ljava/lang/String;

    iget-object v2, p1, Lbhh;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbhh;->cashTransaction:Lbhc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lbhh;->iterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbhh;->iterToken:Ljava/lang/String;

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
    .line 112
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbhh;->snap:Lbhy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->chatMessage:Lbhf;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->cashTransaction:Lbhc;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbhh;->iterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

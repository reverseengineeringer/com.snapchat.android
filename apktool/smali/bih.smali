.class public final Lbih;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cashTransaction:Lbic;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_transaction"
    .end annotation
.end field

.field protected chatMessage:Lbif;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message"
    .end annotation
.end field

.field protected iterToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iter_token"
    .end annotation
.end field

.field protected snap:Lbiy;
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
.method public final a(Lbif;)Lbih;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbih;->chatMessage:Lbif;

    .line 58
    return-object p0
.end method

.method public final a()Lbiy;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbih;->snap:Lbiy;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbih;->snap:Lbiy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lbif;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbih;->chatMessage:Lbif;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbih;->chatMessage:Lbif;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lbic;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbih;->cashTransaction:Lbic;

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
    instance-of v0, p1, Lbih;

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    check-cast p1, Lbih;

    .line 129
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbih;->snap:Lbiy;

    iget-object v2, p1, Lbih;->snap:Lbiy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->chatMessage:Lbif;

    iget-object v2, p1, Lbih;->chatMessage:Lbif;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->cashTransaction:Lbic;

    iget-object v2, p1, Lbih;->cashTransaction:Lbic;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->iterToken:Ljava/lang/String;

    iget-object v2, p1, Lbih;->iterToken:Ljava/lang/String;

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
    iget-object v0, p0, Lbih;->cashTransaction:Lbic;

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
    iget-object v0, p0, Lbih;->iterToken:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbih;->iterToken:Ljava/lang/String;

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

    iget-object v1, p0, Lbih;->snap:Lbiy;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->chatMessage:Lbif;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->cashTransaction:Lbic;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbih;->iterToken:Ljava/lang/String;

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

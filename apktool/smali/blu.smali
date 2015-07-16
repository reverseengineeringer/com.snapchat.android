.class public Lblu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected allowedToUseCash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowed_to_use_cash"
    .end annotation
.end field

.field protected isTwoFaEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_two_fa_enabled"
    .end annotation
.end field

.field protected logged:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logged"
    .end annotation
.end field

.field protected message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field protected verificationNeeded:Lbls;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verification_needed"
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
.method public final a(Ljava/lang/Boolean;)Lblu;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lblu;->logged:Ljava/lang/Boolean;

    .line 41
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lblu;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lblu;->message:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public final a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lblu;->logged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lblu;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lblu;->isTwoFaEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lblu;->allowedToUseCash:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lbls;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lblu;->verificationNeeded:Lbls;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 142
    if-ne p1, p0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    instance-of v0, p1, Lblu;

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lblu;

    .line 149
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lblu;->logged:Ljava/lang/Boolean;

    iget-object v2, p1, Lblu;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->message:Ljava/lang/String;

    iget-object v2, p1, Lblu;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->isTwoFaEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lblu;->isTwoFaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->allowedToUseCash:Ljava/lang/String;

    iget-object v2, p1, Lblu;->allowedToUseCash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->verificationNeeded:Lbls;

    iget-object v2, p1, Lblu;->verificationNeeded:Lbls;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lblu;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->isTwoFaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->allowedToUseCash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lblu;->verificationNeeded:Lbls;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

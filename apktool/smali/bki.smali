.class public final Lbki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected emailPendingVerification:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_pending_verification"
    .end annotation
.end field

.field protected isAddNearbyEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_add_nearby_enabled"
    .end annotation
.end field

.field protected isEmailVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_email_verified"
    .end annotation
.end field

.field protected isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_high_accuracy_required_for_nearby"
    .end annotation
.end field

.field protected redGearDurationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "red_gear_duration_millis"
    .end annotation
.end field

.field protected requirePhonePasswordConfirmed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "require_phone_password_confirmed"
    .end annotation
.end field

.field protected suggestedFriendFetchThresholdHours:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggested_friend_fetch_threshold_hours"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbki;->isEmailVerified:Ljava/lang/Boolean;

    .line 33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbki;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbki;->redGearDurationMillis:Ljava/lang/Long;

    .line 45
    const/16 v0, 0xa8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbki;->suggestedFriendFetchThresholdHours:Ljava/lang/Integer;

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbki;->isAddNearbyEnabled:Ljava/lang/Boolean;

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbki;->isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbki;->isEmailVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbki;->emailPendingVerification:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbki;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lbki;->redGearDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lbki;->suggestedFriendFetchThresholdHours:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 269
    if-ne p1, p0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 272
    :cond_0
    instance-of v0, p1, Lbki;

    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :cond_1
    check-cast p1, Lbki;

    .line 276
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbki;->isEmailVerified:Ljava/lang/Boolean;

    iget-object v2, p1, Lbki;->isEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->emailPendingVerification:Ljava/lang/String;

    iget-object v2, p1, Lbki;->emailPendingVerification:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    iget-object v2, p1, Lbki;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->redGearDurationMillis:Ljava/lang/Long;

    iget-object v2, p1, Lbki;->redGearDurationMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->suggestedFriendFetchThresholdHours:Ljava/lang/Integer;

    iget-object v2, p1, Lbki;->suggestedFriendFetchThresholdHours:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->isAddNearbyEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lbki;->isAddNearbyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;

    iget-object v2, p1, Lbki;->isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lbki;->isAddNearbyEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lbki;->isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbki;->isEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->emailPendingVerification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->requirePhonePasswordConfirmed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->redGearDurationMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->suggestedFriendFetchThresholdHours:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->isAddNearbyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbki;->isHighAccuracyRequiredForNearby:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

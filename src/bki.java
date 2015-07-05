import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bki
{
  @SerializedName("email_pending_verification")
  protected String emailPendingVerification;
  @SerializedName("is_add_nearby_enabled")
  protected Boolean isAddNearbyEnabled = Boolean.valueOf(true);
  @SerializedName("is_email_verified")
  protected Boolean isEmailVerified = Boolean.valueOf(false);
  @SerializedName("is_high_accuracy_required_for_nearby")
  protected Boolean isHighAccuracyRequiredForNearby = Boolean.valueOf(false);
  @SerializedName("red_gear_duration_millis")
  protected Long redGearDurationMillis = Long.valueOf(0L);
  @SerializedName("require_phone_password_confirmed")
  protected Boolean requirePhonePasswordConfirmed = Boolean.valueOf(false);
  @SerializedName("suggested_friend_fetch_threshold_hours")
  protected Integer suggestedFriendFetchThresholdHours = Integer.valueOf(168);
  
  public final Boolean a()
  {
    return isEmailVerified;
  }
  
  public final String b()
  {
    return emailPendingVerification;
  }
  
  public final Boolean c()
  {
    return requirePhonePasswordConfirmed;
  }
  
  public final Long d()
  {
    return redGearDurationMillis;
  }
  
  public final Integer e()
  {
    return suggestedFriendFetchThresholdHours;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bki)) {
      return false;
    }
    paramObject = (bki)paramObject;
    return new EqualsBuilder().append(isEmailVerified, isEmailVerified).append(emailPendingVerification, emailPendingVerification).append(requirePhonePasswordConfirmed, requirePhonePasswordConfirmed).append(redGearDurationMillis, redGearDurationMillis).append(suggestedFriendFetchThresholdHours, suggestedFriendFetchThresholdHours).append(isAddNearbyEnabled, isAddNearbyEnabled).append(isHighAccuracyRequiredForNearby, isHighAccuracyRequiredForNearby).isEquals();
  }
  
  public final Boolean f()
  {
    return isAddNearbyEnabled;
  }
  
  public final Boolean g()
  {
    return isHighAccuracyRequiredForNearby;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(isEmailVerified).append(emailPendingVerification).append(requirePhonePasswordConfirmed).append(redGearDurationMillis).append(suggestedFriendFetchThresholdHours).append(isAddNearbyEnabled).append(isHighAccuracyRequiredForNearby).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
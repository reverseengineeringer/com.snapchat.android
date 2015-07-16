import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkq
  extends bix
{
  @SerializedName("added_friends_timestamp")
  protected Long addedFriendsTimestamp;
  @SerializedName("allowed_to_use_cash")
  protected String allowedToUseCash;
  @SerializedName("auth_token")
  protected String authToken;
  @SerializedName("birthday")
  protected String birthday;
  @SerializedName("cash_customer_id")
  protected String cashCustomerId;
  @SerializedName("cash_provider")
  protected String cashProvider;
  @SerializedName("client_properties")
  protected Map<String, String> clientProperties;
  @SerializedName("current_timestamp")
  protected Long currentTimestamp;
  @SerializedName("device_token")
  protected String deviceToken;
  @SerializedName("email")
  protected String email;
  @SerializedName("enable_save_story_to_gallery")
  protected Boolean enableSaveStoryToGallery;
  @SerializedName("enable_video_transcoding_android")
  protected Boolean enableVideoTranscodingAndroid;
  @SerializedName("feature_settings")
  protected bit featureSettings;
  @SerializedName("is_cash_active")
  protected Boolean isCashActive;
  @SerializedName("is_two_fa_enabled")
  protected Boolean isTwoFaEnabled;
  @SerializedName("last_address_book_updated_date")
  protected Long lastAddressBookUpdatedDate = Long.valueOf(0L);
  @SerializedName("last_replayed_snap_timestamp")
  protected Long lastReplayedSnapTimestamp;
  @SerializedName("last_updated")
  protected Long lastUpdated;
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("mobile")
  protected String mobile;
  @SerializedName("mobile_verification_key")
  protected String mobileVerificationKey;
  @SerializedName("number_of_best_friends")
  protected Integer numberOfBestFriends;
  @SerializedName("our_story_auths")
  protected List<bjn> ourStoryAuths;
  @SerializedName("qr_path")
  protected String qrPath;
  @SerializedName("raw_thumbnail_upload_enabled")
  protected Boolean rawThumbnailUploadEnabled;
  @SerializedName("received")
  protected Integer received;
  @SerializedName("recents")
  protected List<String> recents;
  @SerializedName("require_refreshing_profile_media")
  protected Boolean requireRefreshingProfileMedia = Boolean.valueOf(false);
  @SerializedName("score")
  protected Integer score;
  @SerializedName("searchable_by_phone_number")
  protected Boolean searchableByPhoneNumber;
  @SerializedName("seen_tooltips")
  protected List<String> seenTooltips;
  @SerializedName("sent")
  protected Integer sent;
  @SerializedName("should_call_to_verify_number")
  protected Boolean shouldCallToVerifyNumber;
  @SerializedName("should_show_suggestion_prompt")
  protected Boolean shouldShowSuggestionPrompt;
  @SerializedName("should_text_to_verify_number")
  protected Boolean shouldTextToVerifyNumber;
  @SerializedName("snap_p")
  protected Integer snapP;
  @SerializedName("snapchat_phone_number")
  protected String snapchatPhoneNumber;
  @SerializedName("snaps")
  protected List<biy> snaps;
  @SerializedName("story_privacy")
  protected String storyPrivacy;
  @SerializedName("study_settings")
  protected Map<String, String> studySettings;
  @SerializedName("suggestion_prompt_button_text")
  protected String suggestionPromptButtonText;
  @SerializedName("suggestion_prompt_duration_in_millis")
  protected Long suggestionPromptDurationInMillis;
  @SerializedName("suggestion_prompt_link")
  protected String suggestionPromptLink;
  @SerializedName("suggestion_prompt_text")
  protected String suggestionPromptText;
  @SerializedName("targeting")
  protected Map<String, String> targeting;
  @SerializedName("third_party_tracking_app_id")
  protected String thirdPartyTrackingAppId;
  @SerializedName("third_party_tracking_base_url")
  protected String thirdPartyTrackingBaseUrl;
  @SerializedName("two_fa_verified_device_num")
  protected Integer twoFaVerifiedDeviceNum;
  @SerializedName("two_fa_verified_devices")
  protected List<blr> twoFaVerifiedDevices;
  @SerializedName("username")
  protected String username;
  @SerializedName("video_filters_enabled")
  protected Boolean videoFiltersEnabled;
  
  public final Integer A()
  {
    return score;
  }
  
  public final List<String> B()
  {
    return recents;
  }
  
  public final Long C()
  {
    return addedFriendsTimestamp;
  }
  
  public final Long D()
  {
    return currentTimestamp;
  }
  
  public final Long E()
  {
    return lastReplayedSnapTimestamp;
  }
  
  public final String F()
  {
    return snapchatPhoneNumber;
  }
  
  public final Boolean G()
  {
    return searchableByPhoneNumber;
  }
  
  public final List<String> H()
  {
    return seenTooltips;
  }
  
  public final Map<String, String> I()
  {
    return clientProperties;
  }
  
  public final bit J()
  {
    return featureSettings;
  }
  
  public final Map<String, String> K()
  {
    return studySettings;
  }
  
  public final Boolean L()
  {
    return isCashActive;
  }
  
  public final String M()
  {
    return cashProvider;
  }
  
  public final String N()
  {
    return cashCustomerId;
  }
  
  public final String O()
  {
    return allowedToUseCash;
  }
  
  public final String P()
  {
    return thirdPartyTrackingBaseUrl;
  }
  
  public final String Q()
  {
    return thirdPartyTrackingAppId;
  }
  
  public final Long R()
  {
    return lastAddressBookUpdatedDate;
  }
  
  public final String S()
  {
    return qrPath;
  }
  
  public final Boolean T()
  {
    return requireRefreshingProfileMedia;
  }
  
  public final Boolean U()
  {
    return shouldShowSuggestionPrompt;
  }
  
  public final String V()
  {
    return suggestionPromptLink;
  }
  
  public final String W()
  {
    return suggestionPromptText;
  }
  
  public final String X()
  {
    return suggestionPromptButtonText;
  }
  
  public final Long Y()
  {
    return suggestionPromptDurationInMillis;
  }
  
  public final Boolean Z()
  {
    return videoFiltersEnabled;
  }
  
  public final List<bjn> aa()
  {
    return ourStoryAuths;
  }
  
  public final Map<String, String> ab()
  {
    return targeting;
  }
  
  public final Boolean ac()
  {
    return rawThumbnailUploadEnabled;
  }
  
  public final Boolean ad()
  {
    return isTwoFaEnabled;
  }
  
  public final List<blr> ae()
  {
    return twoFaVerifiedDevices;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkq)) {
      return false;
    }
    paramObject = (bkq)paramObject;
    return new EqualsBuilder().append(logged, logged).append(username, username).append(authToken, authToken).append(deviceToken, deviceToken).append(email, email).append(mobile, mobile).append(mobileVerificationKey, mobileVerificationKey).append(enableVideoTranscodingAndroid, enableVideoTranscodingAndroid).append(enableSaveStoryToGallery, enableSaveStoryToGallery).append(birthday, birthday).append(snapP, snapP).append(storyPrivacy, storyPrivacy).append(sent, sent).append(received, received).append(score, score).append(snaps, snaps).append(recents, recents).append(lastUpdated, lastUpdated).append(addedFriendsTimestamp, addedFriendsTimestamp).append(currentTimestamp, currentTimestamp).append(lastReplayedSnapTimestamp, lastReplayedSnapTimestamp).append(snapchatPhoneNumber, snapchatPhoneNumber).append(searchableByPhoneNumber, searchableByPhoneNumber).append(shouldCallToVerifyNumber, shouldCallToVerifyNumber).append(shouldTextToVerifyNumber, shouldTextToVerifyNumber).append(seenTooltips, seenTooltips).append(clientProperties, clientProperties).append(featureSettings, featureSettings).append(numberOfBestFriends, numberOfBestFriends).append(studySettings, studySettings).append(isCashActive, isCashActive).append(cashProvider, cashProvider).append(cashCustomerId, cashCustomerId).append(allowedToUseCash, allowedToUseCash).append(thirdPartyTrackingBaseUrl, thirdPartyTrackingBaseUrl).append(thirdPartyTrackingAppId, thirdPartyTrackingAppId).append(lastAddressBookUpdatedDate, lastAddressBookUpdatedDate).append(qrPath, qrPath).append(requireRefreshingProfileMedia, requireRefreshingProfileMedia).append(shouldShowSuggestionPrompt, shouldShowSuggestionPrompt).append(suggestionPromptLink, suggestionPromptLink).append(suggestionPromptText, suggestionPromptText).append(suggestionPromptButtonText, suggestionPromptButtonText).append(suggestionPromptDurationInMillis, suggestionPromptDurationInMillis).append(videoFiltersEnabled, videoFiltersEnabled).append(ourStoryAuths, ourStoryAuths).append(targeting, targeting).append(rawThumbnailUploadEnabled, rawThumbnailUploadEnabled).append(isTwoFaEnabled, isTwoFaEnabled).append(twoFaVerifiedDeviceNum, twoFaVerifiedDeviceNum).append(twoFaVerifiedDevices, twoFaVerifiedDevices).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(logged).append(username).append(authToken).append(deviceToken).append(email).append(mobile).append(mobileVerificationKey).append(enableVideoTranscodingAndroid).append(enableSaveStoryToGallery).append(birthday).append(snapP).append(storyPrivacy).append(sent).append(received).append(score).append(snaps).append(recents).append(lastUpdated).append(addedFriendsTimestamp).append(currentTimestamp).append(lastReplayedSnapTimestamp).append(snapchatPhoneNumber).append(searchableByPhoneNumber).append(shouldCallToVerifyNumber).append(shouldTextToVerifyNumber).append(seenTooltips).append(clientProperties).append(featureSettings).append(numberOfBestFriends).append(studySettings).append(isCashActive).append(cashProvider).append(cashCustomerId).append(allowedToUseCash).append(thirdPartyTrackingBaseUrl).append(thirdPartyTrackingAppId).append(lastAddressBookUpdatedDate).append(qrPath).append(requireRefreshingProfileMedia).append(shouldShowSuggestionPrompt).append(suggestionPromptLink).append(suggestionPromptText).append(suggestionPromptButtonText).append(suggestionPromptDurationInMillis).append(videoFiltersEnabled).append(ourStoryAuths).append(targeting).append(rawThumbnailUploadEnabled).append(isTwoFaEnabled).append(twoFaVerifiedDeviceNum).append(twoFaVerifiedDevices).toHashCode();
  }
  
  public final Boolean m()
  {
    return logged;
  }
  
  public final String n()
  {
    return username;
  }
  
  public final String o()
  {
    return authToken;
  }
  
  public final String p()
  {
    return deviceToken;
  }
  
  public final String q()
  {
    return email;
  }
  
  public final String r()
  {
    return mobile;
  }
  
  public final String s()
  {
    return mobileVerificationKey;
  }
  
  public final Boolean t()
  {
    return enableVideoTranscodingAndroid;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public final Boolean u()
  {
    return enableSaveStoryToGallery;
  }
  
  public final String v()
  {
    return birthday;
  }
  
  public final Integer w()
  {
    return snapP;
  }
  
  public final String x()
  {
    return storyPrivacy;
  }
  
  public final Integer y()
  {
    return sent;
  }
  
  public final Integer z()
  {
    return received;
  }
}

/* Location:
 * Qualified Name:     bkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
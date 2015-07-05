import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyType;

public final class ayj
{
  public static final ayh CHAT_MEDIA_KEYS_AND_IVS;
  public static final ayh CREDIT_CARD_TOKEN;
  public static final ayh DEVICE_TOKEN_1_KEY_AND_IV = new ayh("deviceToken1KeyAndIv", SlightlySecurePreferencesKeyType.SHOULD_ALWAYS_PERSIST);
  public static final ayh FRIEND_STORY_KEYS_AND_IVS;
  public static final ayh MESSAGING_GATEWAY_INFO = new ayh("messagingGatewayInfo", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  public static final ayh MY_STORY_KEYS_AND_IVS;
  public static final ayh PER_CONVERSATION_AUTH = new ayh("perConversationAuth/", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  public static final ayh SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS;
  public static final ayh SQ_AUTH_TOKEN;
  
  static
  {
    MY_STORY_KEYS_AND_IVS = new ayh("myStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS = new ayh("snapsOnExternalStorageKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN);
    FRIEND_STORY_KEYS_AND_IVS = new ayh("friendStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    CHAT_MEDIA_KEYS_AND_IVS = new ayh("chatMediaKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    CREDIT_CARD_TOKEN = new ayh("creditCardToken", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN);
    SQ_AUTH_TOKEN = new ayh("sqAuthToken", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  }
}

/* Location:
 * Qualified Name:     ayj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
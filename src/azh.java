import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyType;

public final class azh
{
  public static final azf CHAT_MEDIA_KEYS_AND_IVS;
  public static final azf CREDIT_CARD_TOKEN;
  public static final azf DEVICE_TOKEN_1_KEY_AND_IV = new azf("deviceToken1KeyAndIv", SlightlySecurePreferencesKeyType.SHOULD_ALWAYS_PERSIST);
  public static final azf FRIEND_STORY_KEYS_AND_IVS;
  public static final azf MESSAGING_GATEWAY_INFO = new azf("messagingGatewayInfo", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  public static final azf MY_STORY_KEYS_AND_IVS;
  public static final azf PER_CONVERSATION_AUTH = new azf("perConversationAuth/", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  public static final azf SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS;
  public static final azf SQ_AUTH_TOKEN;
  
  static
  {
    MY_STORY_KEYS_AND_IVS = new azf("myStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS = new azf("snapsOnExternalStorageKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN);
    FRIEND_STORY_KEYS_AND_IVS = new azf("friendStorySnapKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    CHAT_MEDIA_KEYS_AND_IVS = new azf("chatMediaKeysAndIvs", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
    CREDIT_CARD_TOKEN = new azf("creditCardToken", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN);
    SQ_AUTH_TOKEN = new azf("sqAuthToken", SlightlySecurePreferencesKeyType.SHOULD_PURGE_ON_LOGOUT);
  }
}

/* Location:
 * Qualified Name:     azh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.os.Bundle;
import com.google.gson.Gson;
import com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

public final class pr
  extends pk
{
  public static final String SET_BIRTHDAY_ACTION_PARAM = "updateBirthday";
  public static final String SET_EMAIL_ACTION_PARAM = "updateEmail";
  public static final String SET_PRIVACY_ACTION_PARAM = "updatePrivacy";
  public static final String SET_SEARCHABLE_BY_PHONE_NUMBER = "updateSearchableByPhoneNumber";
  public static final String SET_STORY_PRIVACY_ACTION_PARAM = "updateStoryPrivacy";
  private static final String TASK_NAME = "SettingsTask";
  private String mAction;
  private String[] mData;
  
  public pr(String paramString, String... paramVarArgs)
  {
    mAction = paramString;
    mData = paramVarArgs;
  }
  
  protected final String a()
  {
    return "/ph/settings";
  }
  
  protected final void a(String paramString, int paramInt)
  {
    bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, paramString));
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("action", mAction);
    localBundle.putString("username", akr.l());
    if (mAction.equals("updateBirthday")) {
      localBundle.putString("birthday", mData[0]);
    }
    if (mAction.equals("updateEmail")) {
      localBundle.putString("email", mData[0]);
    }
    if (mAction.equals("updatePrivacy")) {
      localBundle.putString("privacySetting", mData[0]);
    }
    if (mAction.equals("updateStoryPrivacy"))
    {
      String str = mData[0];
      localBundle.putString("privacySetting", str);
      if (str.equals("CUSTOM")) {
        localBundle.putString("storyFriendsToBlock", aul.a().toJson(gmFriendsBlockedFromSeeingMyStory));
      }
    }
    if (mAction.equals("updateSearchableByPhoneNumber")) {
      localBundle.putString("searchable", mData[0]);
    }
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    if (mAction.equals("updateBirthday")) {
      akr.e("0000-" + mData[0]);
    }
    if (mAction.equals("updateEmail")) {
      akr.i(mData[0]);
    }
    if (mAction.equals("updatePrivacy")) {
      akr.c(Integer.parseInt(mData[0]));
    }
    if (mAction.equals("updateStoryPrivacy")) {
      akr.d(SettingsFragment.PrivacyOptions.valueOf(mData[0]).ordinal());
    }
    if (mAction.equals("updateSearchableByPhoneNumber")) {
      akr.l(mData[0].equals("1"));
    }
    if (paramalp != null) {
      bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, message));
    }
  }
  
  protected final String c()
  {
    return "SettingsTask";
  }
}

/* Location:
 * Qualified Name:     pr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
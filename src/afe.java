import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Editable.Factory;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;

public class afe
{
  private final boolean a = aui.c(((TelephonyManager)SnapchatApplication.b().getSystemService("phone")).getNetworkCountryIso(), "US");
  
  public String a(@cgb Friend paramFriend)
  {
    return paramFriend.k();
  }
  
  public String a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    if (paramFriend.j()) {
      return paramFriend.h();
    }
    return "";
  }
  
  protected final String b(@cgb Friend paramFriend)
  {
    String str = mPhoneNumber;
    paramFriend = str;
    if (a)
    {
      paramFriend = Editable.Factory.getInstance().newEditable(str);
      PhoneNumberUtils.formatNanpNumber(paramFriend);
      paramFriend = paramFriend.toString();
    }
    return atx.a(null, 2131493072, new Object[] { paramFriend });
  }
}

/* Location:
 * Qualified Name:     afe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
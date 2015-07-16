import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Editable.Factory;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;

public class age
{
  private final boolean a = avg.c(((TelephonyManager)SnapchatApplication.b().getSystemService("phone")).getNetworkCountryIso(), "US");
  
  public String a(@chc Friend paramFriend)
  {
    return paramFriend.e();
  }
  
  public String a(@chc Friend paramFriend, boolean paramBoolean)
  {
    if (paramFriend.n()) {
      return paramFriend.l();
    }
    return "";
  }
  
  protected final String b(@chc Friend paramFriend)
  {
    String str = mPhoneNumber;
    paramFriend = str;
    if (a)
    {
      paramFriend = Editable.Factory.getInstance().newEditable(str);
      PhoneNumberUtils.formatNanpNumber(paramFriend);
      paramFriend = paramFriend.toString();
    }
    return auv.a(null, 2131493072, new Object[] { paramFriend });
  }
}

/* Location:
 * Qualified Name:     age
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
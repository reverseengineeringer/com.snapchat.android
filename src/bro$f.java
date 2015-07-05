import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;

public final class bro$f
  implements brn
{
  public String a = null;
  
  public bro$f()
  {
    try
    {
      String str1 = ((TelephonyManager)bro.b().getSystemService("phone")).getNetworkOperatorName();
      a = str1;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str2 = Build.BRAND;
      }
    }
  }
  
  public final String a()
  {
    return "carrier";
  }
}

/* Location:
 * Qualified Name:     bro.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
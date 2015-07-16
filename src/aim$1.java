import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.snapchat.android.database.SharedPreferenceKey;

final class aim$1
  implements DialogInterface.OnClickListener
{
  aim$1(aim paramaim, SharedPreferences paramSharedPreferences, akr paramakr, Context paramContext, aim.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.edit();
    paramDialogInterface.putBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), true);
    paramDialogInterface.apply();
    aim.a(true);
    akr.i(false);
    if (!akr.bp())
    {
      paramDialogInterface = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
      paramDialogInterface.addFlags(268435456);
      c.startActivity(paramDialogInterface);
    }
    if (d != null) {
      d.a(true);
    }
  }
}

/* Location:
 * Qualified Name:     aim.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
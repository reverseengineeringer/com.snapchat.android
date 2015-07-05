import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.snapchat.android.database.SharedPreferenceKey;

final class ahq$1
  implements DialogInterface.OnClickListener
{
  ahq$1(ahq paramahq, SharedPreferences paramSharedPreferences, ajx paramajx, Context paramContext, ahq.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.edit();
    paramDialogInterface.putBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), true);
    paramDialogInterface.apply();
    ahq.a(true);
    ajx.i(false);
    if (!ajx.bs())
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
 * Qualified Name:     ahq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
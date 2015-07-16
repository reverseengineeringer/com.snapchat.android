import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import java.lang.ref.WeakReference;

final class bwb$2
  implements DialogInterface.OnClickListener
{
  bwb$2(WeakReference paramWeakReference, bwc parambwc, boolean paramBoolean) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = null;
    if (a != null) {
      paramDialogInterface = (Context)a.get();
    }
    if (paramDialogInterface == null) {
      return;
    }
    PreferenceManager.getDefaultSharedPreferences(paramDialogInterface).edit().putBoolean("always_send_crash_reports", true).commit();
    bwb.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     bwb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import java.lang.ref.WeakReference;

final class bva$2
  implements DialogInterface.OnClickListener
{
  bva$2(WeakReference paramWeakReference, bvb parambvb, boolean paramBoolean) {}
  
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
    bva.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     bva.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
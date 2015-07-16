import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.LocationManager;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

public final class aim
{
  private final Context a;
  private final LocationManager b;
  
  public aim()
  {
    this(SnapchatApplication.b());
  }
  
  private aim(Context paramContext)
  {
    this(paramContext, (LocationManager)paramContext.getSystemService("location"));
  }
  
  private aim(Context paramContext, LocationManager paramLocationManager)
  {
    a = paramContext;
    b = paramLocationManager;
  }
  
  public static void a(boolean paramBoolean)
  {
    akr.j(paramBoolean);
    bbo.a().a(new bci());
  }
  
  public final AlertDialog a(@chc final Context paramContext, final aim.a parama)
  {
    final SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    final akr localakr = new akr();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(2131493217);
    if (akr.bo()) {
      localBuilder.setMessage(2131493540);
    }
    for (;;)
    {
      localBuilder.setCancelable(false);
      localBuilder.setPositiveButton(2131493269, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = localSharedPreferences.edit();
          paramAnonymousDialogInterface.putBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), true);
          paramAnonymousDialogInterface.apply();
          aim.a(true);
          akr.i(false);
          if (!akr.bp())
          {
            paramAnonymousDialogInterface = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
            paramAnonymousDialogInterface.addFlags(268435456);
            paramContext.startActivity(paramAnonymousDialogInterface);
          }
          if (parama != null) {
            parama.a(true);
          }
        }
      });
      localBuilder.setNegativeButton(2131493144, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (parama != null) {
            parama.a(false);
          }
        }
      });
      return localBuilder.create();
      localBuilder.setMessage(2131493215);
    }
  }
  
  public final boolean a()
  {
    return b.isProviderEnabled("gps");
  }
  
  public final boolean b()
  {
    return b.isProviderEnabled("network");
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     aim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
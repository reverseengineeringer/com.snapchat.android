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

public final class ahq
{
  private final Context a;
  private final LocationManager b;
  
  public ahq()
  {
    this(SnapchatApplication.b());
  }
  
  private ahq(Context paramContext)
  {
    this(paramContext, (LocationManager)paramContext.getSystemService("location"));
  }
  
  private ahq(Context paramContext, LocationManager paramLocationManager)
  {
    a = paramContext;
    b = paramLocationManager;
  }
  
  public static void a(boolean paramBoolean)
  {
    ajx.k(paramBoolean);
    ban.a().a(new bbi());
  }
  
  public final AlertDialog a(@cgb final Context paramContext, final ahq.a parama)
  {
    final SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    final ajx localajx = new ajx();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(2131493217);
    if (ajx.br()) {
      localBuilder.setMessage(2131493542);
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
          ahq.a(true);
          ajx.i(false);
          if (!ajx.bs())
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
      localBuilder.setNegativeButton(2131493145, new DialogInterface.OnClickListener()
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
 * Qualified Name:     ahq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
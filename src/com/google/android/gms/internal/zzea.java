package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.R.string;
import java.util.Map;

@zzgi
public class zzea
  extends zzeg
{
  private final Context mContext;
  private final Map<String, String> zzsZ;
  private String zzta;
  private long zztb;
  private long zztc;
  private String zztd;
  private String zzte;
  
  public zzea(zzic paramzzic, Map<String, String> paramMap)
  {
    super(paramzzic, "createCalendarEvent");
    zzsZ = paramMap;
    mContext = paramzzic.zzeD();
    zzcM();
  }
  
  private String zzE(String paramString)
  {
    if (TextUtils.isEmpty((CharSequence)zzsZ.get(paramString))) {
      return "";
    }
    return (String)zzsZ.get(paramString);
  }
  
  private long zzF(String paramString)
  {
    paramString = (String)zzsZ.get(paramString);
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  private void zzcM()
  {
    zzta = zzE("description");
    zztd = zzE("summary");
    zztb = zzF("start_ticks");
    zztc = zzF("end_ticks");
    zzte = zzE("location");
  }
  
  Intent createIntent()
  {
    Intent localIntent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
    localIntent.putExtra("title", zzta);
    localIntent.putExtra("eventLocation", zzte);
    localIntent.putExtra("description", zztd);
    if (zztb > -1L) {
      localIntent.putExtra("beginTime", zztb);
    }
    if (zztc > -1L) {
      localIntent.putExtra("endTime", zztc);
    }
    localIntent.setFlags(268435456);
    return localIntent;
  }
  
  public void execute()
  {
    if (mContext == null)
    {
      zzH("Activity context is not available.");
      return;
    }
    if (!zzab.zzaM().zzx(mContext).zzbU())
    {
      zzH("This feature is not available on the device.");
      return;
    }
    AlertDialog.Builder localBuilder = zzab.zzaM().zzw(mContext);
    localBuilder.setTitle(zzab.zzaP().zzc(R.string.create_calendar_title, "Create calendar event"));
    localBuilder.setMessage(zzab.zzaP().zzc(R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
    localBuilder.setPositiveButton(zzab.zzaP().zzc(R.string.accept, "Accept"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = createIntent();
        zzea.zza(zzea.this).startActivity(paramAnonymousDialogInterface);
      }
    });
    localBuilder.setNegativeButton(zzab.zzaP().zzc(R.string.decline, "Decline"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzH("Operation denied by user.");
      }
    });
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
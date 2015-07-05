package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@zzgi
public class zzif$zza
  extends MutableContextWrapper
{
  private Activity zzAj;
  private Context zzAk;
  private Context zznk;
  
  public zzif$zza(Context paramContext)
  {
    super(paramContext);
    setBaseContext(paramContext);
  }
  
  public Object getSystemService(String paramString)
  {
    return zzAk.getSystemService(paramString);
  }
  
  public void setBaseContext(Context paramContext)
  {
    zznk = paramContext.getApplicationContext();
    if ((paramContext instanceof Activity)) {}
    for (Activity localActivity = (Activity)paramContext;; localActivity = null)
    {
      zzAj = localActivity;
      zzAk = paramContext;
      super.setBaseContext(zznk);
      return;
    }
  }
  
  public void startActivity(Intent paramIntent)
  {
    if ((zzAj != null) && (!zzme.zzkk()))
    {
      zzAj.startActivity(paramIntent);
      return;
    }
    paramIntent.setFlags(268435456);
    zznk.startActivity(paramIntent);
  }
  
  public Activity zzeD()
  {
    return zzAj;
  }
  
  public Context zzeE()
  {
    return zzAk;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzif.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
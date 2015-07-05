package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

@zzgi
public class zzei
{
  public boolean zza(Context paramContext, zzek paramzzek, zzes paramzzes)
  {
    if (paramzzek == null)
    {
      zzhx.zzac("No intent data for launcher overlay.");
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(zztR))
    {
      zzhx.zzac("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(mimeType)) {
      localIntent.setDataAndType(Uri.parse(zztR), mimeType);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(packageName)) {
        localIntent.setPackage(packageName);
      }
      if (TextUtils.isEmpty(zztS)) {
        break label175;
      }
      arrayOfString = zztS.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      zzhx.zzac("Could not parse component name from open GMSG: " + zztS);
      return false;
      localIntent.setData(Uri.parse(zztR));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    label175:
    paramzzek = zztT;
    if (!TextUtils.isEmpty(paramzzek)) {}
    try
    {
      i = Integer.parseInt(paramzzek);
      localIntent.addFlags(i);
    }
    catch (NumberFormatException paramzzek)
    {
      for (;;)
      {
        try
        {
          zzhx.zzab("Launching an intent: " + localIntent.toURI());
          paramContext.startActivity(localIntent);
          if (paramzzes != null) {
            paramzzes.zzae();
          }
          return true;
        }
        catch (ActivityNotFoundException paramContext)
        {
          int i;
          zzhx.zzac(paramContext.getMessage());
        }
        paramzzek = paramzzek;
        zzhx.zzac("Could not parse intent flags.");
        i = 0;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
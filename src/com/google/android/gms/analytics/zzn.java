package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class zzn<T extends zzm>
{
  Context mContext;
  zza<T> zzBI;
  
  public zzn(Context paramContext, zza<T> paramzza)
  {
    mContext = paramContext;
    zzBI = paramzza;
  }
  
  private T zza(XmlResourceParser paramXmlResourceParser)
  {
    for (;;)
    {
      try
      {
        paramXmlResourceParser.next();
        i = paramXmlResourceParser.getEventType();
        if (i == 1) {
          continue;
        }
        if (paramXmlResourceParser.getEventType() == 2)
        {
          str1 = paramXmlResourceParser.getName().toLowerCase();
          if (!str1.equals("screenname")) {
            continue;
          }
          str1 = paramXmlResourceParser.getAttributeValue(null, "name");
          str2 = paramXmlResourceParser.nextText().trim();
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            zzBI.zzi(str1, str2);
          }
        }
      }
      catch (XmlPullParserException paramXmlResourceParser)
      {
        zzae.zzZ("Error parsing tracker configuration file: " + paramXmlResourceParser);
        return zzBI.zzfB();
        if (!str1.equals("bool")) {
          continue;
        }
        String str2 = paramXmlResourceParser.getAttributeValue(null, "name");
        str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          bool = Boolean.parseBoolean(str1);
          zzBI.zzd(str2, bool);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          zzae.zzZ("Error parsing bool configuration value: " + str1);
        }
        continue;
      }
      catch (IOException paramXmlResourceParser)
      {
        int i;
        zzae.zzZ("Error parsing tracker configuration file: " + paramXmlResourceParser);
        continue;
        if (!str1.equals("integer")) {
          continue;
        }
        String str3 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str3)) {
          continue;
        }
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          i = Integer.parseInt(str1);
          zzBI.zzc(str3, i);
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          zzae.zzZ("Error parsing int configuration value: " + str1);
        }
        continue;
      }
      i = paramXmlResourceParser.next();
      continue;
      if (!str1.equals("string")) {
        continue;
      }
      str1 = paramXmlResourceParser.getAttributeValue(null, "name");
      str2 = paramXmlResourceParser.nextText().trim();
      if ((!TextUtils.isEmpty(str1)) && (str2 != null)) {
        zzBI.zzj(str1, str2);
      }
    }
  }
  
  public T zzD(int paramInt)
  {
    try
    {
      zzm localzzm = zza(mContext.getResources().getXml(paramInt));
      return localzzm;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      zzae.zzac("inflate() called with unknown resourceId: " + localNotFoundException);
    }
    return null;
  }
  
  public static abstract interface zza<U extends zzm>
  {
    public abstract void zzc(String paramString, int paramInt);
    
    public abstract void zzd(String paramString, boolean paramBoolean);
    
    public abstract U zzfB();
    
    public abstract void zzi(String paramString1, String paramString2);
    
    public abstract void zzj(String paramString1, String paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
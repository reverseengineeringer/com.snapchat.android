package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;

public class zzag
{
  public static String zza(String paramString1, String paramString2, Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2, String paramString3)
  {
    if (paramAttributeSet == null) {
      paramString1 = null;
    }
    for (;;)
    {
      paramAttributeSet = paramString1;
      String str;
      if (paramString1 != null)
      {
        paramAttributeSet = paramString1;
        if (paramString1.startsWith("@string/"))
        {
          paramAttributeSet = paramString1;
          if (paramBoolean1)
          {
            paramString3 = paramString1.substring(8);
            str = paramContext.getPackageName();
            paramAttributeSet = new TypedValue();
          }
        }
      }
      try
      {
        paramContext.getResources().getValue(str + ":string/" + paramString3, paramAttributeSet, true);
        if (string != null)
        {
          paramAttributeSet = string.toString();
          if ((paramBoolean2) && (paramAttributeSet == null)) {
            new StringBuilder("Required XML attribute \"").append(paramString2).append("\" missing");
          }
          return paramAttributeSet;
          paramString1 = paramAttributeSet.getAttributeValue(paramString1, paramString2);
        }
      }
      catch (Resources.NotFoundException paramContext)
      {
        for (;;)
        {
          new StringBuilder("Could not find resource for ").append(paramString2).append(": ").append(paramString1);
          continue;
          new StringBuilder("Resource ").append(paramString2).append(" was not a string: ").append(paramAttributeSet);
          paramAttributeSet = paramString1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
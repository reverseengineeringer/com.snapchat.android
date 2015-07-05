package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

class zzgt$2
  implements zzht.zza<Drawable>
{
  zzgt$2(zzgt paramzzgt, boolean paramBoolean) {}
  
  public Drawable zza(InputStream paramInputStream)
  {
    try
    {
      paramInputStream = zzlz.zzd(paramInputStream);
      if (paramInputStream == null)
      {
        zzxc.zza(2, zzxd);
        return null;
      }
    }
    catch (IOException paramInputStream)
    {
      for (;;)
      {
        paramInputStream = null;
      }
      paramInputStream = BitmapFactory.decodeByteArray(paramInputStream, 0, paramInputStream.length);
      if (paramInputStream == null)
      {
        zzxc.zza(2, zzxd);
        return null;
      }
    }
    return new BitmapDrawable(Resources.getSystem(), paramInputStream);
  }
  
  public Drawable zzdP()
  {
    zzxc.zza(2, zzxd);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
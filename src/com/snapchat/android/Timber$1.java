package com.snapchat.android;

import android.util.Log;
import azk;

final class Timber$1
  implements Runnable
{
  Timber$1(String paramString1, Object[] paramArrayOfObject, Timber.LogType paramLogType, boolean paramBoolean1, String paramString2, boolean paramBoolean2, Throwable paramThrowable) {}
  
  public final void run()
  {
    String str = a;
    if (b.length > 0) {
      str = String.format(a, b);
    }
    switch (Timber.3.a[c.ordinal()])
    {
    default: 
      if (f) {
        azk.a(c.name(), e, str);
      }
      break;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return;
                  } while (!f);
                  azk.a(c.name(), e, str);
                  return;
                } while (!f);
                azk.a(c.name(), e, str);
                return;
              } while (!f);
              azk.a(c.name(), e, str);
              return;
            } while (!f);
            azk.a(c.name(), e, str);
            return;
          } while (!f);
          azk.a(c.name(), e, str);
          return;
          str = Log.getStackTraceString(g);
        } while (!f);
        azk.a(c.name(), e, str);
        return;
      } while (!f);
      azk.a(c.name(), e, str);
      return;
    } while (!f);
    azk.a(c.name(), e, str);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.Timber.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
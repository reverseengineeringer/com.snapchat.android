package com.snapchat.android.database.table;

import android.content.Context;

final class NotificationTable$1
  implements Runnable
{
  NotificationTable$1(String paramString1, Context paramContext, String paramString2) {}
  
  public final void run()
  {
    if (a == null)
    {
      NotificationTable.a(b, c);
      return;
    }
    NotificationTable.b(b, c, a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.NotificationTable.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
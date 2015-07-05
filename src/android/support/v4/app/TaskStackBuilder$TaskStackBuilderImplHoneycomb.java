package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

final class TaskStackBuilder$TaskStackBuilderImplHoneycomb
  implements TaskStackBuilder.TaskStackBuilderImpl
{
  public final PendingIntent getPendingIntent$3140f641(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2)
  {
    paramArrayOfIntent[0] = new Intent(paramArrayOfIntent[0]).addFlags(268484608);
    return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.TaskStackBuilder.TaskStackBuilderImplHoneycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
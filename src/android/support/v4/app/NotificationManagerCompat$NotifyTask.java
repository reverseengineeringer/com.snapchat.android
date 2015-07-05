package android.support.v4.app;

import android.app.Notification;

public final class NotificationManagerCompat$NotifyTask
  implements NotificationManagerCompat.Task
{
  final int id;
  final Notification notif;
  final String packageName;
  final String tag;
  
  public NotificationManagerCompat$NotifyTask(String paramString, int paramInt, Notification paramNotification)
  {
    packageName = paramString;
    id = paramInt;
    tag = null;
    notif = paramNotification;
  }
  
  public final void send(INotificationSideChannel paramINotificationSideChannel)
  {
    paramINotificationSideChannel.notify(packageName, id, tag, notif);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("NotifyTask[");
    localStringBuilder.append("packageName:").append(packageName);
    localStringBuilder.append(", id:").append(id);
    localStringBuilder.append(", tag:").append(tag);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationManagerCompat.NotifyTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
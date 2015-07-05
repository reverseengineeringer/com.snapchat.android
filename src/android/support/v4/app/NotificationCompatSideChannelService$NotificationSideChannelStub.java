package android.support.v4.app;

import android.app.Notification;

final class NotificationCompatSideChannelService$NotificationSideChannelStub
  extends INotificationSideChannel.Stub
{
  private NotificationCompatSideChannelService$NotificationSideChannelStub(NotificationCompatSideChannelService paramNotificationCompatSideChannelService) {}
  
  public final void cancel(String paramString1, int paramInt, String paramString2)
  {
    NotificationCompatSideChannelService.access$100(this$0, getCallingUid(), paramString1);
    restoreCallingIdentity(clearCallingIdentity());
  }
  
  public final void cancelAll(String paramString)
  {
    NotificationCompatSideChannelService.access$100(this$0, getCallingUid(), paramString);
    restoreCallingIdentity(clearCallingIdentity());
  }
  
  public final void notify(String paramString1, int paramInt, String paramString2, Notification paramNotification)
  {
    NotificationCompatSideChannelService.access$100(this$0, getCallingUid(), paramString1);
    restoreCallingIdentity(clearCallingIdentity());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatSideChannelService.NotificationSideChannelStub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
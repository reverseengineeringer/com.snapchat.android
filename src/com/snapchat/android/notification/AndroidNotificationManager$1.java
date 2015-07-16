package com.snapchat.android.notification;

import akp;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.database.table.ConversationTable;
import com.snapchat.android.model.chat.ChatConversation;
import zi;

public final class AndroidNotificationManager$1
  implements LoadConversationPageTask.a
{
  public AndroidNotificationManager$1(AndroidNotificationManager paramAndroidNotificationManager, String paramString, akp paramakp) {}
  
  public final void a(boolean paramBoolean)
  {
    Object localObject = a;
    if (paramBoolean)
    {
      localObject = zi.a(a);
      if (localObject != null)
      {
        if (mIsStub) {
          mIsStub = false;
        }
        ConversationTable.a().c(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.notification.AndroidNotificationManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
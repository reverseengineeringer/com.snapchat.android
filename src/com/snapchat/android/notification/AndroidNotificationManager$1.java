package com.snapchat.android.notification;

import ajv;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTask.a;
import com.snapchat.android.database.table.ConversationTable;
import com.snapchat.android.model.chat.ChatConversation;
import ym;

public final class AndroidNotificationManager$1
  implements LoadConversationPageTask.a
{
  public AndroidNotificationManager$1(AndroidNotificationManager paramAndroidNotificationManager, String paramString, ajv paramajv) {}
  
  public final void a(boolean paramBoolean)
  {
    Timber.g("AndroidNotificationManager", "CHAT-LOG: AndroidNotificationManager LoadConversationPageTask completed for %s with success: %s", new Object[] { a, Boolean.valueOf(paramBoolean) });
    if (paramBoolean)
    {
      ChatConversation localChatConversation = ym.a(a);
      if (localChatConversation != null)
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
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.chat.ChatConversation;

public final class anb
  implements anh
{
  private final Intent a;
  
  public anb(Intent paramIntent)
  {
    a = paramIntent;
  }
  
  public final Intent a()
  {
    return a;
  }
  
  public final void a(Context paramContext)
  {
    if (a == null) {
      return;
    }
    Object localObject = a.getStringExtra("conversationId");
    akp localakp = akp.a(paramContext);
    localObject = zi.a((String)localObject);
    if (localObject != null)
    {
      AnalyticsEvents.a(((KeyguardManager)paramContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode(), akr.l(), ((ChatConversation)localObject).q());
      mIsUserInConversation = false;
      ((ChatConversation)localObject).s();
    }
    localakp.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION });
    ChatFragment.o();
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     anb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
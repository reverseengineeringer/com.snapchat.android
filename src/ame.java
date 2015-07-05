import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.chat.ChatConversation;

public final class ame
  implements amk
{
  private final Intent a;
  
  public ame(Intent paramIntent)
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
    ajv localajv = ajv.a(paramContext);
    localObject = ym.a((String)localObject);
    if (localObject != null)
    {
      AnalyticsEvents.a(((KeyguardManager)paramContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode(), ajx.l(), ((ChatConversation)localObject).q());
      mIsUserInConversation = false;
      ((ChatConversation)localObject).r();
    }
    localajv.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION });
    ChatFragment.o();
  }
  
  public final void f() {}
}

/* Location:
 * Qualified Name:     ame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
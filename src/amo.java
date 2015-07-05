import android.content.Context;
import android.content.Intent;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;

public final class amo
  extends amd
  implements ts.b<bkp>
{
  @cgc
  public SuggestedFriendAction a;
  public String b;
  public boolean c;
  protected ajv d;
  protected final Bus e;
  protected final ajx f;
  protected final avc g;
  private int k;
  private ProfileEventAnalytics l;
  
  public amo(Intent paramIntent)
  {
    this(paramIntent, ajx.a(), ban.a(), avc.a(), ProfileEventAnalytics.a());
  }
  
  private amo(Intent paramIntent, ajx paramajx, Bus paramBus, avc paramavc, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    super(paramIntent);
    e = paramBus;
    a = SuggestedFriendAction.valueOf(paramIntent.getStringExtra("action"));
    b = paramIntent.getStringExtra("friend_name");
    k = paramIntent.getIntExtra("friend_index", -1);
    f = paramajx;
    g = paramavc;
    c = false;
    l = paramProfileEventAnalytics;
    a(bkp.class, this);
  }
  
  public final void a(Context paramContext)
  {
    d = ajv.a(paramContext);
    if ((a == SuggestedFriendAction.LIST) && (!avc.a(d, ajx.a()))) {
      return;
    }
    super.a(paramContext);
  }
  
  public final Object b()
  {
    amo.a locala = new amo.a();
    locala.a(a.getServerActionName());
    switch (amo.1.a[a.ordinal()])
    {
    default: 
      Timber.c("SuggestedFriendActionOperation", "Unexpected action : " + a, new Object[0]);
    }
    for (;;)
    {
      Timber.c("SuggestedFriendActionOperation", "Send out the request for suggested friend with action : " + a, new Object[0]);
      return a(locala);
      locala.a(a.getServerActionName());
      continue;
      locala.a(SuggestedFriendAction.UPDATE.getServerActionName());
      locala.a(Boolean.valueOf(true));
      Object localObject = avc.a(d, FriendSectionizer.FriendSection.SUGGESTED_FRIEND);
      ArrayList localArrayList = new ArrayList();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject).next();
        if ((localFriend != null) && (localFriend.g())) {
          localArrayList.add(localFriend.h());
        }
      }
      locala.a(localArrayList);
      continue;
      locala.a(SuggestedFriendAction.UPDATE.getServerActionName());
      locala.b(Boolean.valueOf(true));
      locala.b(b);
      locala.a(Integer.valueOf(k));
    }
  }
  
  protected final String e()
  {
    return "/bq/suggest_friend";
  }
  
  @tn
  public final class a
    extends bko
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     amo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
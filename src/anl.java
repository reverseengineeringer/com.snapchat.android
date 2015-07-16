import android.content.Context;
import android.content.Intent;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;

public final class anl
  extends ana
  implements ui.b<blq>
{
  @chd
  public SuggestedFriendAction a;
  public String b;
  public boolean c;
  protected akp d;
  protected final Bus e;
  protected final akr f;
  protected final awa g;
  private int k;
  private ProfileEventAnalytics l;
  
  public anl(Intent paramIntent)
  {
    this(paramIntent, akr.a(), bbo.a(), awa.a(), ProfileEventAnalytics.a());
  }
  
  private anl(Intent paramIntent, akr paramakr, Bus paramBus, awa paramawa, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    super(paramIntent);
    e = paramBus;
    a = SuggestedFriendAction.valueOf(paramIntent.getStringExtra("action"));
    b = paramIntent.getStringExtra("friend_name");
    k = paramIntent.getIntExtra("friend_index", -1);
    f = paramakr;
    g = paramawa;
    c = false;
    l = paramProfileEventAnalytics;
    registerCallback(blq.class, this);
  }
  
  public final void a(Context paramContext)
  {
    d = akp.a(paramContext);
    if ((a == SuggestedFriendAction.LIST) && (!awa.a(d, akr.a()))) {
      return;
    }
    super.a(paramContext);
  }
  
  public final Object getRequestPayload()
  {
    anl.a locala = new anl.a();
    locala.a(a.getServerActionName());
    switch (anl.1.a[a.ordinal()])
    {
    default: 
      new StringBuilder("Unexpected action : ").append(a);
    }
    for (;;)
    {
      new StringBuilder("Send out the request for suggested friend with action : ").append(a);
      return buildAuthPayload(locala);
      locala.a(a.getServerActionName());
      continue;
      locala.a(SuggestedFriendAction.UPDATE.getServerActionName());
      locala.a(Boolean.valueOf(true));
      Object localObject = awa.a(d, FriendSectionizer.FriendSection.SUGGESTED_FRIEND);
      ArrayList localArrayList = new ArrayList();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Friend localFriend = (Friend)((Iterator)localObject).next();
        if ((localFriend != null) && (localFriend.h())) {
          localArrayList.add(localFriend.l());
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
  
  protected final String l_()
  {
    return "/bq/suggest_friend";
  }
  
  @ud
  public final class a
    extends blp
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     anl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
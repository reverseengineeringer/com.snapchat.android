import android.content.Context;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.Filter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.a;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public final class ahd
  extends RecyclerView.a<ato>
  implements bge.a<ahh>, bqr<atn>, bqt.a
{
  public final apb c;
  final aqj d;
  public List<ahh> e;
  public List<ahh> f;
  @Inject
  protected ban g;
  private final Context h;
  private final LayoutInflater i;
  private final Friend.a j;
  private final ars k;
  private final ahd.a l;
  private Filter m;
  
  public ahd(Context paramContext, apb paramapb, Friend.a parama, ahd.a parama1, ars paramars, aqj paramaqj)
  {
    SnapchatApplication.b().c().a(this);
    h = paramContext;
    c = paramapb;
    e = paramapb.a();
    f = new ArrayList(e);
    i = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    j = parama;
    l = parama1;
    k = paramars;
    d = paramaqj;
  }
  
  public final int a()
  {
    return f.size();
  }
  
  public final void a(long paramLong)
  {
    int i1 = 0;
    if (paramLong == Friend.a.a(FriendSectionizer.FriendSection.NEEDS_LOVE, h))
    {
      int n = 0;
      Object localObject;
      if (n < e.size())
      {
        localObject = (ahh)e.get(n);
        if ((!(localObject instanceof Friend)) || (!mStubFriend) || (!mSelectedForNeedsLove)) {}
      }
      for (;;)
      {
        label78:
        if (n >= 0)
        {
          localObject = c.d();
          for (;;)
          {
            if (i1 < ((List)localObject).size())
            {
              int i2 = n + i1;
              if ((i2 >= 0) && (i2 < e.size()))
              {
                ahh localahh = (ahh)e.remove(i2);
                e.add(i2, ((List)localObject).get(i1));
                if ((localahh instanceof Friend))
                {
                  Friend localFriend = (Friend)localahh;
                  if ((!mStubFriend) || (!mSelectedForNeedsLove)) {
                    e.add(i2 + 1, localahh);
                  }
                }
                i1 += 1;
                continue;
                n += 1;
                break;
                n = -1;
                break label78;
              }
            }
          }
          f = e;
          i1 = ((List)localObject).size();
          a.a(n, i1 + n);
        }
      }
    }
  }
  
  public final void a(@chd List<ahh> paramList)
  {
    if (paramList == null) {}
    for (f = e;; f = paramList)
    {
      a.b();
      return;
    }
  }
  
  public final Filter b()
  {
    if (m == null)
    {
      List localList = akp.a(h).o();
      m = new ahf(e, localList, g, this);
    }
    return m;
  }
  
  public final long e(int paramInt)
  {
    Object localObject = (ahh)f.get(paramInt);
    if ((localObject instanceof Friend))
    {
      localObject = (Friend)localObject;
      FriendSectionizer.FriendSection localFriendSection = Friend.a.a((Friend)localObject);
      if (localFriendSection == FriendSectionizer.FriendSection.ALPHABETICAL) {
        return Math.abs(FriendSectionizer.b((Friend)localObject).hashCode());
      }
      return Friend.a.a(localFriendSection, h);
    }
    if ((localObject instanceof aoy)) {
      return Friend.a.a(FriendSectionizer.FriendSection.RECENT, h);
    }
    return Math.abs(h.getString(2131493509).hashCode());
  }
  
  public static abstract interface a
  {
    public abstract void a(ahh paramahh, boolean paramBoolean);
    
    public abstract boolean a(ahh paramahh);
  }
}

/* Location:
 * Qualified Name:     ahd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.Filter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.fragments.addfriends.FriendListProperty;
import com.snapchat.android.fragments.addfriends.FriendListProperty.Style;
import com.snapchat.android.fragments.addfriends.FriendListProperty.TouchMode;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import com.snapchat.android.ui.FriendTextsView;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;

public final class aga
  extends aqb<Friend>
  implements bge.a<Friend>, StickyListHeadersAdapter
{
  private final aga.c A = new aga.c();
  private final Set<Friend> B = new HashSet();
  private final Set<Friend> C = new HashSet();
  private final FriendListProperty D;
  private final Map<FriendAction, Integer> E = f();
  private final Map<FriendAction, Integer> F = f();
  private SimpleArrayMap<FriendSectionizer.FriendSection, Integer> G;
  protected List<Friend> a;
  public FriendSectionizer<Friend> b;
  public Friend c = null;
  public Friend d = null;
  public HashSet<String> e = new HashSet();
  public age f;
  public boolean g;
  public boolean h;
  public boolean i;
  public boolean j;
  public boolean k = false;
  int l = 0;
  int m = 0;
  @Inject
  protected ban n;
  private final Handler o;
  private final int p;
  private final Context q;
  private List<Friend> r;
  private final LayoutInflater s;
  private final aga.a t;
  private agc u;
  private final Resources v;
  private final int w;
  private final int x;
  private final Provider<akp> y;
  private final bgy z;
  
  private aga(Context paramContext, List<Friend> paramList, FriendSectionizer<Friend> paramFriendSectionizer, aga.a parama, age paramage, Resources paramResources, int paramInt1, int paramInt2, Provider<akp> paramProvider, FriendListProperty paramFriendListProperty, bgy parambgy)
  {
    super(paramContext, 2130968579, paramList);
    SnapchatApplication.b().c().a(this);
    q = paramContext;
    r = paramList;
    a = paramList;
    s = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    b = paramFriendSectionizer;
    t = parama;
    p = b.getBackgroundResId();
    v = paramResources;
    w = paramInt1;
    x = paramInt2;
    o = new Handler()
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        FriendAction localFriendAction;
        if ((obj instanceof FriendAction)) {
          localFriendAction = (FriendAction)obj;
        }
        switch (aga.3.a[localFriendAction.ordinal()])
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        notifyDataSetChanged();
      }
    };
    f = paramage;
    y = paramProvider;
    D = paramFriendListProperty;
    z = parambgy;
  }
  
  public aga(Context paramContext, List<Friend> paramList, FriendSectionizer<Friend> paramFriendSectionizer, aga.a parama, age paramage, Provider<akp> paramProvider, FriendListProperty paramFriendListProperty, bgy parambgy)
  {
    this(paramContext, paramList, paramFriendSectionizer, parama, paramage, paramContext.getResources(), paramContext.getResources().getColor(2131230764), paramContext.getResources().getColor(2131230765), paramProvider, paramFriendListProperty, parambgy);
  }
  
  private String a(Friend paramFriend, int paramInt)
  {
    FriendSectionizer.FriendSection localFriendSection = b.a(paramFriend, paramInt);
    mFriendSection = localFriendSection;
    return FriendSectionizer.a(localFriendSection, paramFriend, q);
  }
  
  private static Map<FriendAction, Integer> f()
  {
    EnumMap localEnumMap = new EnumMap(FriendAction.class);
    localEnumMap.put(FriendAction.ADD, Integer.valueOf(0));
    localEnumMap.put(FriendAction.DELETE, Integer.valueOf(0));
    localEnumMap.put(FriendAction.BLOCK, Integer.valueOf(0));
    localEnumMap.put(FriendAction.IGNORE, Integer.valueOf(0));
    localEnumMap.put(FriendAction.SET_DISPLAY_NAME, Integer.valueOf(0));
    localEnumMap.put(FriendAction.INVITE, Integer.valueOf(0));
    return localEnumMap;
  }
  
  public final int a(FriendAction paramFriendAction, boolean paramBoolean)
  {
    int i2 = 0;
    int i1 = i2;
    if (F != null)
    {
      if ((!paramBoolean) || (F.get(paramFriendAction) == null)) {
        break label49;
      }
      i1 = ((Integer)F.get(paramFriendAction)).intValue();
    }
    label49:
    do
    {
      do
      {
        return i1;
        i1 = i2;
      } while (paramBoolean);
      i1 = i2;
    } while (E.get(paramFriendAction) == null);
    return ((Integer)E.get(paramFriendAction)).intValue();
  }
  
  public final int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return m;
    }
    return l;
  }
  
  public final SimpleArrayMap<FriendSectionizer.FriendSection, Integer> a()
  {
    if (G == null)
    {
      G = new SimpleArrayMap();
      if (a != null)
      {
        Iterator localIterator = a.iterator();
        if (localIterator.hasNext())
        {
          FriendSectionizer.FriendSection localFriendSection = nextmFriendSection;
          if (!G.containsKey(localFriendSection)) {}
          for (int i1 = 0;; i1 = ((Integer)G.get(localFriendSection)).intValue())
          {
            G.put(localFriendSection, Integer.valueOf(i1 + 1));
            break;
          }
        }
      }
    }
    return G;
  }
  
  public final void a(int paramInt)
  {
    if ((paramInt < getCount()) && (paramInt >= 0))
    {
      Friend localFriend = (Friend)getItem(paramInt);
      if (localFriend != null)
      {
        A.b(localFriend);
        notifyDataSetChanged();
      }
    }
  }
  
  public final void a(final agf paramagf, final Friend paramFriend, final FriendAction paramFriendAction, FriendAction.BlockReason paramBlockReason, qg.a parama, il paramil)
  {
    paramagf = new qg(paramFriendAction, paramFriend, paramFriend.l(), mUserId, paramFriend.a(), mJustAdded, paramBlockReason, paramFriendAction)
    {
      @cdn
      protected final void a(bli paramAnonymousbli, @chd akp paramAnonymousakp)
      {
        super.a(paramAnonymousbli, paramAnonymousakp);
        b(paramFriendAction, e());
        paramagf.a(new Runnable()
        {
          public final void run()
          {
            switch (aga.3.a[a.ordinal()])
            {
            }
            for (;;)
            {
              notifyDataSetChanged();
              return;
              a.remove(b);
            }
          }
        });
      }
      
      @cdn
      public final void a(@chd bli paramAnonymousbli, @chc us paramAnonymousus)
      {
        super.a(paramAnonymousbli, paramAnonymousus);
        switch (aga.3.a[paramFriendAction.ordinal()])
        {
        default: 
          return;
        case 4: 
          aga.a(aga.this).remove(paramFriend);
          paramagf.a(paramFriend);
          return;
        }
        aga.b(aga.this).remove(paramFriend);
        paramagf.c(paramFriend);
      }
      
      public final void execute()
      {
        switch (aga.3.a[paramFriendAction.ordinal()])
        {
        }
        for (;;)
        {
          super.execute();
          return;
          aga.a(aga.this).add(paramFriend);
          paramagf.a(paramFriend);
          continue;
          aga.b(aga.this).add(paramFriend);
          paramagf.c(paramFriend);
        }
      }
    };
    mAnalyticsContext = b();
    mAddSourceType = AnalyticsEvents.AddFriendSourceType.USERNAME;
    mFriendActionCompleteCallback = parama;
    paramagf = paramagf.a();
    mActionMethod = paramil;
    paramagf.execute();
  }
  
  public final void a(@chc Friend paramFriend)
  {
    if (A.a(paramFriend)) {
      A.b(paramFriend);
    }
    notifyDataSetChanged();
  }
  
  public final void a(@chd List<Friend> paramList)
  {
    if (paramList == null) {}
    for (a = r;; a = paramList)
    {
      notifyDataSetChanged();
      return;
    }
  }
  
  public final AnalyticsEvents.AnalyticsContext b()
  {
    return t.a();
  }
  
  public final void b(FriendAction paramFriendAction, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Map localMap = F; !localMap.containsKey(paramFriendAction); localMap = E)
    {
      localMap.put(paramFriendAction, Integer.valueOf(1));
      return;
    }
    localMap.put(paramFriendAction, Integer.valueOf(((Integer)localMap.get(paramFriendAction)).intValue() + 1));
  }
  
  public final int c()
  {
    return t.d();
  }
  
  public final String d()
  {
    if (u == null) {
      return null;
    }
    return u.a;
  }
  
  public final boolean e()
  {
    return t.q_();
  }
  
  public final int getCount()
  {
    if (a == null) {
      return 0;
    }
    return a.size();
  }
  
  public final Filter getFilter()
  {
    if (u == null) {
      u = new agc(r, n, this);
    }
    u.b = g;
    u.c = h;
    u.e = i;
    u.d = j;
    return u;
  }
  
  public final long getHeaderId(int paramInt)
  {
    Friend localFriend = (Friend)a.get(paramInt);
    if ((localFriend instanceof agl)) {
      return "shared story".hashCode();
    }
    return a(localFriend, paramInt).hashCode();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = new aga.b();
      paramView = s.inflate(2130968717, paramViewGroup, false);
      a = ((TextView)paramView.findViewById(2131361919));
      paramView.setTag(localObject);
    }
    String str;
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (aga.b)paramView.getTag())
    {
      localObject = (Friend)a.get(paramInt);
      str = a((Friend)localObject, paramInt);
      if ((!(localObject instanceof agl)) && (!TextUtils.isEmpty(str))) {
        break;
      }
      a.setVisibility(8);
      return paramView;
    }
    a.setVisibility(0);
    a.setText(str);
    return paramView;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Friend localFriend = (Friend)a.get(paramInt);
    Object localObject1;
    if (localFriend == null)
    {
      localObject1 = paramView;
      return (View)localObject1;
    }
    label96:
    Object localObject2;
    if (paramView == null)
    {
      paramView = s.inflate(2130968579, paramViewGroup, false);
      if (paramView == null) {
        throw new RuntimeException("Failed to inflate add_friends_item");
      }
      paramViewGroup = new agf(this, paramView, B, C, D, f, A, y);
      paramView.setTag(paramViewGroup);
      G = paramInt;
      if (!(localFriend instanceof agl)) {
        break label518;
      }
      localObject1 = (agl)localFriend;
      localObject2 = t;
      paramInt = p;
      paramViewGroup.a(((agl)localObject1).a());
      z.setVisibility(8);
      paramView.setBackgroundDrawable(null);
      n.setOnClickListener(new agf.13(paramViewGroup, (agl)localObject1));
      n.setVisibility(0);
      l.setVisibility(8);
      paramViewGroup.a(paramInt, ((aga.a)localObject2).a(), paramViewGroup.e((Friend)localObject1), ((aga.a)localObject2).r_(), (Friend)localObject1);
      label211:
      localObject2 = o.obtainMessage();
      if (!localFriend.m()) {
        break label560;
      }
      paramViewGroup.a(2130837614, H.b(), AnalyticsEvents.AddFriendSourceType.USERNAME, null, localFriend);
      label248:
      if (K.b == FriendListProperty.Style.WHITE_TEXT) {
        m.setTextColor(-1);
      }
      localObject1 = w;
      if (!K.d) {
        break label686;
      }
      paramInt = 0;
      label287:
      ((View)localObject1).setVisibility(paramInt);
      localObject1 = y;
      if (!K.e) {
        break label692;
      }
      paramInt = 0;
      label311:
      ((View)localObject1).setVisibility(paramInt);
      localObject1 = x;
      if (!K.f) {
        break label698;
      }
      paramInt = 0;
      label335:
      ((View)localObject1).setVisibility(paramInt);
      if ((K.a == FriendListProperty.TouchMode.TAPPABLE_FRIENDS) || (K.a == FriendListProperty.TouchMode.ALWAYS_TAPPABLE))
      {
        if ((localFriend.m()) || ((!agf.b(localFriend)) && (K.a != FriendListProperty.TouchMode.ALWAYS_TAPPABLE))) {
          break label704;
        }
        k.setOnClickListener(new agf.9(paramViewGroup, localFriend));
      }
    }
    for (;;)
    {
      if ((K.a != FriendListProperty.TouchMode.TAPPABLE_FRIENDS) && (K.a != FriendListProperty.TouchMode.ALWAYS_TAPPABLE))
      {
        localObject1 = paramView;
        if (!K.a()) {
          break;
        }
      }
      w.setOnClickListener(new agf.10(paramViewGroup, localFriend, (Message)localObject2));
      x.setOnClickListener(new agf.11(paramViewGroup, localFriend));
      y.setOnClickListener(new agf.12(paramViewGroup, localFriend));
      return paramView;
      paramViewGroup = (agf)paramView.getTag();
      break label96;
      label518:
      paramViewGroup.a(paramInt, localFriend, d, c, x, w, p, t, e, z);
      break label211;
      label560:
      if ((L.a(localFriend)) && (localFriend.h()))
      {
        ajp.a(localFriend, new agf.8(paramViewGroup, localFriend));
        if (!mIsSharedStory) {
          paramViewGroup.a(localFriend, true);
        }
      }
      for (;;)
      {
        if (!mIsSharedStory) {
          break label666;
        }
        n.setBackgroundResource(2130838100);
        n.setVisibility(0);
        paramViewGroup.b(J.getResources().getColor(2131230785));
        break;
        paramViewGroup.a(localFriend, false);
      }
      label666:
      paramViewGroup.b(J.getResources().getColor(2131230721));
      break label248;
      label686:
      paramInt = 8;
      break label287;
      label692:
      paramInt = 8;
      break label311;
      label698:
      paramInt = 8;
      break label335;
      label704:
      k.setOnClickListener(null);
    }
  }
  
  public static abstract interface a
  {
    public abstract AnalyticsEvents.AnalyticsContext a();
    
    public abstract boolean a(Friend paramFriend);
    
    public abstract int d();
    
    public abstract boolean q_();
    
    public abstract String r_();
  }
  
  final class b
  {
    TextView a;
    
    b() {}
  }
  
  public static final class c
  {
    Friend a;
    Friend b;
    boolean c;
    boolean d;
    
    public final boolean a(@chc Friend paramFriend)
    {
      return paramFriend.equals(a);
    }
    
    public final void b(Friend paramFriend)
    {
      new StringBuilder("select ").append(paramFriend.l());
      b = a;
      if (a(paramFriend)) {}
      for (a = null;; a = paramFriend)
      {
        c = true;
        d = true;
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     aga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
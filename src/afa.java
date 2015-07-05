import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
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
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.fragments.addfriends.FriendListProperty;
import com.snapchat.android.fragments.addfriends.FriendListProperty.Style;
import com.snapchat.android.fragments.addfriends.FriendListProperty.TouchMode;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import com.snapchat.android.ui.FriendTextsView;
import com.snapchat.android.util.FriendSectionizer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;

public final class afa
  extends apf<Friend>
  implements bfe.a<Friend>, StickyListHeadersAdapter
{
  private final Set<Friend> A = new HashSet();
  private final Set<Friend> B = new HashSet();
  private final FriendListProperty C;
  public FriendSectionizer<Friend> a;
  public Friend b = null;
  public Friend c = null;
  public HashSet<String> d = new HashSet();
  public afe e;
  public boolean f;
  public boolean g;
  public boolean h;
  public boolean i;
  public boolean j = false;
  @Inject
  protected azo k;
  private final Handler l;
  private final int m;
  private final Context n;
  private List<Friend> o;
  private List<Friend> p;
  private final LayoutInflater q;
  private final afa.a r;
  private afc s;
  private final Resources t;
  private final int u;
  private final int v;
  private final Provider<ajv> w;
  private final bfy x;
  private final ProfileEventAnalytics y;
  private final afa.c z = new afa.c();
  
  public afa(Context paramContext, List<Friend> paramList, FriendSectionizer<Friend> paramFriendSectionizer, afa.a parama, afe paramafe, Provider<ajv> paramProvider, FriendListProperty paramFriendListProperty, bfy parambfy)
  {
    super(paramContext, 2130968579, paramList);
    SnapchatApplication.b().c().a(this);
    n = paramContext;
    p = paramList;
    o = paramList;
    q = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    a = paramFriendSectionizer;
    r = parama;
    m = b.getBackgroundResId();
    t = n.getResources();
    u = t.getColor(2131230763);
    v = t.getColor(2131230764);
    l = new Handler()
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        FriendAction localFriendAction;
        if ((obj instanceof FriendAction)) {
          localFriendAction = (FriendAction)obj;
        }
        switch (afa.3.a[localFriendAction.ordinal()])
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        notifyDataSetChanged();
      }
    };
    e = paramafe;
    w = paramProvider;
    C = paramFriendListProperty;
    x = parambfy;
    y = ProfileEventAnalytics.a();
  }
  
  private String a(Friend paramFriend, int paramInt)
  {
    return FriendSectionizer.a(a.a(paramFriend, paramInt), paramFriend, n);
  }
  
  public final AnalyticsEvents.AnalyticsContext a()
  {
    return r.a();
  }
  
  public final void a(int paramInt)
  {
    if ((paramInt < getCount()) && (paramInt >= 0))
    {
      Friend localFriend = (Friend)getItem(paramInt);
      if (localFriend != null)
      {
        if ((c() != null) && (!j))
        {
          ProfileEventAnalytics.a(a(), c().length(), b());
          j = true;
        }
        z.b(localFriend);
        notifyDataSetChanged();
      }
    }
  }
  
  public final void a(final aff paramaff, final Friend paramFriend, final FriendAction paramFriendAction, FriendAction.BlockReason paramBlockReason, pp.a parama, ic paramic)
  {
    paramaff = new pp(paramFriendAction, paramFriend, paramFriend.h(), mUserId, paramFriend.a(), mJustAdded, paramBlockReason, paramFriendAction)
    {
      @ccm
      protected final void a(bkh paramAnonymousbkh, @cgc ajv paramAnonymousajv)
      {
        super.a(paramAnonymousbkh, paramAnonymousajv);
        paramaff.a(new Runnable()
        {
          public final void run()
          {
            switch (afa.3.a[a.ordinal()])
            {
            }
            for (;;)
            {
              notifyDataSetChanged();
              return;
              afa.c(afa.this).remove(b);
            }
          }
        });
      }
      
      @ccm
      public final void a(@cgc bkh paramAnonymousbkh, @cgb uc paramAnonymousuc)
      {
        super.a(paramAnonymousbkh, paramAnonymousuc);
        switch (afa.3.a[paramFriendAction.ordinal()])
        {
        default: 
          return;
        case 4: 
          afa.a(afa.this).remove(paramFriend);
          paramaff.a(paramFriend);
          return;
        }
        afa.b(afa.this).remove(paramFriend);
        paramaff.c(paramFriend);
      }
      
      public final void f()
      {
        switch (afa.3.a[paramFriendAction.ordinal()])
        {
        }
        for (;;)
        {
          super.f();
          return;
          afa.a(afa.this).add(paramFriend);
          paramaff.a(paramFriend);
          continue;
          afa.b(afa.this).add(paramFriend);
          paramaff.c(paramFriend);
        }
      }
    };
    mAnalyticsContext = a();
    mAddSourceType = AnalyticsEvents.AddFriendSourceType.USERNAME;
    mFriendActionCompleteCallback = parama;
    paramaff = paramaff.e();
    mActionMethod = paramic;
    paramaff.f();
  }
  
  public final void a(@cgb Friend paramFriend)
  {
    if (z.a(paramFriend)) {
      z.b(paramFriend);
    }
    notifyDataSetChanged();
  }
  
  public final void a(@cgc List<Friend> paramList)
  {
    if (paramList == null) {}
    for (o = p;; o = paramList)
    {
      notifyDataSetChanged();
      return;
    }
  }
  
  public final int b()
  {
    return r.d();
  }
  
  public final String c()
  {
    if (s == null) {
      return null;
    }
    return s.a;
  }
  
  public final int getCount()
  {
    if (o == null) {
      return 0;
    }
    return o.size();
  }
  
  public final Filter getFilter()
  {
    if (s == null) {
      s = new afc(p, k, this);
    }
    s.b = f;
    s.c = g;
    s.e = h;
    s.d = i;
    return s;
  }
  
  public final long getHeaderId(int paramInt)
  {
    Friend localFriend = (Friend)o.get(paramInt);
    if ((localFriend instanceof afl)) {
      return "shared story".hashCode();
    }
    return a(localFriend, paramInt).hashCode();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = new afa.b();
      paramView = q.inflate(2130968715, paramViewGroup, false);
      a = ((TextView)paramView.findViewById(2131361919));
      paramView.setTag(localObject);
    }
    String str;
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (afa.b)paramView.getTag())
    {
      localObject = (Friend)o.get(paramInt);
      str = a((Friend)localObject, paramInt);
      if ((!(localObject instanceof afl)) && (!TextUtils.isEmpty(str))) {
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
    Friend localFriend = (Friend)o.get(paramInt);
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
      paramView = q.inflate(2130968579, paramViewGroup, false);
      if (paramView == null) {
        throw new RuntimeException("Failed to inflate add_friends_item");
      }
      paramViewGroup = new aff(this, paramView, A, B, C, e, z, w);
      paramView.setTag(paramViewGroup);
      G = paramInt;
      if (!(localFriend instanceof afl)) {
        break label518;
      }
      localObject1 = (afl)localFriend;
      localObject2 = r;
      paramInt = m;
      paramViewGroup.a(((afl)localObject1).a());
      z.setVisibility(8);
      paramView.setBackgroundDrawable(null);
      n.setOnClickListener(new aff.13(paramViewGroup, (afl)localObject1));
      n.setVisibility(0);
      l.setVisibility(8);
      paramViewGroup.a(paramInt, ((afa.a)localObject2).a(), paramViewGroup.e((Friend)localObject1), ((afa.a)localObject2).s_(), (Friend)localObject1);
      label211:
      localObject2 = l.obtainMessage();
      if (!localFriend.q()) {
        break label560;
      }
      paramViewGroup.a(2130837614, H.a(), AnalyticsEvents.AddFriendSourceType.USERNAME, null, localFriend);
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
        if ((localFriend.q()) || ((!aff.b(localFriend)) && (K.a != FriendListProperty.TouchMode.ALWAYS_TAPPABLE))) {
          break label704;
        }
        k.setOnClickListener(new aff.9(paramViewGroup, localFriend));
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
      w.setOnClickListener(new aff.10(paramViewGroup, localFriend, (Message)localObject2));
      x.setOnClickListener(new aff.11(paramViewGroup, localFriend));
      y.setOnClickListener(new aff.12(paramViewGroup, localFriend));
      return paramView;
      paramViewGroup = (aff)paramView.getTag();
      break label96;
      label518:
      paramViewGroup.a(paramInt, localFriend, c, b, v, u, m, r, d, x);
      break label211;
      label560:
      if ((L.a(localFriend)) && (localFriend.g()))
      {
        ait.a(localFriend, new aff.8(paramViewGroup, localFriend));
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
        paramViewGroup.b(J.getResources().getColor(2131230784));
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
    
    public abstract String s_();
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
    
    public final boolean a(@cgb Friend paramFriend)
    {
      return paramFriend.equals(a);
    }
    
    public final void b(Friend paramFriend)
    {
      Timber.c("AddFriendsAdapter", "select " + paramFriend.h(), new Object[0]);
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
 * Qualified Name:     afa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
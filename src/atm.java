import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.FriendSectionizer.FriendSection;

public class atm
  extends atn
  implements qg.a
{
  final aga R;
  protected final CheckBox S;
  protected final ProgressBar T;
  public final TextView U;
  private boolean k = false;
  private final ProfileEventAnalytics l;
  
  public atm(@chd aga paramaga, View paramView)
  {
    this(paramaga, paramView, (CheckBox)paramView.findViewById(2131361864), (ProgressBar)paramView.findViewById(2131361866), (TextView)paramView.findViewById(2131361861));
  }
  
  private atm(@chd aga paramaga, View paramView, CheckBox paramCheckBox, ProgressBar paramProgressBar, TextView paramTextView)
  {
    super(paramView, 2131362129);
    R = paramaga;
    S = paramCheckBox;
    T = paramProgressBar;
    U = paramTextView;
    l = ProfileEventAnalytics.a();
  }
  
  public final void a(int paramInt, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, AnalyticsEvents.AddFriendSourceType paramAddFriendSourceType, String paramString, Friend paramFriend)
  {
    S.setBackgroundResource(paramInt);
    boolean bool;
    if ((paramFriend.b()) || (auk.f(paramFriend.l(), akp.g())))
    {
      bool = true;
      S.setChecked(bool);
      CheckBox localCheckBox = S;
      paramAnalyticsContext = new atm.a(paramAnalyticsContext, paramAddFriendSourceType, paramString, paramFriend);
      a = -1;
      localCheckBox.setOnClickListener(paramAnalyticsContext);
      paramAnalyticsContext = paramFriend;
      if (paramFriend.m()) {
        paramAnalyticsContext = auj.a(paramFriend);
      }
      paramAnalyticsContext = mSuggestionState;
    }
    switch (atm.1.b[paramAnalyticsContext.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        bool = false;
        break;
        a(false, false);
        return;
        if (T != null) {
          T.setVisibility(8);
        }
      } while (S == null);
      S.setEnabled(false);
      return;
    case 3: 
      a(true, false);
      return;
    case 4: 
      a(false, false);
      return;
    }
    a(false, S.isChecked());
  }
  
  public final void a(AnalyticsEvents.AnalyticsContext paramAnalyticsContext, int paramInt1, int paramInt2)
  {
    int i3 = 0;
    SimpleArrayMap localSimpleArrayMap = R.a();
    int i;
    label26:
    int j;
    label40:
    int m;
    label54:
    int n;
    label68:
    int i1;
    label82:
    int i2;
    if (!localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.FRIENDS_WHO_ADDED_ME))
    {
      i = 0;
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.MY_ADDRESS_BOOK)) {
        break label164;
      }
      j = 0;
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.MY_FRIENDS)) {
        break label183;
      }
      m = 0;
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.USERNAME)) {
        break label202;
      }
      n = 0;
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.ALPHABETICAL)) {
        break label221;
      }
      i1 = 0;
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.ON_SNAPCHAT)) {
        break label240;
      }
      i2 = 0;
      label96:
      if (localSimpleArrayMap.containsKey(FriendSectionizer.FriendSection.INVITE)) {
        break label259;
      }
    }
    for (;;)
    {
      switch (atm.1.a[paramAnalyticsContext.ordinal()])
      {
      default: 
        return;
        i = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.FRIENDS_WHO_ADDED_ME)).intValue();
        break label26;
        label164:
        j = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.MY_ADDRESS_BOOK)).intValue();
        break label40;
        label183:
        m = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.MY_FRIENDS)).intValue();
        break label54;
        label202:
        n = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.USERNAME)).intValue();
        break label68;
        label221:
        i1 = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.ALPHABETICAL)).intValue();
        break label82;
        label240:
        i2 = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.ON_SNAPCHAT)).intValue();
        break label96;
        label259:
        i3 = ((Integer)localSimpleArrayMap.get(FriendSectionizer.FriendSection.INVITE)).intValue();
      }
    }
    paramAnalyticsContext = new kn();
    charCount = Long.valueOf(paramInt1);
    keystrokeCount = Long.valueOf(paramInt2);
    addedMeSearchCount = Long.valueOf(i);
    addressBookSearchCount = Long.valueOf(j);
    myFriendSearchCount = Long.valueOf(m);
    usernameSearchCount = Long.valueOf(n);
    ScAnalyticsEventEngine.a(paramAnalyticsContext);
    return;
    paramAnalyticsContext = new jb();
    charCount = Long.valueOf(paramInt1);
    keystrokeCount = Long.valueOf(paramInt2);
    snapchatterCount = Long.valueOf(i2);
    nonSnapchatterCount = Long.valueOf(i3);
    ScAnalyticsEventEngine.a(paramAnalyticsContext);
    return;
    paramAnalyticsContext = new jr();
    charCount = Long.valueOf(paramInt1);
    keystrokeCount = Long.valueOf(paramInt2);
    snapchatterCount = Long.valueOf(i2);
    nonSnapchatterCount = Long.valueOf(i3);
    ScAnalyticsEventEngine.a(paramAnalyticsContext);
    return;
    paramAnalyticsContext = new kb();
    charCount = Long.valueOf(paramInt1);
    keystrokeCount = Long.valueOf(paramInt2);
    friendSearchCount = Long.valueOf(i1);
    ScAnalyticsEventEngine.a(paramAnalyticsContext);
  }
  
  public final void a(FriendAction paramFriendAction, boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      return;
    }
    if (R != null) {
      R.b(paramFriendAction, R.e());
    }
    switch (atm.1.c[paramFriendAction.ordinal()])
    {
    default: 
      return;
    case 1: 
      a(false, true);
      return;
    }
    a(false, false);
  }
  
  protected final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 0;
    if (paramBoolean1)
    {
      i = 8;
      if (S != null)
      {
        S.setChecked(paramBoolean2);
        CheckBox localCheckBox = S;
        if (paramBoolean1) {
          break label96;
        }
        paramBoolean2 = true;
        label37:
        localCheckBox.setEnabled(paramBoolean2);
        S.setVisibility(i);
      }
      if (!paramBoolean1) {
        break label101;
      }
    }
    label96:
    label101:
    for (int i = j;; i = 8)
    {
      if (T != null) {
        T.setVisibility(i);
      }
      return;
      if ((k) && (paramBoolean2))
      {
        i = 8;
        break;
      }
      i = 0;
      break;
      paramBoolean2 = false;
      break label37;
    }
  }
  
  public void q()
  {
    U.setVisibility(8);
    S.setVisibility(8);
    T.setVisibility(8);
    S.setOnClickListener(null);
  }
  
  public final void v()
  {
    S.setVisibility(8);
  }
  
  public final void w()
  {
    T.setVisibility(8);
  }
  
  public final class a
    implements View.OnClickListener
  {
    int a;
    private final AnalyticsEvents.AnalyticsContext c;
    private final AnalyticsEvents.AddFriendSourceType d;
    private final String e;
    private final Friend f;
    
    public a(AnalyticsEvents.AnalyticsContext paramAnalyticsContext, AnalyticsEvents.AddFriendSourceType paramAddFriendSourceType, String paramString, Friend paramFriend)
    {
      c = paramAnalyticsContext;
      d = paramAddFriendSourceType;
      e = paramString;
      f = paramFriend;
      a = -1;
    }
    
    public final void onClick(View paramView)
    {
      if (R != null)
      {
        paramView = R.d();
        if ((paramView != null) && (!R.k))
        {
          a(R.b(), paramView.length(), R.c());
          R.k = true;
        }
      }
      boolean bool = S.isChecked();
      Object localObject;
      if (bool)
      {
        localObject = FriendAction.ADD;
        paramView = (View)localObject;
        if (RegistrationAnalytics.b())
        {
          AnalyticsEvents.g(f.l());
          paramView = (View)localObject;
        }
        localObject = atm.this;
        if (bool) {
          break label248;
        }
      }
      label248:
      for (bool = true;; bool = false)
      {
        ((atm)localObject).a(true, bool);
        localObject = new qg(f, paramView);
        mAddSourceType = d;
        mAnalyticsContext = c;
        mFriendActionCompleteCallback = atm.this;
        localObject = ((qg)localObject).a();
        mActionMethod = il.CHECKMARK;
        mFriendIndex = a;
        ((qg)localObject).execute();
        AnalyticsEvents.a(paramView, c.name(), f, d, e);
        return;
        localObject = FriendAction.DELETE;
        paramView = (View)localObject;
        if (!RegistrationAnalytics.b()) {
          break;
        }
        AnalyticsEvents.h(f.l());
        paramView = (View)localObject;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     atm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
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
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public class asn
  extends aso
  implements pp.a
{
  final afa S;
  protected final CheckBox T;
  protected final ProgressBar U;
  public final TextView V;
  final ProfileEventAnalytics W;
  private boolean k = false;
  
  public asn(@cgc afa paramafa, View paramView)
  {
    this(paramafa, paramView, (CheckBox)paramView.findViewById(2131361863), (ProgressBar)paramView.findViewById(2131361865), (TextView)paramView.findViewById(2131361860));
  }
  
  private asn(@cgc afa paramafa, View paramView, CheckBox paramCheckBox, ProgressBar paramProgressBar, TextView paramTextView)
  {
    super(paramView, 2131362129);
    S = paramafa;
    T = paramCheckBox;
    U = paramProgressBar;
    V = paramTextView;
    W = ProfileEventAnalytics.a();
  }
  
  public final void a(int paramInt, AnalyticsEvents.AnalyticsContext paramAnalyticsContext, AnalyticsEvents.AddFriendSourceType paramAddFriendSourceType, String paramString, Friend paramFriend)
  {
    T.setBackgroundResource(paramInt);
    boolean bool;
    if ((paramFriend.b()) || (atm.f(paramFriend.h(), ajv.g())))
    {
      bool = true;
      T.setChecked(bool);
      CheckBox localCheckBox = T;
      paramAnalyticsContext = new asn.a(paramAnalyticsContext, paramAddFriendSourceType, paramString, paramFriend);
      a = -1;
      localCheckBox.setOnClickListener(paramAnalyticsContext);
      paramAnalyticsContext = paramFriend;
      if (paramFriend.q()) {
        paramAnalyticsContext = atl.a(paramFriend);
      }
      paramAnalyticsContext = mSuggestionState;
    }
    switch (asn.1.a[paramAnalyticsContext.ordinal()])
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
        if (U != null) {
          U.setVisibility(8);
        }
      } while (T == null);
      T.setEnabled(false);
      return;
    case 3: 
      a(true, false);
      return;
    case 4: 
      a(false, false);
      return;
    }
    a(false, T.isChecked());
  }
  
  public final void a(FriendAction paramFriendAction, boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      return;
    }
    switch (asn.1.b[paramFriendAction.ordinal()])
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
      if (T != null)
      {
        T.setChecked(paramBoolean2);
        CheckBox localCheckBox = T;
        if (paramBoolean1) {
          break label96;
        }
        paramBoolean2 = true;
        label37:
        localCheckBox.setEnabled(paramBoolean2);
        T.setVisibility(i);
      }
      if (!paramBoolean1) {
        break label101;
      }
    }
    label96:
    label101:
    for (int i = j;; i = 8)
    {
      if (U != null) {
        U.setVisibility(i);
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
    V.setVisibility(8);
    T.setVisibility(8);
    U.setVisibility(8);
    T.setOnClickListener(null);
  }
  
  public final void v()
  {
    T.setVisibility(8);
  }
  
  public final void w()
  {
    U.setVisibility(8);
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
      if (S != null)
      {
        paramView = S.c();
        if ((paramView != null) && (!S.j))
        {
          ProfileEventAnalytics.a(S.a(), paramView.length(), S.b());
          S.j = true;
        }
      }
      boolean bool = T.isChecked();
      Object localObject;
      if (bool)
      {
        localObject = FriendAction.ADD;
        paramView = (View)localObject;
        if (RegistrationAnalytics.b())
        {
          AnalyticsEvents.h(f.h());
          paramView = (View)localObject;
        }
        localObject = asn.this;
        if (bool) {
          break label244;
        }
      }
      label244:
      for (bool = true;; bool = false)
      {
        ((asn)localObject).a(true, bool);
        localObject = new pp(f, paramView);
        mAddSourceType = d;
        mAnalyticsContext = c;
        mFriendActionCompleteCallback = asn.this;
        localObject = ((pp)localObject).e();
        mActionMethod = ic.CHECKMARK;
        mFriendIndex = a;
        ((pp)localObject).f();
        AnalyticsEvents.a(paramView, c.name(), f, d, e);
        return;
        localObject = FriendAction.DELETE;
        paramView = (View)localObject;
        if (!RegistrationAnalytics.b()) {
          break;
        }
        AnalyticsEvents.i(f.h());
        paramView = (View)localObject;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     asn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
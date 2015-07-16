import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetricParams;
import com.snapchat.android.analytics.ProfileEventAnalytics.ProfilePageMetrics;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.fragments.addfriends.FriendListProperty;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import com.snapchat.android.model.SuggestedFriendAction;
import com.snapchat.android.ui.FriendTextsView;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;

public final class agf
  extends atm
{
  final View A;
  final Button B;
  final Button C;
  final Button D;
  final View E;
  final View F;
  int G;
  final aga H;
  final View I;
  final Context J;
  final FriendListProperty K;
  final aga.c L;
  final Bus M;
  final ProfileEventAnalytics N;
  final aph O;
  private final Set<Friend> P;
  private final Set<Friend> Q;
  private final age W;
  private final Provider<akp> X;
  final RelativeLayout k;
  final CheckBox l;
  final FriendTextsView m;
  final Button n;
  final View o;
  final View p;
  final View q;
  final ViewGroup r;
  final ImageView s;
  final ImageView t;
  final ImageView u;
  final View v;
  final View w;
  final View x;
  final View y;
  final View z;
  
  public agf(aga paramaga, View paramView, Set<Friend> paramSet1, Set<Friend> paramSet2, FriendListProperty paramFriendListProperty, age paramage, aga.c paramc, Provider<akp> paramProvider)
  {
    this(paramaga, paramView, paramSet1, paramSet2, paramFriendListProperty, paramage, paramc, paramProvider, bbo.a(), ProfileEventAnalytics.a(), aph.a());
  }
  
  private agf(aga paramaga, View paramView, Set<Friend> paramSet1, Set<Friend> paramSet2, FriendListProperty paramFriendListProperty, age paramage, aga.c paramc, Provider<akp> paramProvider, Bus paramBus, ProfileEventAnalytics paramProfileEventAnalytics, aph paramaph)
  {
    super(paramaga, paramView);
    H = paramaga;
    I = paramView;
    J = paramView.getContext();
    P = paramSet1;
    Q = paramSet2;
    K = paramFriendListProperty;
    W = paramage;
    L = paramc;
    X = paramProvider;
    k = ((RelativeLayout)paramView.findViewById(2131361858));
    n = ((Button)paramView.findViewById(2131361863));
    l = ((CheckBox)paramView.findViewById(2131361865));
    m = ((FriendTextsView)paramView.findViewById(2131361876));
    o = paramView.findViewById(2131361862);
    p = paramView.findViewById(2131361860);
    q = paramView.findViewById(2131361871);
    r = ((ViewGroup)paramView.findViewById(2131361872));
    s = ((ImageView)paramView.findViewById(2131361873));
    t = ((ImageView)paramView.findViewById(2131361874));
    u = ((ImageView)paramView.findViewById(2131361875));
    v = paramView.findViewById(2131361867);
    w = paramView.findViewById(2131361868);
    y = paramView.findViewById(2131361869);
    x = paramView.findViewById(2131361870);
    z = paramView.findViewById(2131361850);
    A = paramView.findViewById(2131361849);
    B = ((Button)paramView.findViewById(2131361852));
    C = ((Button)paramView.findViewById(2131361855));
    D = ((Button)paramView.findViewById(2131361856));
    E = paramView.findViewById(2131361853);
    F = paramView.findViewById(2131361857);
    M = paramBus;
    N = paramProfileEventAnalytics;
    O = paramaph;
  }
  
  private void a(final View paramView1, View paramView2)
  {
    if (paramView1.getVisibility() != 0) {
      paramView1.animate().alpha(1.0F).setListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          paramView1.setVisibility(0);
        }
      }).start();
    }
    paramView2.setVisibility(8);
    paramView2.animate().cancel();
    paramView2.setAlpha(0.0F);
  }
  
  static boolean b(@chc Friend paramFriend)
  {
    return (paramFriend.b()) || (auk.f(paramFriend.l(), akp.g()));
  }
  
  public final void a(final int paramInt1, final Friend paramFriend1, Friend paramFriend2, Friend paramFriend3, int paramInt2, int paramInt3, int paramInt4, final aga.a parama, final Set<String> paramSet, final bgy parambgy)
  {
    d(paramFriend1);
    Object localObject;
    if (K.g)
    {
      k.setBackgroundColor(0);
      paramInt2 = paramInt4;
      if (K.l)
      {
        r.setVisibility(0);
        r.setTag(paramFriend1.l());
        bhp.b(new Runnable()
        {
          public final void run()
          {
            parambgy.a(J, paramFriend1);
          }
        });
        localObject = parambgy.a(paramFriend1.l());
        if ((localObject != null) && (!((List)localObject).isEmpty())) {
          break label348;
        }
        parambgy = String.format("profile_addedme_ghost%s", new Object[] { Integer.valueOf(Math.abs(paramFriend1.l().hashCode() % 20) + 1) });
        paramInt3 = J.getResources().getIdentifier(parambgy, "drawable", J.getPackageName());
        s.setBackgroundResource(paramInt3);
        s.setVisibility(0);
        t.setVisibility(4);
        u.setVisibility(4);
        label186:
        new StringBuilder("friends profile images - Animation starts for friend: ").append(paramFriend1.l());
      }
      if (paramFriend1.h()) {
        break label458;
      }
      v();
      w();
      l.setVisibility(0);
      l.setBackgroundResource(paramInt2);
      l.setChecked(paramSet.contains(mPhoneNumber));
      l.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = H.d();
          if ((paramAnonymousView != null) && (!H.k))
          {
            a(H.b(), paramAnonymousView.length(), H.c());
            H.k = true;
          }
          l.setChecked(true);
          paramAnonymousView = paramFriend1mPhoneNumber;
          String str = J.getString(2131493207, new Object[] { akr.l() });
          awc.a(J, paramAnonymousView, str);
          if (!paramSet.contains(paramAnonymousView))
          {
            paramSet.add(paramAnonymousView);
            AnalyticsEvents.a(FriendAction.INVITE, parama.a().name(), paramFriend1, AnalyticsEvents.AddFriendSourceType.CONTACTS, parama.r_());
            paramAnonymousView = paramFriend1.a();
            str = paramFriend1mPhoneNumber;
            AnalyticsEvents.AnalyticsContext localAnalyticsContext = parama.a();
            switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[localAnalyticsContext.ordinal()])
            {
            }
          }
          for (;;)
          {
            new EasyMetric(ProfileEventAnalytics.ProfilePageMetrics.PROFILE_CONTACT_ADD_CLICK.name()).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_NAME.nameInLowerCase(), paramAnonymousView).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_INFO.nameInLowerCase(), str).a(ProfileEventAnalytics.ProfilePageMetricParams.IDENTITY_PROFILE_PAGE.nameInLowerCase(), aug.a(AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE)).e();
            if (RegistrationAnalytics.b()) {
              AnalyticsEvents.i(paramFriend1mPhoneNumber);
            }
            return;
            ScAnalyticsEventEngine.a(new ji());
            continue;
            ScAnalyticsEventEngine.a(new ir());
          }
        }
      });
    }
    for (;;)
    {
      n.setVisibility(8);
      return;
      if (parama.a(paramFriend1))
      {
        k.setBackgroundColor(paramInt2);
        u.setBackgroundResource(2130837912);
        paramInt2 = 2130837887;
        break;
      }
      k.setBackgroundColor(paramInt3);
      u.setBackgroundResource(2130837911);
      paramInt2 = paramInt4;
      break;
      label348:
      parambgy = new AnimationDrawable();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Bitmap localBitmap = (Bitmap)((Iterator)localObject).next();
        parambgy.addFrame(new BitmapDrawable(Resources.getSystem(), localBitmap), 200);
      }
      parambgy.setOneShot(false);
      t.setBackgroundDrawable(parambgy);
      parambgy.start();
      s.setVisibility(4);
      t.setVisibility(0);
      u.setVisibility(0);
      break label186;
      label458:
      l.setVisibility(8);
      a(paramFriend1);
      c(paramFriend1);
      B.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new agh(J, paramFriend1, il.SWIPE_BUTTON)
          {
            protected final void a(FriendAction.BlockReason paramAnonymous2BlockReason)
            {
              H.a(agf.this, a, FriendAction.BLOCK, paramAnonymous2BlockReason, agf.this, il.SWIPE_BUTTON);
            }
          }.a();
        }
      });
      C.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (paramFriend1mSuggestReason != blo.a.UNKNOWN)
          {
            paramAnonymousView = O;
            String str = paramFriend1.l();
            int i = paramInt1;
            Intent localIntent = paramAnonymousView.b(c);
            localIntent.putExtra("op_code", 1033);
            localIntent.putExtra("action", SuggestedFriendAction.HIDE.toString());
            localIntent.putExtra("friend_name", str);
            localIntent.putExtra("friend_index", i);
            paramAnonymousView.a(c, localIntent);
            C.setVisibility(8);
            D.setVisibility(8);
            F.setVisibility(0);
            return;
          }
          H.a(agf.this, paramFriend1, FriendAction.HIDE, null, agf.this, null);
        }
      });
      D.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          H.a(agf.this, paramFriend1, FriendAction.IGNORE, null, agf.this, il.SWIPE_BUTTON);
        }
      });
      boolean bool1 = paramFriend1.equals(paramFriend2);
      boolean bool2 = paramFriend1.equals(paramFriend3);
      b(bool2);
      if ((!bool2) && (!bool1)) {
        a(null);
      }
      a(paramInt2, parama.a(), e(paramFriend1), parama.r_(), paramFriend1);
    }
  }
  
  public final void a(@chc Friend paramFriend)
  {
    int j = 8;
    boolean bool = P.contains(paramFriend);
    paramFriend = E;
    if (bool)
    {
      i = 0;
      paramFriend.setVisibility(i);
      paramFriend = B;
      if (!bool) {
        break label56;
      }
    }
    label56:
    for (int i = j;; i = 0)
    {
      paramFriend.setVisibility(i);
      return;
      i = 8;
      break;
    }
  }
  
  public final void a(Friend paramFriend, boolean paramBoolean)
  {
    int j = 8;
    int i1 = 1;
    if (TextUtils.equals(akr.l(), paramFriend.l())) {
      paramBoolean = false;
    }
    if ((K.h) && (!paramFriend.q()))
    {
      i = 1;
      String str = paramFriend.t();
      U.setText(str);
      TextView localTextView = U;
      if ((i == 0) || (TextUtils.isEmpty(str))) {
        break label141;
      }
      i = 0;
      label76:
      localTextView.setVisibility(i);
      if (!paramBoolean) {
        break label147;
      }
      a(v, p);
      label98:
      if ((!b(paramFriend)) || (!K.c)) {
        break label162;
      }
      i = i1;
      label118:
      paramFriend = o;
      if (i == 0) {
        break label167;
      }
    }
    label141:
    label147:
    label162:
    label167:
    for (int i = j;; i = 0)
    {
      paramFriend.setVisibility(i);
      return;
      i = 0;
      break;
      i = 8;
      break label76;
      a(p, v);
      break label98;
      i = 0;
      break label118;
    }
  }
  
  public final void a(@chd final Runnable paramRunnable)
  {
    if (k.getTranslationX() == 0.0F) {}
    for (int i = 1; i != 0; i = 0)
    {
      if (paramRunnable != null) {
        bhp.a(paramRunnable);
      }
      return;
    }
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(k, "translationX", new float[] { 0.0F });
    if (paramRunnable != null) {
      localObjectAnimator1.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          I.post(paramRunnable);
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          I.post(paramRunnable);
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
    }
    localObjectAnimator1.setDuration(200L);
    i = z.getMeasuredWidth();
    paramRunnable = ObjectAnimator.ofFloat(A, "translationX", new float[] { i });
    paramRunnable.setDuration(200L);
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(z, "translationX", new float[] { -i });
    localObjectAnimator2.setDuration(200L);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(new Animator[] { localObjectAnimator1, paramRunnable, localObjectAnimator2 });
    localAnimatorSet.start();
  }
  
  public final void b(boolean paramBoolean)
  {
    B.setClickable(paramBoolean);
    C.setClickable(paramBoolean);
    D.setClickable(paramBoolean);
  }
  
  public final void c(@chc Friend paramFriend)
  {
    if (!K.i)
    {
      I.findViewById(2131361854).setVisibility(8);
      I.findViewById(2131361851).setVisibility(8);
      return;
    }
    if (K.j)
    {
      I.findViewById(2131361854).setVisibility(8);
      return;
    }
    if (K.k) {
      I.findViewById(2131361851).setVisibility(8);
    }
    if (Q.contains(paramFriend))
    {
      C.setVisibility(8);
      D.setVisibility(8);
      F.setVisibility(0);
      return;
    }
    F.setVisibility(8);
    if ((b(paramFriend)) || (mSuggestReason != blo.a.UNKNOWN))
    {
      C.setVisibility(0);
      D.setVisibility(8);
      return;
    }
    C.setVisibility(8);
    D.setVisibility(0);
  }
  
  public final void d(Friend paramFriend)
  {
    boolean bool2 = false;
    m.setPrimaryText(W.a(paramFriend));
    Object localObject = W.a(paramFriend, L.a(paramFriend));
    m.setSecondaryText((CharSequence)localObject);
    switch (agf.6.a[K.a.ordinal()])
    {
    default: 
      m.a(false);
      return;
    }
    if (L.a(paramFriend))
    {
      localObject = L;
      if ((a != null) && (TextUtils.equals(a.l(), paramFriend.l())))
      {
        bool1 = c;
        c = false;
      }
      for (;;)
      {
        m.a(bool1);
        return;
        bool1 = false;
      }
    }
    localObject = L;
    boolean bool1 = bool2;
    if (b != null)
    {
      bool1 = bool2;
      if (TextUtils.equals(b.l(), paramFriend.l()))
      {
        bool1 = d;
        d = false;
      }
    }
    m.b(bool1);
  }
  
  final AnalyticsEvents.AddFriendSourceType e(Friend paramFriend)
  {
    akp localakp;
    switch (agf.6.b[H.b().ordinal()])
    {
    default: 
      localakp = (akp)X.get();
      if (localakp == null) {
        break label85;
      }
      if (localakp.b(paramFriend)) {
        return AnalyticsEvents.AddFriendSourceType.CONTACTS;
      }
      break;
    case 1: 
      return AnalyticsEvents.AddFriendSourceType.ADDED_BY_NEARBY;
    case 2: 
      return AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
    }
    if (localakp.c(paramFriend)) {
      return AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
    }
    label85:
    return AnalyticsEvents.AddFriendSourceType.USERNAME;
  }
}

/* Location:
 * Qualified Name:     agf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
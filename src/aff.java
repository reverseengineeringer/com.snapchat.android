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
import com.snapchat.android.Timber;
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

public final class aff
  extends asn
{
  final View A;
  final Button B;
  final Button C;
  final Button D;
  final View E;
  final View F;
  int G;
  final afa H;
  final View I;
  final Context J;
  final FriendListProperty K;
  final afa.c L;
  final Bus M;
  final ProfileEventAnalytics N;
  final aol O;
  private final Set<Friend> P;
  private final Set<Friend> Q;
  private final afe R;
  private final Provider<ajv> Y;
  private final azn Z;
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
  
  public aff(afa paramafa, View paramView, Set<Friend> paramSet1, Set<Friend> paramSet2, FriendListProperty paramFriendListProperty, afe paramafe, afa.c paramc, Provider<ajv> paramProvider)
  {
    this(paramafa, paramView, paramSet1, paramSet2, paramFriendListProperty, paramafe, paramc, paramProvider, ban.a(), azn.a(), ProfileEventAnalytics.a(), aol.a());
  }
  
  private aff(afa paramafa, View paramView, Set<Friend> paramSet1, Set<Friend> paramSet2, FriendListProperty paramFriendListProperty, afe paramafe, afa.c paramc, Provider<ajv> paramProvider, Bus paramBus, azn paramazn, ProfileEventAnalytics paramProfileEventAnalytics, aol paramaol)
  {
    super(paramafa, paramView);
    H = paramafa;
    I = paramView;
    J = paramView.getContext();
    P = paramSet1;
    Q = paramSet2;
    K = paramFriendListProperty;
    R = paramafe;
    L = paramc;
    Y = paramProvider;
    Z = paramazn;
    k = ((RelativeLayout)paramView.findViewById(2131361857));
    n = ((Button)paramView.findViewById(2131361862));
    l = ((CheckBox)paramView.findViewById(2131361864));
    m = ((FriendTextsView)paramView.findViewById(2131361875));
    o = paramView.findViewById(2131361861);
    p = paramView.findViewById(2131361859);
    q = paramView.findViewById(2131361870);
    r = ((ViewGroup)paramView.findViewById(2131361871));
    s = ((ImageView)paramView.findViewById(2131361872));
    t = ((ImageView)paramView.findViewById(2131361873));
    u = ((ImageView)paramView.findViewById(2131361874));
    v = paramView.findViewById(2131361866);
    w = paramView.findViewById(2131361867);
    y = paramView.findViewById(2131361868);
    x = paramView.findViewById(2131361869);
    z = paramView.findViewById(2131361849);
    A = paramView.findViewById(2131361848);
    B = ((Button)paramView.findViewById(2131361851));
    C = ((Button)paramView.findViewById(2131361854));
    D = ((Button)paramView.findViewById(2131361855));
    E = paramView.findViewById(2131361852);
    F = paramView.findViewById(2131361856);
    M = paramBus;
    N = paramProfileEventAnalytics;
    O = paramaol;
  }
  
  private void a(final View paramView1, View paramView2)
  {
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
    paramView2.setVisibility(8);
    paramView2.animate().cancel();
    paramView2.setAlpha(0.0F);
  }
  
  static boolean b(@cgb Friend paramFriend)
  {
    return (paramFriend.b()) || (atm.f(paramFriend.h(), ajv.g()));
  }
  
  public final void a(final int paramInt1, final Friend paramFriend1, Friend paramFriend2, Friend paramFriend3, int paramInt2, int paramInt3, int paramInt4, final afa.a parama, final Set<String> paramSet, final bfy parambfy)
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
        r.setTag(paramFriend1.h());
        bgp.b(new Runnable()
        {
          public final void run()
          {
            parambfy.a(J, paramFriend1);
          }
        });
        localObject = parambfy.a(paramFriend1.h());
        if ((localObject != null) && (!((List)localObject).isEmpty())) {
          break label360;
        }
        parambfy = String.format("profile_addedme_ghost%s", new Object[] { Integer.valueOf(Math.abs(paramFriend1.h().hashCode() % 20) + 1) });
        paramInt3 = J.getResources().getIdentifier(parambfy, "drawable", J.getPackageName());
        s.setBackgroundResource(paramInt3);
        s.setVisibility(0);
        t.setVisibility(4);
        u.setVisibility(4);
        label186:
        Timber.c("AddFriendsViewHolder", "friends profile images - Animation starts for friend: " + paramFriend1.h(), new Object[0]);
      }
      if (paramFriend1.g()) {
        break label470;
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
          l.setChecked(true);
          paramAnonymousView = paramFriend1mPhoneNumber;
          String str = J.getString(2131493207, new Object[] { ajx.l() });
          ave.a(J, paramAnonymousView, str);
          if (!paramSet.contains(paramAnonymousView))
          {
            paramSet.add(paramAnonymousView);
            AnalyticsEvents.a(FriendAction.INVITE, parama.a().name(), paramFriend1, AnalyticsEvents.AddFriendSourceType.CONTACTS, parama.s_());
            paramAnonymousView = paramFriend1.a();
            str = paramFriend1mPhoneNumber;
            AnalyticsEvents.AnalyticsContext localAnalyticsContext = parama.a();
            switch (com.snapchat.android.analytics.ProfileEventAnalytics.1.$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext[localAnalyticsContext.ordinal()])
            {
            }
          }
          for (;;)
          {
            new EasyMetric(ProfileEventAnalytics.ProfilePageMetrics.PROFILE_CONTACT_ADD_CLICK.name()).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_NAME.nameInLowerCase(), paramAnonymousView).a(ProfileEventAnalytics.ProfilePageMetricParams.CONTACT_INFO.nameInLowerCase(), str).a(ProfileEventAnalytics.ProfilePageMetricParams.IDENTITY_PROFILE_PAGE.nameInLowerCase(), ath.a(AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_PAGE)).d();
            if (RegistrationAnalytics.b()) {
              AnalyticsEvents.j(paramFriend1mPhoneNumber);
            }
            return;
            ScAnalyticsEventEngine.a(new iw());
            continue;
            ScAnalyticsEventEngine.a(new ig());
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
      label360:
      parambfy = new AnimationDrawable();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Bitmap localBitmap = (Bitmap)((Iterator)localObject).next();
        parambfy.addFrame(new BitmapDrawable(Resources.getSystem(), localBitmap), 200);
      }
      parambfy.setOneShot(false);
      t.setBackgroundDrawable(parambfy);
      parambfy.start();
      s.setVisibility(4);
      t.setVisibility(0);
      u.setVisibility(0);
      break label186;
      label470:
      l.setVisibility(8);
      a(paramFriend1);
      c(paramFriend1);
      B.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new afh(J, paramFriend1, ic.SWIPE_BUTTON)
          {
            protected final void a(FriendAction.BlockReason paramAnonymous2BlockReason)
            {
              H.a(aff.this, a, FriendAction.BLOCK, paramAnonymous2BlockReason, aff.this, ic.SWIPE_BUTTON);
            }
          }.a();
        }
      });
      C.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (paramFriend1mSuggestReason != bkn.a.UNKNOWN)
          {
            paramAnonymousView = O;
            String str = paramFriend1.h();
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
          H.a(aff.this, paramFriend1, FriendAction.HIDE, null, aff.this, null);
        }
      });
      D.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          H.a(aff.this, paramFriend1, FriendAction.IGNORE, null, aff.this, ic.SWIPE_BUTTON);
        }
      });
      boolean bool1 = paramFriend1.equals(paramFriend2);
      boolean bool2 = paramFriend1.equals(paramFriend3);
      b(bool2);
      if ((!bool2) && (!bool1)) {
        a(null);
      }
      a(paramInt2, parama.a(), e(paramFriend1), parama.s_(), paramFriend1);
    }
  }
  
  public final void a(@cgb Friend paramFriend)
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
    if (TextUtils.equals(ajx.l(), paramFriend.h())) {
      paramBoolean = false;
    }
    if ((K.h) && (!paramFriend.r()))
    {
      i = 1;
      String str = paramFriend.u();
      V.setText(str);
      TextView localTextView = V;
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
  
  public final void a(@cgc final Runnable paramRunnable)
  {
    if (k.getTranslationX() == 0.0F) {}
    for (int i = 1; i != 0; i = 0)
    {
      if (paramRunnable != null) {
        bgp.a(paramRunnable);
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
  
  public final void c(@cgb Friend paramFriend)
  {
    if (!K.i)
    {
      I.findViewById(2131361853).setVisibility(8);
      I.findViewById(2131361850).setVisibility(8);
      return;
    }
    if (K.j)
    {
      I.findViewById(2131361853).setVisibility(8);
      return;
    }
    if (K.k) {
      I.findViewById(2131361850).setVisibility(8);
    }
    if (Q.contains(paramFriend))
    {
      C.setVisibility(8);
      D.setVisibility(8);
      F.setVisibility(0);
      return;
    }
    F.setVisibility(8);
    if ((b(paramFriend)) || (mSuggestReason != bkn.a.UNKNOWN))
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
    m.setPrimaryText(R.a(paramFriend));
    Object localObject = R.a(paramFriend, L.a(paramFriend));
    m.setSecondaryText((CharSequence)localObject);
    switch (aff.6.a[K.a.ordinal()])
    {
    default: 
      m.a(false);
      return;
    }
    if (L.a(paramFriend))
    {
      localObject = L;
      if ((a != null) && (TextUtils.equals(a.h(), paramFriend.h())))
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
      if (TextUtils.equals(b.h(), paramFriend.h()))
      {
        bool1 = d;
        d = false;
      }
    }
    m.b(bool1);
  }
  
  final AnalyticsEvents.AddFriendSourceType e(Friend paramFriend)
  {
    ajv localajv;
    switch (aff.6.b[H.a().ordinal()])
    {
    default: 
      localajv = (ajv)Y.get();
      if (localajv == null) {
        break label85;
      }
      if (localajv.b(paramFriend)) {
        return AnalyticsEvents.AddFriendSourceType.CONTACTS;
      }
      break;
    case 1: 
      return AnalyticsEvents.AddFriendSourceType.ADDED_BY_NEARBY;
    case 2: 
      return AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
    }
    if (localajv.c(paramFriend)) {
      return AnalyticsEvents.AddFriendSourceType.ADDED_ME_BACK;
    }
    label85:
    return AnalyticsEvents.AddFriendSourceType.USERNAME;
  }
}

/* Location:
 * Qualified Name:     aff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
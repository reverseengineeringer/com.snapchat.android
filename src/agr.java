import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.ui.ChatFragmentSnapIconView;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.LockingAboveTheFoldListView.b;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.util.CashUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import javax.inject.Inject;

public final class agr
  extends BaseAdapter
{
  @Inject
  protected yt a;
  public Map<String, agv> b;
  public final ahb c = new ahb();
  private final Context d;
  private final LayoutInflater e;
  private final List<ChatFeedItem> f;
  private final List<ChatFeedItem> g;
  private final agr.a h;
  private final arg i;
  private final Handler j;
  private final long k;
  
  public agr(@chc Context paramContext, @chc List<ChatFeedItem> paramList, @chc agr.a parama, @chc arg paramarg)
  {
    e = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramContext;
    f = paramList;
    g = Collections.synchronizedList(new ArrayList());
    g.addAll(f);
    h = parama;
    i = paramarg;
    j = new Handler(Looper.getMainLooper());
    k = 60000L;
    SnapchatApplication.b().c().a(this);
  }
  
  @awj
  private static int a(ChatFeedItem paramChatFeedItem)
  {
    if ((paramChatFeedItem instanceof ald)) {
      return agr.b.a;
    }
    if ((paramChatFeedItem instanceof Snap)) {
      return agr.b.d;
    }
    if ((paramChatFeedItem instanceof akz)) {
      return agr.b.b;
    }
    if ((paramChatFeedItem instanceof ala)) {
      return agr.b.c;
    }
    if ((paramChatFeedItem instanceof alc)) {
      return agr.b.i;
    }
    if ((paramChatFeedItem instanceof ChatMedia)) {
      return agr.b.e;
    }
    if ((paramChatFeedItem instanceof alb)) {
      return agr.b.f;
    }
    if ((paramChatFeedItem instanceof CashFeedItem)) {
      return agr.b.h;
    }
    return agr.b.g;
  }
  
  @awj
  private void a(ChatFeedItem paramChatFeedItem, agr.c paramc)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if ((paramChatFeedItem instanceof ale))
    {
      m.setBackgroundColor(d.getResources().getColor(2131230738));
      localLayoutParams = (RelativeLayout.LayoutParams)m.getLayoutParams();
      if ((!(paramChatFeedItem instanceof alj)) || (!((alj)paramChatFeedItem).g())) {
        break label184;
      }
      width = d.getResources().getDimensionPixelSize(2131296286);
    }
    for (rightMargin = 0;; rightMargin = d.getResources().getDimensionPixelOffset(2131296292))
    {
      m.setLayoutParams(localLayoutParams);
      return;
      if (ayg.a(paramChatFeedItem))
      {
        if ((!(paramChatFeedItem instanceof alb)) && ((paramChatFeedItem.O()) || (paramChatFeedItem.P())))
        {
          m.setBackgroundColor(d.getResources().getColor(2131230734));
          break;
        }
        m.setBackgroundColor(d.getResources().getColor(2131230792));
        break;
      }
      m.setBackgroundColor(d.getResources().getColor(2131230727));
      break;
      label184:
      width = d.getResources().getDimensionPixelSize(2131296293);
    }
  }
  
  @awj
  private void a(ChatFeedItem paramChatFeedItem, TextView paramTextView)
  {
    b(paramChatFeedItem, paramTextView);
    if (((paramChatFeedItem instanceof StatefulChatFeedItem)) && ((paramChatFeedItem.O()) || (paramChatFeedItem.P())))
    {
      paramTextView.setTextColor(d.getResources().getColor(2131230734));
      return;
    }
    paramTextView.setTextColor(-16777216);
  }
  
  @awj
  private void a(final ChatFeedItem paramChatFeedItem, final FixTouchConsumeTextView paramFixTouchConsumeTextView, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramChatFeedItem.aj()))
    {
      paramFixTouchConsumeTextView.setVisibility(8);
      return;
    }
    if (paramBoolean)
    {
      paramFixTouchConsumeTextView.setText(paramChatFeedItem.aj());
      paramFixTouchConsumeTextView.setVisibility(0);
      if ((!(paramChatFeedItem instanceof alj)) || (!atw.b((alj)paramChatFeedItem, paramFixTouchConsumeTextView))) {
        break label136;
      }
      paramFixTouchConsumeTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }
    for (;;)
    {
      a(paramChatFeedItem, paramFixTouchConsumeTextView);
      if (((paramChatFeedItem instanceof alj)) && (((alj)paramChatFeedItem).f())) {
        bbj.a(paramFixTouchConsumeTextView, "sans-serif-light");
      }
      if ((!ayh.a()) || (!ayh.a(paramFixTouchConsumeTextView.getText().toString(), true))) {
        break;
      }
      paramFixTouchConsumeTextView.setTextSize(0, d.getResources().getDimension(2131296283));
      return;
      label136:
      j.removeCallbacksAndMessages(paramChatFeedItem.d());
      j.postAtTime(new Runnable()
      {
        public final void run()
        {
          if (((paramChatFeedItem instanceof alj)) && (atw.a((alj)paramChatFeedItem, paramFixTouchConsumeTextView))) {
            paramFixTouchConsumeTextView.setMovementMethod(LinkMovementMethod.getInstance());
          }
        }
      }, paramChatFeedItem.d(), SystemClock.uptimeMillis());
    }
    paramFixTouchConsumeTextView.setTextSize(0, d.getResources().getDimension(2131296284));
  }
  
  @awj
  private static void b(ChatFeedItem paramChatFeedItem, agr.c paramc)
  {
    if ((paramChatFeedItem.P()) && (paramChatFeedItem.R()))
    {
      t.setVisibility(0);
      return;
    }
    t.setVisibility(8);
  }
  
  @awj
  private void b(ChatFeedItem paramChatFeedItem, TextView paramTextView)
  {
    if (((paramChatFeedItem instanceof alj)) && (((alj)paramChatFeedItem).f()))
    {
      paramTextView.setTextAppearance(d, 2131558449);
      return;
    }
    paramTextView.setTextAppearance(d, 2131558450);
  }
  
  @awj
  public final ChatFeedItem a(int paramInt)
  {
    synchronized (g)
    {
      if ((paramInt <= getCount() - 1) && (paramInt >= 0))
      {
        ChatFeedItem localChatFeedItem = (ChatFeedItem)g.get(paramInt);
        return localChatFeedItem;
      }
      return null;
    }
  }
  
  public final int getCount()
  {
    return g.size();
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final int getItemViewType(int paramInt)
  {
    paramInt = a(a(paramInt));
    switch (agr.4.a[(paramInt - 1)])
    {
    default: 
      throw new RuntimeException("Shouldn't reach here. CHAT_UNKNOWN Should catch everything");
    case 1: 
      return 0;
    case 2: 
    case 3: 
    case 4: 
      return 1;
    case 5: 
    case 6: 
      return 2;
    case 7: 
    case 8: 
      return 3;
    }
    return 4;
  }
  
  @awj
  public final View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    ChatFeedItem localChatFeedItem = a(paramInt);
    int m = a(localChatFeedItem);
    agr.c localc;
    if (paramView == null)
    {
      localc = new agr.c(d);
      switch (agr.4.a[(m - 1)])
      {
      }
      while (paramView == null)
      {
        throw new NullPointerException();
        paramView = e.inflate(2130968628, paramViewGroup, false);
        e = ((FixTouchConsumeTextView)paramView.findViewById(2131362091));
        t = ((ImageView)paramView.findViewById(2131362087));
        m = paramView.findViewById(2131362090);
        j = ((TextView)paramView.findViewById(2131362099));
        continue;
        paramView = e.inflate(2130968625, paramViewGroup, false);
        i = ((TextView)paramView.findViewById(2131362101));
        K = ((TextView)paramView.findViewById(2131362100));
        j = ((TextView)paramView.findViewById(2131362099));
        continue;
        paramView = e.inflate(2130968627, paramViewGroup, false);
        h = ((TextView)paramView.findViewById(2131362121));
        t = ((ImageView)paramView.findViewById(2131362087));
        m = paramView.findViewById(2131362090);
        j = ((TextView)paramView.findViewById(2131362099));
        d = ((ViewGroup)paramView.findViewById(2131362102));
        n = ((ChatFragmentSnapIconView)paramView.findViewById(2131362118));
        o = ((ProgressBar)paramView.findViewById(2131362119));
        k = ((TextView)paramView.findViewById(2131362120));
        l = ((TextView)paramView.findViewById(2131362122));
        continue;
        paramView = e.inflate(2130968626, paramViewGroup, false);
        e = ((FixTouchConsumeTextView)paramView.findViewById(2131362091));
        t = ((ImageView)paramView.findViewById(2131362087));
        m = paramView.findViewById(2131362090);
        j = ((TextView)paramView.findViewById(2131362099));
        d = ((ViewGroup)paramView.findViewById(2131362102));
        C = ((ViewGroup)paramView.findViewById(2131362103));
        y = ((ImageResourceView)paramView.findViewById(2131362105));
        p = paramView.findViewById(2131362110);
        q = ((TextView)paramView.findViewById(2131362111));
        L = paramView.findViewById(2131362112);
        L.setMinimumHeight((int)d.getResources().getDimension(2131296279));
        M = ((TextView)paramView.findViewById(2131362114));
        N = ((TextView)paramView.findViewById(2131362115));
        O = ((ImageView)paramView.findViewById(2131362117));
        P = ((ProgressBar)paramView.findViewById(2131362116));
        Q = ((ImageView)paramView.findViewById(2131362113));
        z = ((TextureVideoView)paramView.findViewById(2131362106));
        A = ((FitWidthImageView)paramView.findViewById(2131362107));
        B = paramView.findViewById(2131362104);
        D = ((ProgressBar)paramView.findViewById(2131362109));
        E = ((ViewGroup)paramView.findViewById(2131362108));
        continue;
        paramView = e.inflate(2130968624, paramViewGroup, false);
        e = ((FixTouchConsumeTextView)paramView.findViewById(2131362091));
        r = ((TextView)paramView.findViewById(2131362097));
        s = ((TextView)paramView.findViewById(2131362098));
        t = ((ImageView)paramView.findViewById(2131362087));
        m = paramView.findViewById(2131362090);
        j = ((TextView)paramView.findViewById(2131362099));
        u = ((ImageView)paramView.findViewById(2131362094));
        v = ((ImageView)paramView.findViewById(2131362095));
        w = ((ImageView)paramView.findViewById(2131362096));
        g = ((LinearLayout)paramView.findViewById(2131362089));
        f = paramView.findViewById(2131362088);
        x = ((ProgressBar)paramView.findViewById(2131362093));
      }
      paramView.setFocusable(false);
      b = paramView;
      c = paramView.findViewById(2131362086);
      paramView.setTag(localc);
    }
    for (View localView = paramView; localc == null; localView = paramView)
    {
      throw new NullPointerException("CHAT-LOG: Holder is null for position (" + paramInt + ") and ChatFeedItem (" + localChatFeedItem + ")");
      localc = (agr.c)paramView.getTag();
      if (j != null) {
        j.setVisibility(0);
      }
    }
    if (!localChatFeedItem.equals(a))
    {
      if (a != null)
      {
        j.removeCallbacksAndMessages(a.d());
        if (b != null)
        {
          paramView = (agv)b.remove(a.d());
          if (paramView != null) {
            paramView.c();
          }
        }
      }
      localc.a(0.0F);
      if (e != null) {
        e.setLinkTextColor(-16776961);
      }
      if (h != null) {
        h.setMovementMethod(null);
      }
      localc.a();
      if (z != null)
      {
        z.setVisibility(8);
        z.setTransform(null);
      }
      if (B != null) {
        B.setVisibility(8);
      }
      if (o != null) {
        o.setVisibility(8);
      }
      if (x != null) {
        x.setVisibility(8);
      }
      if (L != null)
      {
        L.setTranslationY(0.0F);
        L.setOnClickListener(null);
        L.setVisibility(8);
        L.setBackgroundColor(L.getResources().getColor(2131230790));
        M.setVisibility(8);
        N.setVisibility(8);
        P.setTranslationY(0.0F);
        P.setVisibility(8);
        O.setVisibility(8);
        O.setImageDrawable(null);
        awf.a(O, null);
        Q.setVisibility(8);
      }
    }
    for (final boolean bool = true;; bool = false)
    {
      a = localChatFeedItem;
      b.setPadding(0, 0, 0, 0);
      if ((localChatFeedItem instanceof akz)) {
        paramView = a(paramInt + 2);
      }
      for (;;)
      {
        if ((paramView instanceof ale)) {
          if (bool) {
            b.setBackgroundColor(d.getResources().getColor(2131230736));
          }
        }
        label1421:
        label1555:
        label2308:
        label2501:
        label2544:
        Object localObject;
        int n;
        switch (agr.4.a[(m - 1)])
        {
        default: 
        case 1: 
        case 2: 
        case 3: 
        case 5: 
        case 4: 
        case 6: 
        case 7: 
        case 8: 
          do
          {
            do
            {
              for (;;)
              {
                paramView = a(paramInt + 1);
                paramViewGroup = a(paramInt - 1);
                if ((paramViewGroup != null) && (!(paramViewGroup instanceof ala)) && (!(localChatFeedItem instanceof ala)))
                {
                  long l = paramViewGroup.U() / k;
                  if (localChatFeedItem.U() / k != l) {
                    break label4261;
                  }
                  j.setVisibility(4);
                }
                if ((!(localChatFeedItem instanceof akz)) && (paramView != null) && ((paramView instanceof ala))) {
                  b.setPadding(0, 0, 0, (int)awf.a(9.0F, d));
                }
                if (paramInt == getCount() - 1) {
                  b.setPadding(0, 0, 0, (int)awf.a(d.getResources().getDimension(2131296306), d));
                }
                i.d(localView);
                return localView;
                if (!(localChatFeedItem instanceof ala)) {
                  break label4279;
                }
                paramView = a(paramInt + 1);
                break;
                if (((paramView instanceof alj)) && (((alj)paramView).f()))
                {
                  if ((paramView instanceof alc))
                  {
                    b.setBackgroundColor(b.getResources().getColor(2131230790));
                    break label1421;
                  }
                  b.setBackgroundColor(d.getResources().getColor(2131230720));
                  if (f == null) {
                    break label1421;
                  }
                  f.setBackgroundColor(d.getResources().getColor(2131230720));
                  break label1421;
                }
                b.setBackgroundDrawable(null);
                if ((paramView instanceof alc))
                {
                  b.setBackgroundColor(b.getResources().getColor(2131230786));
                  break label1421;
                }
                if (f == null) {
                  break label1421;
                }
                f.setBackgroundColor(d.getResources().getColor(2131230735));
                break label1421;
                paramView = (ald)localChatFeedItem;
                a(paramView, e, bool);
                b(paramView, j);
                a(paramView, localc);
                b(paramView, localc);
                continue;
                if (bool)
                {
                  i.setVisibility(8);
                  K.setVisibility(0);
                  K.setText(localChatFeedItem.b());
                }
                j.setVisibility(8);
                continue;
                if (bool)
                {
                  K.setVisibility(8);
                  i.setVisibility(0);
                  i.setTypeface(null, 0);
                }
                j.setVisibility(8);
                paramView = localChatFeedItem.j();
                if ((a(paramInt + 1) instanceof ale))
                {
                  i.setText(d.getString(2131493002));
                  i.setTextColor(d.getResources().getColor(2131230737));
                }
                while ((a(paramInt - 1) instanceof akz))
                {
                  b.setPadding(0, 0, 0, 0);
                  break;
                  if ((TextUtils.isEmpty(paramView)) || (paramView.equals(akr.l())))
                  {
                    paramView = d.getString(2131493232).toUpperCase(Locale.getDefault());
                    i.setText(paramView);
                    i.setTextColor(d.getResources().getColor(2131230792));
                  }
                  else
                  {
                    paramView = auk.b(paramView, akp.g()).g().toUpperCase(Locale.getDefault());
                    i.setText(paramView);
                    i.setTextColor(d.getResources().getColor(2131230727));
                  }
                }
                paramView = (Snap)localChatFeedItem;
                if (bool)
                {
                  n.setVisibility(0);
                  k.setVisibility(0);
                }
                h.setText(paramView.b());
                a(paramView, h);
                b(paramView, j);
                a(paramView, localc);
                b(paramView, localc);
                if ((paramView.O()) || (((paramView instanceof aka)) && (((aka)paramView).S())))
                {
                  n.setVisibility(8);
                  o.setVisibility(0);
                  k.setText("");
                  if ((paramView instanceof aka))
                  {
                    paramViewGroup = (aka)paramView;
                    double d1 = paramViewGroup.H();
                    if ((paramViewGroup.E()) && (d1 > 0.0D)) {
                      k.setText(Integer.toString((int)paramViewGroup.H()));
                    }
                  }
                  paramViewGroup = paramView.k();
                  if ((!paramView.ao()) || (paramViewGroup == null) || (paramViewGroup.isEmpty())) {
                    break label2544;
                  }
                  l.setVisibility(0);
                  paramViewGroup = (String)paramViewGroup.get(0);
                  if (!TextUtils.equals(paramViewGroup, akr.l())) {
                    break label2501;
                  }
                  l.setText(d.getString(2131493013).toUpperCase(Locale.getDefault()));
                }
                while (paramView.P())
                {
                  n.setIconResources(2130837557, 2130837557);
                  break;
                  n.setDisplayedIcon(paramView);
                  n.setVisibility(0);
                  o.setVisibility(8);
                  break label2308;
                  paramViewGroup = auk.e(paramViewGroup, akp.g());
                  l.setText(d.getString(2131493006, new Object[] { paramViewGroup.toUpperCase(Locale.getDefault()) }));
                  continue;
                  l.setVisibility(8);
                }
                paramView = (alb)localChatFeedItem;
                if (bool)
                {
                  i.setVisibility(8);
                  j.setVisibility(0);
                  K.setVisibility(0);
                }
                K.setText(paramView.b());
                continue;
                paramViewGroup = (ale)localChatFeedItem;
                if (bool)
                {
                  n.setVisibility(8);
                  k.setVisibility(8);
                  paramView = paramViewGroup.b();
                  localObject = h;
                  if (TextUtils.isEmpty(paramView)) {}
                  for (paramView = "";; paramView = Html.fromHtml(paramView))
                  {
                    ((TextView)localObject).setText(paramView);
                    h.setMovementMethod(LinkMovementMethod.getInstance());
                    a(paramViewGroup, h);
                    b(paramViewGroup, j);
                    b(paramViewGroup, localc);
                    b.setBackgroundColor(d.getResources().getColor(2131230736));
                    break;
                  }
                  paramView = (ChatMedia)localChatFeedItem;
                  m = paramViewGroup.getMeasuredHeight();
                  a(paramView, e, bool);
                  b(paramView, j);
                  a(paramView, localc);
                  b(paramView, localc);
                  if (bool)
                  {
                    y.setVisibility(0);
                    p.setVisibility(8);
                    y.setAlpha(1.0F);
                    q.setVisibility(8);
                  }
                  y.setChatMedia(paramView);
                  n = d.getResources().getDimensionPixelSize(2131296296);
                  y.setMinimumHeight(m - n * 2);
                }
              }
              paramView = (alc)localChatFeedItem;
              m = paramViewGroup.getMeasuredHeight();
              a(paramView, e, bool);
              b(paramView, j);
              y.setVisibility(0);
              L.setVisibility(0);
              a(paramView, localc);
              b(paramView, localc);
              y.setChatMedia(paramView);
              n = d.getResources().getDimensionPixelSize(2131296296);
              y.setMinimumHeight(m - n * 2);
              z.setShouldUseAsyncMediaPlayer(false);
            } while (!bool);
            p.setVisibility(8);
            q.setVisibility(8);
            y.setAlpha(1.0F);
          } while (!paramView.X());
          if (paramView.D() == ChatMedia.MediaType.VIDEO_NO_SOUND) {}
          for (bool = true;; bool = false)
          {
            z.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
            {
              public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
              {
                paramAnonymousMediaPlayer.setLooping(true);
                if (bool) {
                  paramAnonymousMediaPlayer.setVolume(0.0F, 0.0F);
                }
              }
            });
            break;
          }
        }
        paramViewGroup = (CashFeedItem)localChatFeedItem;
        a(paramViewGroup, e, bool);
        b(paramViewGroup, r);
        b(paramViewGroup, s);
        b(paramViewGroup, j);
        a(paramViewGroup, localc);
        g.setEnabled(true);
        paramView = f;
        if ((paramViewGroup.P()) || (paramViewGroup.O()))
        {
          m = 8;
          label3154:
          paramView.setVisibility(m);
          u.setVisibility(0);
          if (!ayg.a(paramViewGroup)) {
            break label3397;
          }
          if (!paramViewGroup.O()) {
            break label3432;
          }
          x.setVisibility(0);
          paramView = null;
          label3194:
          g.setOnClickListener(paramView);
          if (paramView == null) {
            g.setClickable(false);
          }
          n = 0;
          m = 0;
          if (!ayg.a(paramViewGroup)) {
            break label3575;
          }
          if (!paramViewGroup.P()) {
            break label3483;
          }
          m = 2130837557;
        }
        for (;;)
        {
          label3241:
          if (m == 0)
          {
            u.setVisibility(8);
            localObject = r;
            if (!ayg.a(paramViewGroup)) {
              break label4015;
            }
            if (!paramViewGroup.p()) {
              break label3832;
            }
            paramView = auv.a(null, 2131492986, new Object[] { mCashTransaction.a() });
            label3299:
            ((TextView)localObject).setText(paramView);
            if (mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.CANCELED) {
              break label4243;
            }
            paramView = auv.a(null, 2131492990, new Object[0]);
            label3330:
            if (TextUtils.isEmpty(paramView)) {
              break label4248;
            }
            s.setText(paramView);
            s.setVisibility(0);
          }
          for (;;)
          {
            b(paramViewGroup, localc);
            if (!ayg.a(paramViewGroup)) {
              break;
            }
            v.setVisibility(8);
            w.setVisibility(8);
            break;
            m = 0;
            break label3154;
            label3397:
            switch (agr.4.b[mCashTransaction.mTransactionStatus.ordinal()])
            {
            }
            label3432:
            do
            {
              paramView = null;
              break;
              if (mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
              {
                x.setVisibility(0);
                paramView = null;
                break;
              }
            } while (!CashUtils.a(akr.ap()));
            paramView = new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AnalyticsEvents.o(paramViewGroupmCashTransaction.a());
                agr.a(agr.this).d();
                a.a(paramViewGroup, new yt.a()
                {
                  public final void a()
                  {
                    agr.a(agr.this).i();
                  }
                  
                  public final void b()
                  {
                    agr.a(agr.this).i();
                  }
                });
              }
            };
            break label3194;
            label3483:
            if (!paramViewGroup.q()) {
              break label4273;
            }
            switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
            {
            }
            for (;;)
            {
              break;
              m = 2130837563;
              break;
              m = 2130837684;
              break;
              m = 2130837685;
            }
            label3575:
            if (CashUtils.a(akr.ap()))
            {
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              default: 
                m = n;
              }
              for (;;)
              {
                break;
                m = n;
                if (mSendReceiveStatus != StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
                {
                  m = 2130837683;
                  break;
                  m = 2130837683;
                  break;
                  m = 2130837684;
                  break;
                  m = 2130837685;
                }
              }
            }
            m = 2130837684;
            break label3241;
            if ((!mHasSparkled) && (mCanShowSparkle)) {}
            for (n = 1;; n = 0)
            {
              if (n != 0)
              {
                mHasSparkled = true;
                paramView = v;
                localObject = w;
                paramView.setImageResource(2130837686);
                paramView.setVisibility(0);
                ((ImageView)localObject).setImageResource(2130837699);
                ((ImageView)localObject).setVisibility(0);
                ((AnimationDrawable)paramView.getDrawable()).setVisible(true, true);
                ((AnimationDrawable)((ImageView)localObject).getDrawable()).setVisible(true, true);
              }
              x.setVisibility(8);
              u.setVisibility(0);
              u.setImageResource(m);
              break;
            }
            label3832:
            if (paramViewGroup.P())
            {
              paramView = auv.a(null, 2131492992, new Object[] { mCashTransaction.a() });
              break label3299;
            }
            if (paramViewGroup.O())
            {
              paramView = auv.a(null, 2131493403, new Object[] { mCashTransaction.a() });
              break label3299;
            }
            if (paramViewGroup.q()) {
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              }
            }
            for (;;)
            {
              paramView = null;
              break;
              paramView = auv.a(null, 2131493408, new Object[] { mCashTransaction.a() });
              break;
              paramView = auv.a(null, 2131493407, new Object[] { mCashTransaction.a() });
              break;
              label4015:
              if (!CashUtils.a(akr.ap())) {
                break label4218;
              }
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              }
            }
            if (mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
            {
              paramView = auv.a(null, 2131492989, new Object[] { mCashTransaction.a() });
              break label3299;
            }
            paramView = auv.a(null, 2131492991, new Object[] { mCashTransaction.a() });
            break label3299;
            paramView = auv.a(null, 2131492988, new Object[] { mCashTransaction.a() });
            break label3299;
            paramView = auv.a(null, 2131492987, new Object[] { mCashTransaction.a() });
            break label3299;
            paramView = auv.a(null, 2131493354, new Object[] { mCashTransaction.a() });
            break label3299;
            label4218:
            paramView = auv.a(null, 2131492985, new Object[] { mCashTransaction.a() });
            break label3299;
            label4243:
            paramView = null;
            break label3330;
            label4248:
            s.setVisibility(8);
          }
          label4261:
          j.setVisibility(0);
          break label1555;
          label4273:
          m = 0;
        }
        label4279:
        paramView = localChatFeedItem;
      }
    }
  }
  
  public final int getViewTypeCount()
  {
    return 5;
  }
  
  public final void notifyDataSetChanged()
  {
    int m = 0;
    for (;;)
    {
      synchronized (g)
      {
        g.clear();
        g.addAll(f);
        g.size();
        Object localObject4 = g;
        Object localObject1;
        if (localObject4 == null)
        {
          break label225;
          if (m < 0) {
            break label239;
          }
          localObject1 = (ChatFeedItem)((List)localObject4).get(m);
          if (!(localObject1 instanceof akw)) {
            break label232;
          }
          if (localObject1 == null)
          {
            localObject1 = c;
            c = new ahb.a((ahb)localObject1, 0L, 0L);
            b = 0L;
            e.clear();
            super.notifyDataSetChanged();
          }
        }
        else
        {
          m = ((List)localObject4).size();
          break label225;
        }
        localObject4 = c;
        long l1 = ((ChatFeedItem)localObject1).U();
        if (!a) {
          continue;
        }
        long l2 = System.currentTimeMillis();
        if (l1 > b)
        {
          b = l1;
          e.add(new ahb.a((ahb)localObject4, l1, l2));
        }
        ((ahb)localObject4).a(l2);
      }
      label225:
      m -= 1;
      continue;
      label232:
      m -= 1;
      continue;
      label239:
      Object localObject3 = null;
    }
  }
  
  public static abstract interface a
  {
    public abstract void d();
    
    public abstract void i();
  }
  
  static enum b
  {
    public static int[] a()
    {
      return (int[])j.clone();
    }
  }
  
  public static final class c
    implements LockingAboveTheFoldListView.b
  {
    public FitWidthImageView A;
    public View B;
    public ViewGroup C;
    public ProgressBar D;
    public ViewGroup E;
    public int F;
    public int G;
    public int H;
    public int I;
    public boolean J;
    TextView K;
    public View L;
    public TextView M;
    public TextView N;
    public ImageView O;
    public ProgressBar P;
    public ImageView Q;
    private final Context R;
    public ChatFeedItem a;
    View b;
    public View c;
    public ViewGroup d;
    FixTouchConsumeTextView e;
    View f;
    LinearLayout g;
    TextView h;
    TextView i;
    TextView j;
    TextView k;
    TextView l;
    View m;
    ChatFragmentSnapIconView n;
    ProgressBar o;
    View p;
    TextView q;
    TextView r;
    TextView s;
    ImageView t;
    ImageView u;
    ImageView v;
    ImageView w;
    ProgressBar x;
    public ImageResourceView y;
    public TextureVideoView z;
    
    public c(Context paramContext)
    {
      R = paramContext;
    }
    
    public final void a()
    {
      if (C != null)
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)C.getLayoutParams();
        if ((width != -1) || (height != -2))
        {
          width = -1;
          height = -2;
          leftMargin = 0;
          C.setLayoutParams(localLayoutParams);
        }
        if (C.getTranslationY() != 0.0F) {
          C.setTranslationY(0.0F);
        }
        F = 0;
        G = 0;
        H = 0;
        I = 0;
        J = false;
      }
      if (A != null) {
        A.setVisibility(8);
      }
      if (D != null) {
        D.setVisibility(8);
      }
      if (E != null)
      {
        E.setOnClickListener(null);
        E.setVisibility(8);
      }
    }
    
    public final void a(float paramFloat)
    {
      c.setTranslationX(paramFloat);
      if (j != null)
      {
        if ((paramFloat != 0.0F) && (j.getVisibility() == 0) && (R != null) && (a != null)) {
          j.setText(atz.a(R, a.U()));
        }
        j.setTranslationX(paramFloat);
      }
    }
    
    public final boolean b()
    {
      return (a != null) && (a.ak());
    }
    
    public final aqu c()
    {
      if ((C != null) && (y != null)) {
        return new aqt(C, y);
      }
      return null;
    }
    
    public final int[] d()
    {
      int[] arrayOfInt = new int[2];
      if (y != null) {
        y.getLocationOnScreen(arrayOfInt);
      }
      return arrayOfInt;
    }
    
    public final int e()
    {
      if (y != null) {
        return y.getHeight();
      }
      return 0;
    }
  }
}

/* Location:
 * Qualified Name:     agr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
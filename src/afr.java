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
import com.snapchat.android.Timber;
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

public final class afr
  extends BaseAdapter
{
  @Inject
  protected xx a;
  public Map<String, afv> b;
  public final agb c = new agb();
  private final Context d;
  private final LayoutInflater e;
  private final List<ChatFeedItem> f;
  private final List<ChatFeedItem> g;
  private final afr.a h;
  private final aqi i;
  private final Handler j;
  
  public afr(@cgb Context paramContext, @cgb List<ChatFeedItem> paramList, @cgb afr.a parama, @cgb aqi paramaqi)
  {
    e = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramContext;
    f = paramList;
    g = Collections.synchronizedList(new ArrayList());
    g.addAll(f);
    h = parama;
    i = paramaqi;
    j = new Handler(Looper.getMainLooper());
    SnapchatApplication.b().c().a(this);
  }
  
  @avl
  private static int a(ChatFeedItem paramChatFeedItem)
  {
    if ((paramChatFeedItem instanceof aki)) {
      return afr.b.a;
    }
    if ((paramChatFeedItem instanceof Snap)) {
      return afr.b.d;
    }
    if ((paramChatFeedItem instanceof ake)) {
      return afr.b.b;
    }
    if ((paramChatFeedItem instanceof akf)) {
      return afr.b.c;
    }
    if ((paramChatFeedItem instanceof akh)) {
      return afr.b.i;
    }
    if ((paramChatFeedItem instanceof ChatMedia)) {
      return afr.b.e;
    }
    if ((paramChatFeedItem instanceof akg)) {
      return afr.b.f;
    }
    if ((paramChatFeedItem instanceof CashFeedItem)) {
      return afr.b.h;
    }
    return afr.b.g;
  }
  
  @avl
  private void a(ChatFeedItem paramChatFeedItem, afr.c paramc)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if ((paramChatFeedItem instanceof akj))
    {
      m.setBackgroundColor(d.getResources().getColor(2131230738));
      localLayoutParams = (RelativeLayout.LayoutParams)m.getLayoutParams();
      if ((!(paramChatFeedItem instanceof ako)) || (!((ako)paramChatFeedItem).g())) {
        break label184;
      }
      width = d.getResources().getDimensionPixelSize(2131296286);
    }
    for (rightMargin = 0;; rightMargin = d.getResources().getDimensionPixelOffset(2131296292))
    {
      m.setLayoutParams(localLayoutParams);
      return;
      if (axi.a(paramChatFeedItem))
      {
        if ((!(paramChatFeedItem instanceof akg)) && ((paramChatFeedItem.N()) || (paramChatFeedItem.O())))
        {
          m.setBackgroundColor(d.getResources().getColor(2131230734));
          break;
        }
        m.setBackgroundColor(d.getResources().getColor(2131230791));
        break;
      }
      m.setBackgroundColor(d.getResources().getColor(2131230727));
      break;
      label184:
      width = d.getResources().getDimensionPixelSize(2131296293);
    }
  }
  
  @avl
  private void a(ChatFeedItem paramChatFeedItem, TextView paramTextView)
  {
    b(paramChatFeedItem, paramTextView);
    if (((paramChatFeedItem instanceof StatefulChatFeedItem)) && ((paramChatFeedItem.N()) || (paramChatFeedItem.O())))
    {
      paramTextView.setTextColor(d.getResources().getColor(2131230734));
      return;
    }
    paramTextView.setTextColor(-16777216);
  }
  
  @avl
  private void a(final ChatFeedItem paramChatFeedItem, final FixTouchConsumeTextView paramFixTouchConsumeTextView, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramChatFeedItem.al()))
    {
      paramFixTouchConsumeTextView.setVisibility(8);
      return;
    }
    if (paramBoolean)
    {
      paramFixTouchConsumeTextView.setText(paramChatFeedItem.al());
      paramFixTouchConsumeTextView.setVisibility(0);
      if ((!(paramChatFeedItem instanceof ako)) || (!asx.b((ako)paramChatFeedItem, paramFixTouchConsumeTextView))) {
        break label136;
      }
      paramFixTouchConsumeTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }
    for (;;)
    {
      a(paramChatFeedItem, paramFixTouchConsumeTextView);
      if (((paramChatFeedItem instanceof ako)) && (((ako)paramChatFeedItem).f())) {
        baj.a(paramFixTouchConsumeTextView, "sans-serif-light");
      }
      if ((!axj.a()) || (!axj.a(paramFixTouchConsumeTextView.getText().toString(), true))) {
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
          if (((paramChatFeedItem instanceof ako)) && (asx.a((ako)paramChatFeedItem, paramFixTouchConsumeTextView))) {
            paramFixTouchConsumeTextView.setMovementMethod(LinkMovementMethod.getInstance());
          }
        }
      }, paramChatFeedItem.d(), SystemClock.uptimeMillis());
    }
    paramFixTouchConsumeTextView.setTextSize(0, d.getResources().getDimension(2131296284));
  }
  
  @avl
  private static void b(ChatFeedItem paramChatFeedItem, afr.c paramc)
  {
    if ((paramChatFeedItem.O()) && (paramChatFeedItem.Q()))
    {
      t.setVisibility(0);
      return;
    }
    t.setVisibility(8);
  }
  
  @avl
  private void b(ChatFeedItem paramChatFeedItem, TextView paramTextView)
  {
    if (((paramChatFeedItem instanceof ako)) && (((ako)paramChatFeedItem).f()))
    {
      paramTextView.setTextAppearance(d, 2131558449);
      return;
    }
    paramTextView.setTextAppearance(d, 2131558450);
  }
  
  @avl
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
    switch (afr.4.a[(paramInt - 1)])
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
  
  @avl
  public final View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    ChatFeedItem localChatFeedItem = a(paramInt);
    int k = a(localChatFeedItem);
    afr.c localc;
    if (paramView == null)
    {
      localc = new afr.c();
      switch (afr.4.a[(k - 1)])
      {
      }
      while (paramView == null)
      {
        throw new NullPointerException();
        paramView = e.inflate(2130968627, paramViewGroup, false);
        e = ((FixTouchConsumeTextView)paramView.findViewById(2131362091));
        t = ((ImageView)paramView.findViewById(2131362087));
        m = paramView.findViewById(2131362090);
        j = ((TextView)paramView.findViewById(2131362099));
        continue;
        paramView = e.inflate(2130968624, paramViewGroup, false);
        i = ((TextView)paramView.findViewById(2131362101));
        K = ((TextView)paramView.findViewById(2131362100));
        j = ((TextView)paramView.findViewById(2131362099));
        continue;
        paramView = e.inflate(2130968626, paramViewGroup, false);
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
        paramView = e.inflate(2130968625, paramViewGroup, false);
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
        paramView = e.inflate(2130968623, paramViewGroup, false);
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
      paramView = "CHAT-LOG: Holder is null for position (" + paramInt + ") and ChatFeedItem (" + localChatFeedItem + ")";
      Timber.g("ChatConversationAdapter", paramView, new Object[0]);
      throw new NullPointerException(paramView);
      localc = (afr.c)paramView.getTag();
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
          paramView = (afv)b.remove(a.d());
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
        L.setBackgroundColor(L.getResources().getColor(2131230789));
        M.setVisibility(8);
        N.setVisibility(8);
        P.setTranslationY(0.0F);
        P.setVisibility(8);
        O.setVisibility(8);
        O.setImageDrawable(null);
        avh.a(O, null);
        Q.setVisibility(8);
      }
    }
    for (final boolean bool = true;; bool = false)
    {
      a = localChatFeedItem;
      b.setPadding(0, 0, 0, 0);
      if ((localChatFeedItem instanceof ake)) {
        paramView = a(paramInt + 2);
      }
      for (;;)
      {
        if ((paramView instanceof akj)) {
          if (bool) {
            b.setBackgroundColor(d.getResources().getColor(2131230736));
          }
        }
        label1430:
        label1565:
        label2356:
        label2549:
        label2592:
        Object localObject;
        int m;
        switch (afr.4.a[(k - 1)])
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
                if ((paramViewGroup != null) && (!(paramViewGroup instanceof akf)) && (!(localChatFeedItem instanceof akf)))
                {
                  if (!ata.a(d, paramViewGroup.W()).equals(ata.a(d, localChatFeedItem.W()))) {
                    break label4405;
                  }
                  j.setVisibility(4);
                }
                if ((!(localChatFeedItem instanceof ake)) && (paramView != null) && ((paramView instanceof akf))) {
                  b.setPadding(0, 0, 0, (int)avh.a(9.0F, d));
                }
                if (paramInt == getCount() - 1) {
                  b.setPadding(0, 0, 0, (int)avh.a(d.getResources().getDimension(2131296307), d));
                }
                i.d(localView);
                return localView;
                if (!(localChatFeedItem instanceof akf)) {
                  break label4423;
                }
                paramView = a(paramInt + 1);
                break;
                if (((paramView instanceof ako)) && (((ako)paramView).f()))
                {
                  if ((paramView instanceof akh))
                  {
                    b.setBackgroundColor(b.getResources().getColor(2131230789));
                    break label1430;
                  }
                  b.setBackgroundColor(d.getResources().getColor(2131230720));
                  if (f == null) {
                    break label1430;
                  }
                  f.setBackgroundColor(d.getResources().getColor(2131230720));
                  break label1430;
                }
                b.setBackgroundDrawable(null);
                if ((paramView instanceof akh))
                {
                  b.setBackgroundColor(b.getResources().getColor(2131230785));
                  break label1430;
                }
                if (f == null) {
                  break label1430;
                }
                f.setBackgroundColor(d.getResources().getColor(2131230735));
                break label1430;
                paramView = (aki)localChatFeedItem;
                a(paramView, e, bool);
                j.setText(ata.a(d, paramView.W()));
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
                if ((a(paramInt + 1) instanceof akj))
                {
                  i.setText(d.getString(2131493002));
                  i.setTextColor(d.getResources().getColor(2131230737));
                }
                while ((a(paramInt - 1) instanceof ake))
                {
                  b.setPadding(0, 0, 0, 0);
                  break;
                  if ((TextUtils.isEmpty(paramView)) || (paramView.equals(ajx.l())))
                  {
                    paramView = d.getString(2131493232).toUpperCase(Locale.getDefault());
                    i.setText(paramView);
                    i.setTextColor(d.getResources().getColor(2131230791));
                  }
                  else
                  {
                    paramView = atm.b(paramView, ajv.g()).f().toUpperCase(Locale.getDefault());
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
                j.setText(ata.a(d, paramView.W()));
                b(paramView, j);
                a(paramView, localc);
                b(paramView, localc);
                if ((paramView.N()) || (((paramView instanceof aje)) && (((aje)paramView).R())))
                {
                  n.setVisibility(8);
                  o.setVisibility(0);
                  k.setText("");
                  if ((paramView instanceof aje))
                  {
                    paramViewGroup = (aje)paramView;
                    double d1 = paramViewGroup.G();
                    if ((paramViewGroup.D()) && (d1 > 0.0D)) {
                      k.setText(Integer.toString((int)paramViewGroup.G()));
                    }
                  }
                  paramViewGroup = paramView.k();
                  if ((!paramView.aq()) || (paramViewGroup == null) || (paramViewGroup.isEmpty())) {
                    break label2592;
                  }
                  l.setVisibility(0);
                  paramViewGroup = (String)paramViewGroup.get(0);
                  if (!TextUtils.equals(paramViewGroup, ajx.l())) {
                    break label2549;
                  }
                  l.setText(d.getString(2131493013).toUpperCase(Locale.getDefault()));
                }
                while (paramView.O())
                {
                  n.setIconResources(2130837557, 2130837557);
                  break;
                  n.setDisplayedIcon(paramView);
                  n.setVisibility(0);
                  o.setVisibility(8);
                  break label2356;
                  paramViewGroup = atm.e(paramViewGroup, ajv.g());
                  l.setText(d.getString(2131493006, new Object[] { paramViewGroup.toUpperCase(Locale.getDefault()) }));
                  continue;
                  l.setVisibility(8);
                }
                paramView = (akg)localChatFeedItem;
                if (bool)
                {
                  i.setVisibility(8);
                  j.setVisibility(0);
                  K.setVisibility(0);
                }
                K.setText(paramView.b());
                j.setText(ata.a(d, paramView.W()));
                continue;
                paramViewGroup = (akj)localChatFeedItem;
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
                    j.setText(ata.a(d, paramViewGroup.W()));
                    b(paramViewGroup, j);
                    b(paramViewGroup, localc);
                    b.setBackgroundColor(d.getResources().getColor(2131230736));
                    break;
                  }
                  paramView = (ChatMedia)localChatFeedItem;
                  k = paramViewGroup.getMeasuredHeight();
                  a(paramView, e, bool);
                  j.setText(ata.a(d, paramView.W()));
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
                  m = d.getResources().getDimensionPixelSize(2131296296);
                  y.setMinimumHeight(k - m * 2);
                }
              }
              paramView = (akh)localChatFeedItem;
              k = paramViewGroup.getMeasuredHeight();
              a(paramView, e, bool);
              j.setText(ata.a(d, paramView.W()));
              b(paramView, j);
              y.setVisibility(0);
              L.setVisibility(0);
              a(paramView, localc);
              b(paramView, localc);
              y.setChatMedia(paramView);
              m = d.getResources().getDimensionPixelSize(2131296296);
              y.setMinimumHeight(k - m * 2);
              z.setShouldUseAsyncMediaPlayer(false);
            } while (!bool);
            p.setVisibility(8);
            q.setVisibility(8);
            y.setAlpha(1.0F);
          } while (!paramView.V());
          if (paramView.C() == ChatMedia.MediaType.VIDEO_NO_SOUND) {}
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
        j.setText(ata.a(d, paramViewGroup.W()));
        b(paramViewGroup, j);
        a(paramViewGroup, localc);
        g.setEnabled(true);
        paramView = f;
        if ((paramViewGroup.O()) || (paramViewGroup.N()))
        {
          k = 8;
          label3297:
          paramView.setVisibility(k);
          u.setVisibility(0);
          if (!axi.a(paramViewGroup)) {
            break label3540;
          }
          if (!paramViewGroup.N()) {
            break label3576;
          }
          x.setVisibility(0);
          paramView = null;
          label3337:
          g.setOnClickListener(paramView);
          if (paramView == null) {
            g.setClickable(false);
          }
          m = 0;
          k = 0;
          if (!axi.a(paramViewGroup)) {
            break label3719;
          }
          if (!paramViewGroup.O()) {
            break label3627;
          }
          k = 2130837557;
        }
        for (;;)
        {
          label3384:
          if (k == 0)
          {
            u.setVisibility(8);
            localObject = r;
            if (!axi.a(paramViewGroup)) {
              break label4159;
            }
            if (!paramViewGroup.q()) {
              break label3976;
            }
            paramView = atx.a(null, 2131492986, new Object[] { mCashTransaction.a() });
            label3442:
            ((TextView)localObject).setText(paramView);
            if (mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.CANCELED) {
              break label4387;
            }
            paramView = atx.a(null, 2131492990, new Object[0]);
            label3473:
            if (TextUtils.isEmpty(paramView)) {
              break label4392;
            }
            s.setText(paramView);
            s.setVisibility(0);
          }
          for (;;)
          {
            b(paramViewGroup, localc);
            if (!axi.a(paramViewGroup)) {
              break;
            }
            v.setVisibility(8);
            w.setVisibility(8);
            break;
            k = 0;
            break label3297;
            label3540:
            switch (afr.4.b[mCashTransaction.mTransactionStatus.ordinal()])
            {
            }
            label3576:
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
            } while (!CashUtils.a(ajx.aq()));
            paramView = new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AnalyticsEvents.p(paramViewGroupmCashTransaction.a());
                afr.a(afr.this).d();
                a.a(paramViewGroup, new xx.a()
                {
                  public final void a()
                  {
                    afr.a(afr.this).i();
                  }
                  
                  public final void b()
                  {
                    afr.a(afr.this).i();
                  }
                });
              }
            };
            break label3337;
            label3627:
            if (!paramViewGroup.Z()) {
              break label4417;
            }
            switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
            {
            }
            for (;;)
            {
              break;
              k = 2130837563;
              break;
              k = 2130837684;
              break;
              k = 2130837685;
            }
            label3719:
            if (CashUtils.a(ajx.aq()))
            {
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              default: 
                k = m;
              }
              for (;;)
              {
                break;
                k = m;
                if (mSendReceiveStatus != StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
                {
                  k = 2130837683;
                  break;
                  k = 2130837683;
                  break;
                  k = 2130837684;
                  break;
                  k = 2130837685;
                }
              }
            }
            k = 2130837684;
            break label3384;
            if ((!mHasSparkled) && (mCanShowSparkle)) {}
            for (m = 1;; m = 0)
            {
              if (m != 0)
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
              u.setImageResource(k);
              break;
            }
            label3976:
            if (paramViewGroup.O())
            {
              paramView = atx.a(null, 2131492992, new Object[] { mCashTransaction.a() });
              break label3442;
            }
            if (paramViewGroup.N())
            {
              paramView = atx.a(null, 2131493403, new Object[] { mCashTransaction.a() });
              break label3442;
            }
            if (paramViewGroup.Z()) {
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              }
            }
            for (;;)
            {
              paramView = null;
              break;
              paramView = atx.a(null, 2131493408, new Object[] { mCashTransaction.a() });
              break;
              paramView = atx.a(null, 2131493407, new Object[] { mCashTransaction.a() });
              break;
              label4159:
              if (!CashUtils.a(ajx.aq())) {
                break label4362;
              }
              switch (com.snapchat.android.model.chat.CashFeedItem.3.$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[mCashTransaction.mTransactionStatus.ordinal()])
              {
              }
            }
            if (mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
            {
              paramView = atx.a(null, 2131492989, new Object[] { mCashTransaction.a() });
              break label3442;
            }
            paramView = atx.a(null, 2131492991, new Object[] { mCashTransaction.a() });
            break label3442;
            paramView = atx.a(null, 2131492988, new Object[] { mCashTransaction.a() });
            break label3442;
            paramView = atx.a(null, 2131492987, new Object[] { mCashTransaction.a() });
            break label3442;
            paramView = atx.a(null, 2131493354, new Object[] { mCashTransaction.a() });
            break label3442;
            label4362:
            paramView = atx.a(null, 2131492985, new Object[] { mCashTransaction.a() });
            break label3442;
            label4387:
            paramView = null;
            break label3473;
            label4392:
            s.setVisibility(8);
          }
          label4405:
          j.setVisibility(0);
          break label1565;
          label4417:
          k = 0;
        }
        label4423:
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
    int k = 0;
    for (;;)
    {
      synchronized (g)
      {
        g.clear();
        g.addAll(f);
        Timber.g("ChatConversationAdapter", "CHAT-LOG: ChatConversationAdapter notifyDataSetChanged %d items", new Object[] { Integer.valueOf(g.size()) });
        Object localObject4 = g;
        Object localObject1;
        if (localObject4 == null)
        {
          break label243;
          if (k < 0) {
            break label257;
          }
          localObject1 = (ChatFeedItem)((List)localObject4).get(k);
          if (!(localObject1 instanceof akb)) {
            break label250;
          }
          if (localObject1 == null)
          {
            localObject1 = c;
            c = new agb.a((agb)localObject1, 0L, 0L);
            b = 0L;
            e.clear();
            super.notifyDataSetChanged();
          }
        }
        else
        {
          k = ((List)localObject4).size();
          break label243;
        }
        localObject4 = c;
        long l1 = ((ChatFeedItem)localObject1).W();
        if (!a) {
          continue;
        }
        long l2 = System.currentTimeMillis();
        if (l1 > b)
        {
          b = l1;
          e.add(new agb.a((agb)localObject4, l1, l2));
        }
        ((agb)localObject4).a(l2);
      }
      label243:
      k -= 1;
      continue;
      label250:
      k -= 1;
      continue;
      label257:
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
      if (j != null) {
        j.setTranslationX(paramFloat);
      }
    }
    
    public final boolean b()
    {
      return (a != null) && (a.am());
    }
    
    public final apv c()
    {
      if ((C != null) && (y != null)) {
        return new apu(C, y);
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
 * Qualified Name:     afr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
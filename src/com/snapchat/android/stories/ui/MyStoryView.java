package com.snapchat.android.stories.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import api;
import api.a;
import apt;
import apu;
import ara;
import avb;
import bbo;
import bki;
import bkk;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;
import java.util.List;
import javax.validation.constraints.NotNull;

public class MyStoryView
  extends FrameLayout
{
  public static final String a = c + "_NOTIFICATION";
  private static final String c = MyStoryView.class.getSimpleName();
  public ImageView b;
  private final Context d;
  private final StorySnapLogbook e;
  private final api f;
  private final LayoutInflater g;
  private final Bus h;
  private a i;
  private boolean j = false;
  private apt k;
  private bki l;
  private List<bkk> m;
  private ListView n;
  private View o;
  private final View.OnClickListener p = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      Object localObject = SnapchatApplication.b().getResources();
      paramAnonymousView = ((Resources)localObject).getString(2131493106);
      String str = ((Resources)localObject).getString(2131493110);
      localObject = ((Resources)localObject).getString(2131492952);
      new ara(MyStoryView.a(MyStoryView.this), paramAnonymousView, str, (String)localObject)
      {
        protected final void a()
        {
          MyStoryView.e(MyStoryView.this).a(MyStoryView.b(MyStoryView.this), new api.a()
          {
            public final void a()
            {
              String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493105);
              MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, -16777216));
            }
            
            public final void b() {}
            
            public final void c()
            {
              String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493109);
              MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, -16777216));
              MyStoryView.d(MyStoryView.this).c();
            }
            
            public final void d()
            {
              String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493103);
              MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, AndroidNotificationManager.a));
            }
          });
        }
        
        protected final void b() {}
      }.show();
    }
  };
  private final View.OnClickListener q = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      MyStoryView.e(MyStoryView.this).b(MyStoryView.b(MyStoryView.this), new api.a()
      {
        public final void a()
        {
          String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493370);
          MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, -16777216));
        }
        
        public final void b() {}
        
        public final void c()
        {
          String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493376);
          MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, -16777216));
        }
        
        public final void d()
        {
          String str = MyStoryView.a(MyStoryView.this).getResources().getString(2131493369);
          MyStoryView.c(MyStoryView.this).a(MyStoryView.a(str, AndroidNotificationManager.a));
        }
      });
    }
  };
  private View.OnClickListener r = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      MyStoryView.d(MyStoryView.this).b();
    }
  };
  
  public MyStoryView(@NotNull final Context paramContext, @NotNull final StorySnapLogbook paramStorySnapLogbook, @NotNull final a parama)
  {
    this(paramContext, paramStorySnapLogbook, bbo.a(), new api(paramContext), parama, (LayoutInflater)paramContext.getSystemService("layout_inflater"));
    paramContext = g.inflate(2130968701, this);
    paramStorySnapLogbook = new FrameLayout.LayoutParams(-1, -1);
    gravity = 17;
    setLayoutParams(paramStorySnapLogbook);
    paramStorySnapLogbook = (ImageView)paramContext.findViewById(2131362446);
    View localView1 = paramContext.findViewById(2131362450);
    View localView2 = paramContext.findViewById(2131362449);
    TextView localTextView = (TextView)paramContext.findViewById(2131362444);
    parama = (TextView)paramContext.findViewById(2131362447);
    RelativeLayout localRelativeLayout1 = (RelativeLayout)paramContext.findViewById(2131362445);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)paramContext.findViewById(2131362442);
    b = ((ImageView)paramContext.findViewById(2131362448));
    k = new apt(d);
    n = ((ListView)paramContext.findViewById(2131362451));
    n.setAdapter(k);
    o = g.inflate(2130968766, null, false);
    b.setOnClickListener(r);
    localView1.setOnClickListener(p);
    localView2.setOnClickListener(q);
    l = e.mStorySnapExtra;
    m = e.mStorySnapNotes;
    if (l == null)
    {
      localTextView.setText("0");
      parama.setText("0");
    }
    do
    {
      return;
      localTextView.setText(Integer.toString(avb.a(l.a())));
      parama.setText(Integer.toString(avb.a(l.b())));
    } while (m == null);
    paramContext = new apu(l, m);
    a(paramContext, paramStorySnapLogbook, parama);
    localRelativeLayout1.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        MyStoryView.d(MyStoryView.this).a();
        paramAnonymousView = MyStoryView.this;
        if (!MyStoryView.f(MyStoryView.this)) {}
        for (boolean bool = true;; bool = false)
        {
          MyStoryView.a(paramAnonymousView, bool);
          MyStoryView.a(MyStoryView.this, paramContext, paramStorySnapLogbook, parama);
          return;
        }
      }
    });
    localRelativeLayout2.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        MyStoryView.d(MyStoryView.this).a();
        if (MyStoryView.f(MyStoryView.this))
        {
          MyStoryView.a(MyStoryView.this, false);
          MyStoryView.a(MyStoryView.this, paramContext, paramStorySnapLogbook, parama);
        }
      }
    });
  }
  
  private MyStoryView(Context paramContext, StorySnapLogbook paramStorySnapLogbook, Bus paramBus, api paramapi, a parama, LayoutInflater paramLayoutInflater)
  {
    super(paramContext);
    d = paramContext;
    h = paramBus;
    e = paramStorySnapLogbook;
    i = parama;
    f = paramapi;
    g = paramLayoutInflater;
  }
  
  private void a(apu paramapu, ImageView paramImageView, TextView paramTextView)
  {
    n.removeFooterView(o);
    k.clear();
    b = j;
    k.addAll(paramapu.a());
    Integer localInteger;
    if (b)
    {
      localInteger = a.b();
      i1 = avb.a(localInteger) - paramapu.a().size();
      if (i1 > 0)
      {
        ((TextView)o.findViewById(2131362786)).setText(String.format(d.getString(2131493242), new Object[] { Integer.valueOf(i1) }));
        n.addFooterView(o, null, false);
      }
      k.notifyDataSetChanged();
      n.invalidate();
      paramImageView.setSelected(j);
      paramapu = getResources();
      if (!j) {
        break label192;
      }
    }
    label192:
    for (int i1 = 2131230766;; i1 = 2131230812)
    {
      paramTextView.setTextColor(paramapu.getColor(i1));
      return;
      localInteger = a.a();
      break;
    }
  }
  
  public int getViewersInfoHeight()
  {
    return findViewById(2131362441).getMeasuredHeight();
  }
  
  public int getVisibleViewersListHeight()
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < k.getCount())
    {
      View localView = k.getView(i1, null, n);
      localView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
      i2 += localView.getMeasuredHeight();
      i1 += 1;
    }
    return i2;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.MyStoryView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
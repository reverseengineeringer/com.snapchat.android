package com.snapchat.android.stories.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aom;
import aom.a;
import aou;
import aov;
import aqb;
import aud;
import ban;
import bjh;
import bjj;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;
import java.util.List;
import javax.validation.constraints.NotNull;

public class MyStoryView
  extends FrameLayout
{
  public static final String a = b + "_NOTIFICATION";
  private static final String b = MyStoryView.class.getSimpleName();
  private final Context c;
  private final StorySnapLogbook d;
  private final aom e;
  private final LayoutInflater f;
  private final a g;
  private final Bus h;
  private boolean i = false;
  private aou j;
  private bjh k;
  private List<bjj> l;
  private ListView m;
  private View n;
  private final View.OnClickListener o = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      Object localObject = SnapchatApplication.b().getResources();
      paramAnonymousView = ((Resources)localObject).getString(2131493106);
      String str = ((Resources)localObject).getString(2131493110);
      localObject = ((Resources)localObject).getString(2131492952);
      new aqb(MyStoryView.a(MyStoryView.this), paramAnonymousView, str, (String)localObject)
      {
        protected final void a()
        {
          MyStoryView.e(MyStoryView.this).a(MyStoryView.b(MyStoryView.this), new aom.a()
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
              MyStoryView.d(MyStoryView.this).a();
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
  private final View.OnClickListener p = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      MyStoryView.e(MyStoryView.this).b(MyStoryView.b(MyStoryView.this), new aom.a()
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
  private View.OnClickListener q = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      MyStoryView.d(MyStoryView.this).b();
    }
  };
  
  public MyStoryView(@NotNull final Context paramContext, @NotNull final a parama, @NotNull final StorySnapLogbook paramStorySnapLogbook)
  {
    this(paramContext, parama, paramStorySnapLogbook, ban.a(), new aom(paramContext), (LayoutInflater)paramContext.getSystemService("layout_inflater"));
    paramContext = f.inflate(2130968700, this);
    parama = new FrameLayout.LayoutParams(-1, -1);
    gravity = 17;
    setLayoutParams(parama);
    ImageView localImageView = (ImageView)paramContext.findViewById(2131362448);
    parama = (ImageView)paramContext.findViewById(2131362446);
    View localView1 = paramContext.findViewById(2131362450);
    View localView2 = paramContext.findViewById(2131362449);
    TextView localTextView = (TextView)paramContext.findViewById(2131362444);
    paramStorySnapLogbook = (TextView)paramContext.findViewById(2131362447);
    RelativeLayout localRelativeLayout1 = (RelativeLayout)paramContext.findViewById(2131362445);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)paramContext.findViewById(2131362442);
    j = new aou(c);
    m = ((ListView)paramContext.findViewById(2131362451));
    m.setAdapter(j);
    n = f.inflate(2130968764, null, false);
    localImageView.setOnClickListener(q);
    localView1.setOnClickListener(o);
    localView2.setOnClickListener(p);
    k = d.mStorySnapExtra;
    l = d.mStorySnapNotes;
    if (k == null)
    {
      localTextView.setText("0");
      paramStorySnapLogbook.setText("0");
    }
    do
    {
      return;
      localTextView.setText(Integer.toString(aud.a(k.a())));
      paramStorySnapLogbook.setText(Integer.toString(aud.a(k.b())));
    } while (l == null);
    paramContext = new aov(k, l);
    a(paramContext, parama, paramStorySnapLogbook);
    localRelativeLayout1.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = MyStoryView.this;
        if (!MyStoryView.f(MyStoryView.this)) {}
        for (boolean bool = true;; bool = false)
        {
          MyStoryView.a(paramAnonymousView, bool);
          MyStoryView.a(MyStoryView.this, paramContext, parama, paramStorySnapLogbook);
          return;
        }
      }
    });
    localRelativeLayout2.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (MyStoryView.f(MyStoryView.this))
        {
          MyStoryView.a(MyStoryView.this, false);
          MyStoryView.a(MyStoryView.this, paramContext, parama, paramStorySnapLogbook);
        }
      }
    });
  }
  
  private MyStoryView(Context paramContext, a parama, StorySnapLogbook paramStorySnapLogbook, Bus paramBus, aom paramaom, LayoutInflater paramLayoutInflater)
  {
    super(paramContext);
    c = paramContext;
    g = parama;
    h = paramBus;
    d = paramStorySnapLogbook;
    e = paramaom;
    f = paramLayoutInflater;
  }
  
  private void a(aov paramaov, ImageView paramImageView, TextView paramTextView)
  {
    m.removeFooterView(n);
    j.clear();
    b = i;
    j.addAll(paramaov.a());
    Integer localInteger;
    if (b)
    {
      localInteger = a.b();
      i1 = aud.a(localInteger) - paramaov.a().size();
      if (i1 > 0)
      {
        ((TextView)n.findViewById(2131362793)).setText(String.format(c.getString(2131493242), new Object[] { Integer.valueOf(i1) }));
        m.addFooterView(n, null, false);
      }
      j.notifyDataSetChanged();
      m.invalidate();
      paramImageView.setSelected(i);
      paramaov = getResources();
      if (!i) {
        break label192;
      }
    }
    label192:
    for (int i1 = 2131230765;; i1 = 2131230810)
    {
      paramTextView.setTextColor(paramaov.getColor(i1));
      return;
      localInteger = a.a();
      break;
    }
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    return m.canScrollVertically(paramInt);
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.MyStoryView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
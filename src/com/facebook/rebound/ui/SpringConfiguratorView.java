package com.facebook.rebound.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.Spinner;
import android.widget.TableLayout.LayoutParams;
import android.widget.TextView;
import bg;
import bj;
import bj.a;
import bl;
import bm;
import bn;
import bp;
import bq;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SpringConfiguratorView
  extends FrameLayout
{
  private static final DecimalFormat a = new DecimalFormat("#.#");
  private final d b;
  private final List<bl> c = new ArrayList();
  private final bj d;
  private final float e;
  private final float f;
  private final bm g;
  private final int h = Color.argb(255, 225, 225, 225);
  private SeekBar i;
  private SeekBar j;
  private Spinner k;
  private TextView l;
  private TextView m;
  private bl n;
  
  public SpringConfiguratorView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpringConfiguratorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  @TargetApi(11)
  public SpringConfiguratorView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = bp.c();
    if (bm.a == null) {
      bm.a = new bm();
    }
    g = bm.a;
    b = new d(paramContext);
    Object localObject1 = getResources();
    f = bq.a(40.0F, (Resources)localObject1);
    e = bq.a(280.0F, (Resources)localObject1);
    d = paramAttributeSet.a();
    paramAttributeSet = new b((byte)0);
    d.a(1.0D).b(1.0D).a(paramAttributeSet);
    localObject1 = getResources();
    paramInt = bq.a(5.0F, (Resources)localObject1);
    int i1 = bq.a(10.0F, (Resources)localObject1);
    int i2 = bq.a(20.0F, (Resources)localObject1);
    Object localObject2 = new TableLayout.LayoutParams(0, -2, 1.0F);
    ((TableLayout.LayoutParams)localObject2).setMargins(0, 0, paramInt, 0);
    paramAttributeSet = new FrameLayout(paramContext);
    paramAttributeSet.setLayoutParams(bq.a(-1, bq.a(300.0F, (Resources)localObject1)));
    Object localObject4 = new FrameLayout(paramContext);
    Object localObject3 = bq.a(-1, -1);
    ((FrameLayout.LayoutParams)localObject3).setMargins(0, i2, 0, 0);
    ((FrameLayout)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((FrameLayout)localObject4).setBackgroundColor(Color.argb(100, 0, 0, 0));
    paramAttributeSet.addView((View)localObject4);
    k = new Spinner(paramContext, 0);
    localObject3 = bq.a(-1, -2);
    gravity = 48;
    ((FrameLayout.LayoutParams)localObject3).setMargins(i1, i1, i1, 0);
    k.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((FrameLayout)localObject4).addView(k);
    localObject3 = new LinearLayout(paramContext);
    FrameLayout.LayoutParams localLayoutParams = bq.a(-1, -2);
    localLayoutParams.setMargins(0, 0, 0, bq.a(80.0F, (Resources)localObject1));
    gravity = 80;
    ((LinearLayout)localObject3).setLayoutParams(localLayoutParams);
    ((LinearLayout)localObject3).setOrientation(1);
    ((FrameLayout)localObject4).addView((View)localObject3);
    localObject4 = new LinearLayout(paramContext);
    localLayoutParams = bq.a(-1, -2);
    localLayoutParams.setMargins(i1, i1, i1, i2);
    ((LinearLayout)localObject4).setPadding(i1, i1, i1, i1);
    ((LinearLayout)localObject4).setLayoutParams(localLayoutParams);
    ((LinearLayout)localObject4).setOrientation(0);
    ((LinearLayout)localObject3).addView((View)localObject4);
    i = new SeekBar(paramContext);
    i.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject4).addView(i);
    m = new TextView(getContext());
    m.setTextColor(h);
    localLayoutParams = bq.a(bq.a(50.0F, (Resources)localObject1), -1);
    m.setGravity(19);
    m.setLayoutParams(localLayoutParams);
    m.setMaxLines(1);
    ((LinearLayout)localObject4).addView(m);
    localObject4 = new LinearLayout(paramContext);
    localLayoutParams = bq.a(-1, -2);
    localLayoutParams.setMargins(i1, i1, i1, i2);
    ((LinearLayout)localObject4).setPadding(i1, i1, i1, i1);
    ((LinearLayout)localObject4).setLayoutParams(localLayoutParams);
    ((LinearLayout)localObject4).setOrientation(0);
    ((LinearLayout)localObject3).addView((View)localObject4);
    j = new SeekBar(paramContext);
    j.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((LinearLayout)localObject4).addView(j);
    l = new TextView(getContext());
    l.setTextColor(h);
    localObject2 = bq.a(bq.a(50.0F, (Resources)localObject1), -1);
    l.setGravity(19);
    l.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    l.setMaxLines(1);
    ((LinearLayout)localObject4).addView(l);
    paramContext = new View(paramContext);
    localObject1 = bq.a(bq.a(60.0F, (Resources)localObject1), bq.a(40.0F, (Resources)localObject1));
    gravity = 49;
    paramContext.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    paramContext.setOnTouchListener(new a((byte)0));
    paramContext.setBackgroundColor(Color.argb(255, 0, 164, 209));
    paramAttributeSet.addView(paramContext);
    addView(paramAttributeSet);
    paramContext = new c((byte)0);
    i.setMax(100000);
    i.setOnSeekBarChangeListener(paramContext);
    j.setMax(100000);
    j.setOnSeekBarChangeListener(paramContext);
    k.setAdapter(b);
    k.setOnItemSelectedListener(new e((byte)0));
    b();
    setTranslationY(e);
  }
  
  private void b()
  {
    Map localMap = Collections.unmodifiableMap(g.b);
    Object localObject = b;
    a.clear();
    ((d)localObject).notifyDataSetChanged();
    c.clear();
    localObject = localMap.entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      if (localEntry.getKey() != bl.c)
      {
        c.add(localEntry.getKey());
        b.a((String)localEntry.getValue());
      }
    }
    c.add(bl.c);
    b.a((String)localMap.get(bl.c));
    b.notifyDataSetChanged();
    if (c.size() > 0) {
      k.setSelection(0);
    }
  }
  
  final class a
    implements View.OnTouchListener
  {
    private a() {}
    
    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      if (paramMotionEvent.getAction() == 0) {
        SpringConfiguratorView.g(SpringConfiguratorView.this);
      }
      return true;
    }
  }
  
  final class b
    implements bn
  {
    private b() {}
    
    public final void a() {}
    
    public final void a(bj parambj)
    {
      float f1 = (float)d.a;
      float f2 = SpringConfiguratorView.h(SpringConfiguratorView.this);
      float f3 = SpringConfiguratorView.i(SpringConfiguratorView.this);
      setTranslationY(f1 * (f3 - f2) + f2);
    }
  }
  
  final class c
    implements SeekBar.OnSeekBarChangeListener
  {
    private c() {}
    
    public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
    {
      float f;
      if (paramSeekBar == SpringConfiguratorView.c(SpringConfiguratorView.this))
      {
        f = paramInt * 200.0F / 100000.0F + 0.0F;
        bb = bg.a(f);
        String str = SpringConfiguratorView.a().format(f);
        SpringConfiguratorView.d(SpringConfiguratorView.this).setText("T:" + str);
      }
      if (paramSeekBar == SpringConfiguratorView.e(SpringConfiguratorView.this))
      {
        f = paramInt * 50.0F / 100000.0F + 0.0F;
        ba = bg.b(f);
        paramSeekBar = SpringConfiguratorView.a().format(f);
        SpringConfiguratorView.f(SpringConfiguratorView.this).setText("F:" + paramSeekBar);
      }
    }
    
    public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
    
    public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
  }
  
  final class d
    extends BaseAdapter
  {
    final List<String> a;
    private final Context c;
    
    public d(Context paramContext)
    {
      c = paramContext;
      a = new ArrayList();
    }
    
    public final void a(String paramString)
    {
      a.add(paramString);
      notifyDataSetChanged();
    }
    
    public final int getCount()
    {
      return a.size();
    }
    
    public final Object getItem(int paramInt)
    {
      return a.get(paramInt);
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null)
      {
        paramView = new TextView(c);
        paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
        int i = bq.a(12.0F, getResources());
        paramView.setPadding(i, i, i, i);
        paramView.setTextColor(SpringConfiguratorView.j(SpringConfiguratorView.this));
      }
      for (;;)
      {
        paramView.setText((CharSequence)a.get(paramInt));
        return paramView;
        paramView = (TextView)paramView;
      }
    }
  }
  
  final class e
    implements AdapterView.OnItemSelectedListener
  {
    private e() {}
    
    public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      SpringConfiguratorView.a(SpringConfiguratorView.this, (bl)SpringConfiguratorView.a(SpringConfiguratorView.this).get(paramInt));
      SpringConfiguratorView.b(SpringConfiguratorView.this, SpringConfiguratorView.b(SpringConfiguratorView.this));
    }
    
    public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
}

/* Location:
 * Qualified Name:     com.facebook.rebound.ui.SpringConfiguratorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui.diagnostics;

import alv;
import alw;
import alw.c;
import aly;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bam;
import bhp;
import chc;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import us;

public class DiagnosticsView
  extends RelativeLayout
  implements Observer
{
  public DiagnosticsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, alw.a(), bam.a());
  }
  
  public DiagnosticsView(Context paramContext, final AttributeSet paramAttributeSet, alw paramalw, bam parambam)
  {
    super(paramContext, paramAttributeSet);
    if (ReleaseManager.f())
    {
      parambam.addObserver(this);
      paramAttributeSet = (LayoutInflater)paramContext.getSystemService("layout_inflater");
      paramAttributeSet.inflate(2130968653, this, true);
      final ListView localListView = (ListView)findViewById(2131362247);
      paramContext = new c(paramAttributeSet);
      localListView.setAdapter(paramContext);
      localListView = (ListView)findViewById(2131362250);
      paramAttributeSet = new b(paramAttributeSet);
      localListView.setAdapter(paramAttributeSet);
      c = new d(new alw.c[] { paramContext, paramAttributeSet });
      ((ViewGroup)findViewById(2131362248)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (localListView.getVisibility() == 0)
          {
            localListView.setVisibility(8);
            return;
          }
          localListView.setVisibility(0);
        }
      });
      ((Button)findViewById(2131362249)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramAttributeSet;
          a.clear();
          paramAnonymousView.notifyDataSetChanged();
        }
      });
      a(parambam);
      return;
    }
    setVisibility(8);
  }
  
  private void a(bam parambam)
  {
    if (!parambam.e())
    {
      setVisibility(8);
      return;
    }
    setVisibility(0);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    a((bam)paramObservable);
  }
  
  static abstract class a
    extends BaseAdapter
    implements alw.c
  {
    private final LayoutInflater a;
    
    protected a(LayoutInflater paramLayoutInflater)
    {
      a = paramLayoutInflater;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null) {
        localView = a.inflate(2130968652, paramViewGroup, false);
      }
      paramView = (TextView)localView.findViewById(2131362244);
      paramViewGroup = (TextView)localView.findViewById(2131362245);
      aly localaly = (aly)getItem(paramInt);
      paramView.setText(g.toString());
      paramViewGroup.setText(f);
      return localView;
    }
  }
  
  final class b
    extends DiagnosticsView.a
  {
    final LinkedList<aly> a = new LinkedList();
    
    public b(LayoutInflater paramLayoutInflater)
    {
      super();
    }
    
    public final void a(@chc alv paramalv) {}
    
    public final void a(aly paramaly) {}
    
    public final void a(aly paramaly, us paramus)
    {
      a.addFirst(paramaly);
      if (a.size() > 100) {
        a.removeLast();
      }
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
  }
  
  final class c
    extends DiagnosticsView.a
  {
    private final List<aly> b = new ArrayList();
    
    public c(LayoutInflater paramLayoutInflater)
    {
      super();
    }
    
    public final void a(@chc alv paramalv) {}
    
    public final void a(aly paramaly)
    {
      b.add(paramaly);
      notifyDataSetChanged();
    }
    
    public final void a(aly paramaly, us paramus)
    {
      b.remove(paramaly);
      notifyDataSetChanged();
    }
    
    public final int getCount()
    {
      return b.size();
    }
    
    public final Object getItem(int paramInt)
    {
      return b.get(paramInt);
    }
  }
  
  static final class d
    implements alw.c
  {
    final alw.c[] a;
    
    public d(@chc alw.c... paramVarArgs)
    {
      a = paramVarArgs;
    }
    
    public final void a(@chc final alv paramalv)
    {
      bhp.a(new Runnable()
      {
        public final void run()
        {
          alw.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramalv);
            i += 1;
          }
        }
      });
    }
    
    public final void a(final aly paramaly)
    {
      bhp.a(new Runnable()
      {
        public final void run()
        {
          alw.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramaly);
            i += 1;
          }
        }
      });
    }
    
    public final void a(final aly paramaly, final us paramus)
    {
      bhp.a(new Runnable()
      {
        public final void run()
        {
          alw.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramaly, paramus);
            i += 1;
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
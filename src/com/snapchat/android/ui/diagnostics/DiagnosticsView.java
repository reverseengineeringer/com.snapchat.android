package com.snapchat.android.ui.diagnostics;

import ala;
import alb;
import alb.c;
import alc;
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
import azn;
import bgp;
import cgb;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import uc;

public class DiagnosticsView
  extends RelativeLayout
  implements Observer
{
  public DiagnosticsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, alb.a(), azn.a());
  }
  
  public DiagnosticsView(Context paramContext, final AttributeSet paramAttributeSet, alb paramalb, azn paramazn)
  {
    super(paramContext, paramAttributeSet);
    if (ReleaseManager.f())
    {
      paramazn.addObserver(this);
      paramAttributeSet = (LayoutInflater)paramContext.getSystemService("layout_inflater");
      paramAttributeSet.inflate(2130968652, this, true);
      final ListView localListView = (ListView)findViewById(2131362249);
      paramContext = new c(paramAttributeSet);
      localListView.setAdapter(paramContext);
      localListView = (ListView)findViewById(2131362252);
      paramAttributeSet = new b(paramAttributeSet);
      localListView.setAdapter(paramAttributeSet);
      c = new d(new alb.c[] { paramContext, paramAttributeSet });
      ((ViewGroup)findViewById(2131362250)).setOnClickListener(new View.OnClickListener()
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
      ((Button)findViewById(2131362251)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramAttributeSet;
          a.clear();
          paramAnonymousView.notifyDataSetChanged();
        }
      });
      a(paramazn);
      return;
    }
    setVisibility(8);
  }
  
  private void a(azn paramazn)
  {
    if (!paramazn.e())
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
    a((azn)paramObservable);
  }
  
  static abstract class a
    extends BaseAdapter
    implements alb.c
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
        localView = a.inflate(2130968651, paramViewGroup, false);
      }
      paramView = (TextView)localView.findViewById(2131362246);
      paramViewGroup = (TextView)localView.findViewById(2131362247);
      alc localalc = (alc)getItem(paramInt);
      paramView.setText(g.toString());
      paramViewGroup.setText(f);
      return localView;
    }
  }
  
  final class b
    extends DiagnosticsView.a
  {
    final LinkedList<alc> a = new LinkedList();
    
    public b(LayoutInflater paramLayoutInflater)
    {
      super();
    }
    
    public final void a(@cgb ala paramala) {}
    
    public final void a(alc paramalc) {}
    
    public final void a(alc paramalc, uc paramuc)
    {
      a.addFirst(paramalc);
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
    private final List<alc> b = new ArrayList();
    
    public c(LayoutInflater paramLayoutInflater)
    {
      super();
    }
    
    public final void a(@cgb ala paramala) {}
    
    public final void a(alc paramalc)
    {
      b.add(paramalc);
      notifyDataSetChanged();
    }
    
    public final void a(alc paramalc, uc paramuc)
    {
      b.remove(paramalc);
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
    implements alb.c
  {
    final alb.c[] a;
    
    public d(@cgb alb.c... paramVarArgs)
    {
      a = paramVarArgs;
    }
    
    public final void a(@cgb final ala paramala)
    {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          alb.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramala);
            i += 1;
          }
        }
      });
    }
    
    public final void a(final alc paramalc)
    {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          alb.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramalc);
            i += 1;
          }
        }
      });
    }
    
    public final void a(final alc paramalc, final uc paramuc)
    {
      bgp.a(new Runnable()
      {
        public final void run()
        {
          alb.c[] arrayOfc = a;
          int j = arrayOfc.length;
          int i = 0;
          while (i < j)
          {
            arrayOfc[i].a(paramalc, paramuc);
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
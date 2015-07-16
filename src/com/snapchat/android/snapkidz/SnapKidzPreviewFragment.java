package com.snapchat.android.snapkidz;

import aji;
import aku;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import ara;
import avr;
import awf;
import bbo;
import bbx;
import bcc;
import bej;
import bfk;
import bpi;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.ui.CanvasViewBase;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.SnapEditorView.a;
import com.snapchat.android.ui.SnapEditorView.b;
import com.snapchat.android.ui.SwipeImageView.a;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType;
import com.snapchat.android.util.eventbus.SnapCaptureContext;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.io.File;

public class SnapKidzPreviewFragment
  extends SnapchatFragment
  implements SnapEditorView.b, SwipeImageView.a
{
  private SnapEditorView a;
  private CanvasViewBase b;
  private ImageButton c;
  private View d;
  private boolean e = false;
  private boolean f = false;
  private ImageButton g;
  private View h;
  private ImageButton i;
  private boolean j = false;
  private ImageButton k;
  private ImageButton l;
  private int m;
  private bej n;
  private View o;
  private SnapEditorView.a p;
  private Handler q = new Handler();
  private a r;
  private long s = -1L;
  
  private void n()
  {
    bbo.a().a(new bfk(TitleBarManager.Visibility.HIDDEN));
    if (n.mMediabryo.h() == 0)
    {
      j = false;
      if (getUserVisibleHint()) {
        bbo.a().a(new bbx(-1));
      }
      k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((InputMethodManager)SnapKidzPreviewFragment.a(SnapKidzPreviewFragment.this, "input_method")).hideSoftInputFromWindow(SnapKidzPreviewFragment.c(SnapKidzPreviewFragment.this).getApplicationWindowToken(), 0);
          SnapKidzPreviewFragment.b(SnapKidzPreviewFragment.this);
          getActivity().onBackPressed();
        }
      });
      c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SnapKidzPreviewFragment.d(SnapKidzPreviewFragment.this);
        }
      });
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SnapKidzPreviewFragment.d(SnapKidzPreviewFragment.this);
        }
      });
      i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SnapKidzPreviewFragment.e(SnapKidzPreviewFragment.this);
        }
      });
      l.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (SnapKidzPreviewFragment.f(SnapKidzPreviewFragment.this))
          {
            SnapKidzPreviewFragment.g(SnapKidzPreviewFragment.this);
            return;
          }
          SnapKidzPreviewFragment.h(SnapKidzPreviewFragment.this);
        }
      });
      a.getCaptionView().setIsVideoSnap(j);
      if (p != null) {
        break label217;
      }
      a.setMediabryo(n.mMediabryo);
    }
    for (;;)
    {
      b.a(m);
      m = awf.d(getActivity());
      return;
      j = true;
      if (!getUserVisibleHint()) {
        break;
      }
      bbo.a().a(new bbx(1));
      break;
      label217:
      a.a(p);
    }
  }
  
  private void q()
  {
    if (getActivity() != null)
    {
      Window localWindow = J();
      if (localWindow != null)
      {
        WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
        flags &= 0xFDFF;
        localWindow.setAttributes(localLayoutParams);
      }
    }
  }
  
  private void r()
  {
    h.setVisibility(0);
    c.setVisibility(8);
    if (b.getNumberOfStrokes() > 0)
    {
      i.setVisibility(0);
      o.setVisibility(0);
      return;
    }
    o.setVisibility(4);
    i.setVisibility(4);
  }
  
  private void t()
  {
    if (n == null) {
      return;
    }
    if (j) {
      new File(n.mMediabryo.mVideoUri.getPath()).delete();
    }
    for (;;)
    {
      n = null;
      return;
      n.mMediabryo.l();
    }
  }
  
  protected final void e()
  {
    q();
    bbo.a().a(new bfk(TitleBarManager.Visibility.HIDDEN));
    aji localaji = n.mMediabryo;
    if ((localaji != null) && (avr.a(localaji)))
    {
      a.a((aku)localaji);
      return;
    }
    bbo.a().a(new bbx(-1));
  }
  
  public final boolean g()
  {
    if ((f) || (a.getCaptionView() == null) || (b == null)) {}
    do
    {
      return false;
      if (b.c())
      {
        new ara(getActivity(), getString(2131492920))
        {
          protected final void a()
          {
            SnapKidzPreviewFragment.a(SnapKidzPreviewFragment.this);
            SnapKidzPreviewFragment.b(SnapKidzPreviewFragment.this);
            getActivity().onBackPressed();
          }
          
          protected final void b() {}
        }.show();
        return true;
      }
    } while (n == null);
    t();
    return false;
  }
  
  public final void i()
  {
    p = a.a();
    n();
  }
  
  public final boolean m()
  {
    return false;
  }
  
  public final int o()
  {
    return k.getBottom();
  }
  
  @bpi
  public void onColorPickedEvent(bcc parambcc)
  {
    b.setColor(mColor);
    d.setBackgroundColor(b.getColor());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    i();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = getActivity();
    q();
    if (n == null)
    {
      n = getActivitya;
      if (n == null)
      {
        n = new bej(null, SnapCaptureContext.CAMERA);
        f = true;
        getActivity().onBackPressed();
        return mFragmentLayout;
      }
    }
    mFragmentLayout = paramLayoutInflater.inflate(2130968736, paramViewGroup, false);
    o = c(2131362705);
    d = c(2131362703);
    k = ((ImageButton)c(2131362271));
    c = ((ImageButton)c(2131362272));
    g = ((ImageButton)c(2131362704));
    i = ((ImageButton)c(2131362706));
    l = ((ImageButton)c(2131362708));
    h = c(2131362702);
    a = ((SnapEditorView)c(2131362701));
    a.a(paramBundle);
    a.setSnapPreviewRotationListener(this);
    a.setInterface(this);
    b = a.getCanvasView();
    n();
    d.setBackgroundColor(b.getColor());
    b.setColor(b.getColor());
    o.setBackgroundColor(b.getLastColor());
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (n != null) {
      n.mMediabryo.l();
    }
    n = null;
    WindowManager.LayoutParams localLayoutParams = J().getAttributes();
    flags |= 0x200;
    J().setAttributes(localLayoutParams);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    a.b();
    WindowManager.LayoutParams localLayoutParams = J().getAttributes();
    flags |= 0x200;
    J().setAttributes(localLayoutParams);
  }
  
  @bpi
  public void onDrawingEvent(DrawingEvent paramDrawingEvent)
  {
    if (r != null)
    {
      r.a = true;
      r = null;
    }
    if (mDrawingEventType == DrawingEvent.DrawingEventType.STARTED_STROKE)
    {
      r = new a((byte)0);
      q.postDelayed(r, 250L);
    }
    while (mDrawingEventType != DrawingEvent.DrawingEventType.COMPLETED_STROKE) {
      return;
    }
    if (s != -1L)
    {
      float f2 = 1.0E12F * (float)(System.nanoTime() - s) / 400.0F;
      s = -1L;
      float f1 = f2;
      if (f2 > 1.0F) {
        f1 = 1.0F;
      }
      paramDrawingEvent = new AlphaAnimation(f1 * 0.0F, 1.0F);
      paramDrawingEvent.setDuration(400L);
      c(2131362702).startAnimation(paramDrawingEvent);
      c(2131362274).startAnimation(paramDrawingEvent);
      c(2131362271).startAnimation(paramDrawingEvent);
    }
    i.setVisibility(0);
    o.setVisibility(0);
    o.setBackgroundColor(b.getLastColor());
  }
  
  public void onPause()
  {
    super.onPause();
    bbo.a().b(a.getCaptionView());
    if (a.getCaptionView() != null) {
      a.getCaptionView().a(true);
    }
    p = a.a();
    a.c();
  }
  
  public void onResume()
  {
    super.onResume();
    bbo.a().c(a.getCaptionView());
    b.setDrawingEnabled(e);
    if (e) {
      r();
    }
  }
  
  public final boolean p()
  {
    return false;
  }
  
  final class a
    implements Runnable
  {
    boolean a = false;
    
    private a() {}
    
    public final void run()
    {
      if (!a) {
        SnapKidzPreviewFragment.i(SnapKidzPreviewFragment.this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.snapkidz.SnapKidzPreviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
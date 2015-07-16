package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import atu;
import com.snapchat.android.ui.camera.TakeSnapButton;
import fu;

public class ProfilePictureView
  extends RelativeLayout
  implements View.OnClickListener
{
  private static final String h = ProfilePictureView.class.getSimpleName();
  public ImageView a;
  public TextView b;
  public TextView c;
  public TextView d;
  public AnimatorSet e;
  public boolean f = false;
  public boolean g = false;
  private Context i;
  private ImageButton j;
  private ImageButton k;
  private ProgressBar l;
  private ImageButton m;
  private TakeSnapButton n;
  private ViewGroup o;
  private ImageView p;
  private ViewGroup q;
  private a r;
  private boolean s = false;
  private int t = 0;
  
  public ProfilePictureView(Context paramContext)
  {
    super(paramContext);
    i = paramContext;
  }
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    i = paramContext;
  }
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    i = paramContext;
  }
  
  public final void a(boolean paramBoolean)
  {
    ImageButton localImageButton;
    if (s != paramBoolean)
    {
      s = paramBoolean;
      localImageButton = j;
      if (!paramBoolean) {
        break label31;
      }
    }
    label31:
    for (float f1 = 0.8F;; f1 = 0.14F)
    {
      localImageButton.setAlpha(f1);
      return;
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k.setVisibility(8);
      l.setVisibility(0);
      return;
    }
    if (t == 0) {
      k.setVisibility(0);
    }
    l.setVisibility(8);
  }
  
  public a getCallback()
  {
    return r;
  }
  
  public ImageView getSnapcodeSvgImageView()
  {
    return p;
  }
  
  public void onClick(View paramView)
  {
    int i1;
    if ((r != null) && (!f) && (g))
    {
      if ((l == null) || (l.getVisibility() != 0)) {
        break label45;
      }
      i1 = 1;
      if (i1 == 0) {
        break label50;
      }
    }
    label45:
    label50:
    do
    {
      return;
      i1 = 0;
      break;
      i1 = paramView.getId();
      if (i1 != 2131362566) {
        break label121;
      }
    } while (!s);
    paramView = new AlertDialog.Builder(getContext());
    paramView.setMessage(2131493335).setPositiveButton(2131493334, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ProfilePictureView.d(ProfilePictureView.this).r();
      }
    }).setNegativeButton(2131492952, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramView.create().show();
    return;
    label121:
    if (i1 == 2131362568)
    {
      r.t();
      return;
    }
    if (i1 == 2131362571)
    {
      r.p();
      return;
    }
    r.o();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    j = ((ImageButton)findViewById(2131362566));
    k = ((ImageButton)findViewById(2131362568));
    l = ((ProgressBar)findViewById(2131362569));
    m = ((ImageButton)findViewById(2131362572));
    n = ((TakeSnapButton)findViewById(2131362571));
    b = ((TextView)findViewById(2131362563));
    c = ((TextView)findViewById(2131362564));
    d = ((TextView)findViewById(2131362565));
    q = ((ViewGroup)findViewById(2131362570));
    o = ((ViewGroup)findViewById(2131362562));
    o.setLayerType(1, null);
    j.setOnTouchListener(new atu(j));
    k.setOnTouchListener(new atu(k));
    m.setOnTouchListener(new atu(m));
    setOnClickListener(this);
    j.setOnClickListener(this);
    k.setOnClickListener(this);
    m.setOnClickListener(this);
    n.setOnClickListener(this);
  }
  
  public void setCallback(a parama)
  {
    r = parama;
  }
  
  public void setProfilePicturesControlButtonsVisibility(int paramInt)
  {
    if (t != paramInt)
    {
      j.setVisibility(paramInt);
      k.setVisibility(paramInt);
      m.setVisibility(paramInt);
      n.setVisibility(paramInt);
      q.setVisibility(paramInt);
      t = paramInt;
    }
  }
  
  public void setSnapcodeSvg(fu paramfu)
  {
    if (p == null)
    {
      Object localObject = getResources().getDisplayMetrics();
      a = new ImageView(i);
      a.setBackgroundColor(-1);
      a.setVisibility(4);
      int i1 = (int)(widthPixels * 0.736D);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i1, i1);
      localLayoutParams.addRule(13, -1);
      o.addView(a, localLayoutParams);
      p = new ImageView(i);
      p.setLayerType(1, null);
      i1 = (int)(widthPixels * 0.89F);
      localObject = new RelativeLayout.LayoutParams(i1, i1);
      ((RelativeLayout.LayoutParams)localObject).addRule(13, -1);
      o.addView(p, (ViewGroup.LayoutParams)localObject);
      p.setVisibility(4);
    }
    paramfu = paramfu.a();
    p.setImageDrawable(paramfu);
  }
  
  public static abstract interface a
  {
    public abstract void o();
    
    public abstract void p();
    
    public abstract void q();
    
    public abstract void r();
    
    public abstract void t();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfilePictureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
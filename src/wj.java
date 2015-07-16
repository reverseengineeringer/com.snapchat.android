import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.Html;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.snapchat.android.camera.AutofocusCrosshair;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.camera.TakeSnapButton;
import com.snapchat.android.util.emoji.Emoji;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

@awj
public class wj
  extends CameraDecor
  implements View.OnTouchListener
{
  protected final Context b;
  protected final SharedPreferences c;
  protected final ImageButton d;
  protected final ImageButton e;
  protected final TextView f;
  protected final TextView g;
  protected final TakeSnapButton h;
  protected final ImageButton i;
  protected final atu j;
  protected final View k;
  protected final View l;
  protected final TextView m;
  private final aql n;
  private final ScaleGestureDetector o;
  private final GestureDetector p;
  private final AutofocusCrosshair q;
  private final String r;
  private boolean s = false;
  
  public wj(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface)
  {
    super(paramCameraDecorInterface);
    b = paramContext;
    c = PreferenceManager.getDefaultSharedPreferences(paramContext);
    paramCameraDecorInterface = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    paramRelativeLayout.removeAllViews();
    paramRelativeLayout.setOnTouchListener(this);
    paramRelativeLayout = paramCameraDecorInterface.inflate(2130968597, paramRelativeLayout, true);
    r = paramContext.getResources().getString(2131493338, new Object[] { bbj.a(Emoji.HAPPY_PERSON_RAISING_ONE_HAND) });
    o = new ScaleGestureDetector(paramContext, new wj.b((byte)0));
    p = new GestureDetector(paramContext, new wj.a((byte)0));
    q = ((AutofocusCrosshair)paramRelativeLayout.findViewById(2131361956));
    d = ((ImageButton)paramRelativeLayout.findViewById(2131361946));
    e = ((ImageButton)paramRelativeLayout.findViewById(2131361950));
    f = ((TextView)paramRelativeLayout.findViewById(2131361954));
    g = ((TextView)paramRelativeLayout.findViewById(2131361955));
    h = ((TakeSnapButton)paramRelativeLayout.findViewById(2131361951));
    k = paramRelativeLayout.findViewById(2131361952);
    l = paramRelativeLayout.findViewById(2131361948);
    m = ((TextView)paramRelativeLayout.findViewById(2131361949));
    i = ((ImageButton)paramRelativeLayout.findViewById(2131361947));
    a(a.l());
    d.setOnTouchListener(new atu(d));
    j = new atu(e);
    e.setOnTouchListener(j);
    f.setOnTouchListener(new atu(f));
    i.setOnTouchListener(new atu(i));
    g.setOnTouchListener(new atu(g));
    i.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bdr(0));
      }
    });
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.p();
      }
    });
    e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.b(false);
      }
    });
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.a(1, true);
      }
    });
    g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.a(3, true);
      }
    });
    h.setClickable(true);
    n = new aql(h, o, a);
    h.setOnTouchListener(n);
    a();
  }
  
  protected static void a(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0)
    {
      paramTextView.setBackgroundResource(paramInt1);
      if (paramInt3 < 10)
      {
        paramTextView.setText(Integer.toString(paramInt3));
        paramTextView.setTextSize(1, 22.0F);
        paramTextView.setPadding(0, 0, 0, 4);
        return;
      }
      paramTextView.setText("+");
      paramTextView.setTextSize(1, 30.0F);
      paramTextView.setPadding(0, 0, 0, 10);
      return;
    }
    paramTextView.setBackgroundResource(paramInt2);
    paramTextView.setText("");
  }
  
  private static boolean i()
  {
    return (akr.d() == 0) && (!akr.K());
  }
  
  @awj
  public final void a()
  {
    int i2 = 4;
    if (a.n()) {
      return;
    }
    ImageButton localImageButton = e;
    int i1;
    if (Camera.getNumberOfCameras() > 1)
    {
      i1 = 1;
      if (i1 == 0) {
        break label157;
      }
      i1 = 0;
      label35:
      localImageButton.setVisibility(i1);
      localImageButton = d;
      i1 = i2;
      if (a.o()) {
        i1 = 0;
      }
      localImageButton.setVisibility(i1);
      localImageButton = d;
      if (!a.i_()) {
        break label162;
      }
      i1 = 2130837533;
      label87:
      localImageButton.setImageResource(i1);
      h.invalidate();
      if (!i()) {
        break label169;
      }
      k.setVisibility(0);
      ((TextView)k.findViewById(2131361953)).setText(Html.fromHtml(b.getString(2131492946)));
    }
    for (;;)
    {
      c(true);
      b();
      return;
      i1 = 0;
      break;
      label157:
      i1 = 4;
      break label35;
      label162:
      i1 = 2130837532;
      break label87;
      label169:
      k.setVisibility(8);
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    AutofocusCrosshair localAutofocusCrosshair = q;
    float f1 = paramInt1;
    float f2 = paramInt2;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localAutofocusCrosshair.getLayoutParams();
    float f3 = b * 1.6F / 2.0F;
    Point localPoint = new Point((int)(f1 - f3), (int)(f2 - f3));
    localLayoutParams.setMargins(x, y, 0, 0);
    localAutofocusCrosshair.setLayoutParams(localLayoutParams);
    localAutofocusCrosshair.setVisibility(0);
    localAutofocusCrosshair.startAnimation(a);
  }
  
  public final void a(boolean paramBoolean)
  {
    Object localObject = e;
    int i1;
    ImageButton localImageButton;
    if (paramBoolean)
    {
      i1 = 2130837648;
      ((ImageButton)localObject).setImageResource(i1);
      localImageButton = e;
      if (!paramBoolean) {
        break label46;
      }
    }
    label46:
    for (localObject = "selfie";; localObject = "forward")
    {
      localImageButton.setContentDescription((CharSequence)localObject);
      return;
      i1 = 2130837536;
      break;
    }
  }
  
  public void b()
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        g();
      }
    });
  }
  
  public final void b(boolean paramBoolean)
  {
    if ((!paramBoolean) && (!s))
    {
      a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.FINGER_DOWN);
      a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.FINGER_UP);
    }
    while (paramBoolean == s) {
      return;
    }
    s = paramBoolean;
    long l1 = SystemClock.uptimeMillis();
    long l2 = SystemClock.uptimeMillis();
    if (s) {}
    for (int i1 = 0;; i1 = 1)
    {
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l2, i1, h.getX() + h.getWidth() / 2.0F, h.getY() + h.getHeight() / 2.0F, -1);
      if (localMotionEvent == null) {
        break;
      }
      h.dispatchTouchEvent(localMotionEvent);
      return;
    }
  }
  
  public void c() {}
  
  protected void c(boolean paramBoolean)
  {
    int i2 = 0;
    ImageButton localImageButton;
    if (paramBoolean)
    {
      i1 = 0;
      e.setVisibility(i1);
      f.setVisibility(i1);
      g.setVisibility(i1);
      localImageButton = i;
      if ((!h()) || (!paramBoolean)) {
        break label63;
      }
    }
    label63:
    for (int i1 = i2;; i1 = 8)
    {
      localImageButton.setVisibility(i1);
      return;
      i1 = 4;
      break;
    }
  }
  
  public final void d()
  {
    c(false);
    k.setVisibility(8);
    d.setVisibility(8);
    l.setVisibility(8);
    TakeSnapButton localTakeSnapButton = h;
    a = SystemClock.elapsedRealtime();
    d = true;
  }
  
  public final void e()
  {
    TakeSnapButton localTakeSnapButton = h;
    localTakeSnapButton.removeCallbacks(e);
    d = false;
    b = false;
    c = false;
    n.a();
  }
  
  @cbr
  protected final void g()
  {
    Object localObject = akp.g();
    if (localObject == null) {
      return;
    }
    final int i1;
    final boolean bool1;
    label40:
    final boolean bool2;
    label54:
    final boolean bool3;
    label78:
    int i4;
    int i5;
    label118:
    final int i2;
    int i3;
    if ((localObject != null) && (((akp)localObject).h() > 0))
    {
      i1 = 1;
      if ((i1 == 0) || (!h())) {
        break label252;
      }
      bool1 = true;
      if ((!bool1) || (akr.aT())) {
        break label258;
      }
      bool2 = true;
      final boolean bool4 = akr.aP();
      if (((!bool2) && (bool4)) || (i())) {
        break label264;
      }
      bool3 = true;
      bhp.a(new Runnable()
      {
        public final void run()
        {
          Object localObject = wj.this.i;
          int i;
          if (bool1)
          {
            i = 2130837654;
            ((ImageButton)localObject).setImageResource(i);
            localObject = l;
            if (!bool3) {
              break label71;
            }
            i = 0;
            label40:
            ((View)localObject).setVisibility(i);
            if (!bool2) {
              break label77;
            }
            m.setText(2131493246);
          }
          label71:
          label77:
          while (bool4)
          {
            return;
            i = 2130837653;
            break;
            i = 8;
            break label40;
          }
          m.setText(wj.a(wj.this));
        }
      });
      localObject = akx.c().f().iterator();
      i4 = 0;
      i5 = 0;
      i1 = 0;
      if (!((Iterator)localObject).hasNext()) {
        break label270;
      }
      ChatConversation localChatConversation = (ChatConversation)((Iterator)localObject).next();
      if ((!mHasUnreleasedReceivedChats) && (!mHasUnviewedReceivedSnaps))
      {
        i2 = i5;
        if (!mHasUnviewedCash) {}
      }
      else
      {
        i2 = i5 + 1;
      }
      i3 = i4;
      if (mHasUnreleasedReceivedChats)
      {
        i3 = i4;
        if (!mHasUnviewedReceivedSnaps)
        {
          i3 = i4;
          if (!mHasUnviewedCash) {
            i3 = i4 + 1;
          }
        }
      }
      if ((!mHasUnviewedCash) || (mHasUnviewedReceivedSnaps) || (mHasUnreleasedReceivedChats)) {
        break label387;
      }
      i1 += 1;
    }
    label252:
    label258:
    label264:
    label270:
    label387:
    for (;;)
    {
      i5 = i2;
      i4 = i3;
      break label118;
      i1 = 0;
      break;
      bool1 = false;
      break label40;
      bool2 = false;
      break label54;
      bool3 = false;
      break label78;
      localObject = new ako.a();
      numWithUnviewedContent = i5;
      numWithOnlyUnviewedChats = i4;
      numWithOnlyUnviewedCash = i1;
      localObject = new ako((ako.a)localObject, (byte)0);
      i2 = mNumWithUnviewedContent;
      i4 = mNumWithOnlyUnreadChats;
      i3 = mNumWithOnlyUnviewedCash;
      i1 = 2130837530;
      if (i2 == i4) {
        i1 = 2130837529;
      }
      for (;;)
      {
        bhp.a(new Runnable()
        {
          public final void run()
          {
            wj.a(f, i1, 2130837531, i2);
          }
        });
        bhp.a(new Runnable()
        {
          public final void run()
          {
            wj.a(g, 2130837535, 2130837534, a);
          }
        });
        return;
        if (i2 == i3) {
          i1 = 2130837528;
        }
      }
    }
  }
  
  protected boolean h()
  {
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    o.onTouchEvent(paramMotionEvent);
    p.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  final class a
    extends GestureDetector.SimpleOnGestureListener
  {
    private a() {}
    
    public final boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
    {
      if ((paramMotionEvent.getActionMasked() == 0) && (a != null))
      {
        paramMotionEvent = j;
        mSpring.c(50.0D);
        mSpring.b(1.0D);
        mSpring.b(0.0D);
        a.s();
      }
      return true;
    }
    
    public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (wj.b(wj.this))
      {
        a.a(1.0F + 7.0E-4F * paramFloat2);
        return true;
      }
      return false;
    }
    
    public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      a.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      return true;
    }
  }
  
  final class b
    extends ScaleGestureDetector.SimpleOnScaleGestureListener
  {
    private b() {}
    
    public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
    {
      a.a(paramScaleGestureDetector.getScaleFactor());
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     wj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
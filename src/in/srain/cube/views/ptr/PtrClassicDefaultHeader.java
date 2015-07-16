package in.srain.cube.views.ptr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import bvt;
import bvw.a;
import bvw.b;
import bvw.c;
import bvw.d;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PtrClassicDefaultHeader
  extends FrameLayout
  implements bvt
{
  private static SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private int b = 150;
  private RotateAnimation c;
  private RotateAnimation d;
  private TextView e;
  private View f;
  private View g;
  private long h = -1L;
  private TextView i;
  private String j;
  private boolean k;
  private a l = new a((byte)0);
  
  public PtrClassicDefaultHeader(Context paramContext)
  {
    super(paramContext);
    a(null);
  }
  
  public PtrClassicDefaultHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public PtrClassicDefaultHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a()
  {
    c = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    c.setInterpolator(new LinearInterpolator());
    c.setDuration(b);
    c.setFillAfter(true);
    d = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    d.setInterpolator(new LinearInterpolator());
    d.setDuration(b);
    d.setFillAfter(true);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, bvw.d.PtrClassicHeader, 0, 0);
    if (paramAttributeSet != null) {
      b = paramAttributeSet.getInt(0, b);
    }
    a();
    paramAttributeSet = LayoutInflater.from(getContext()).inflate(bvw.b.cube_ptr_classic_default_header, this);
    f = paramAttributeSet.findViewById(bvw.a.ptr_classic_header_rotate_view);
    e = ((TextView)paramAttributeSet.findViewById(bvw.a.ptr_classic_header_rotate_view_header_title));
    i = ((TextView)paramAttributeSet.findViewById(bvw.a.ptr_classic_header_rotate_view_header_last_update));
    g = paramAttributeSet.findViewById(bvw.a.ptr_classic_header_rotate_view_progressbar);
    b();
  }
  
  private void b()
  {
    c();
    g.setVisibility(4);
  }
  
  private void c()
  {
    f.clearAnimation();
    f.setVisibility(4);
  }
  
  private void d()
  {
    if ((TextUtils.isEmpty(j)) || (!k))
    {
      i.setVisibility(8);
      return;
    }
    String str = getLastUpdateTime();
    if (TextUtils.isEmpty(str))
    {
      i.setVisibility(8);
      return;
    }
    i.setVisibility(0);
    i.setText(str);
  }
  
  private String getLastUpdateTime()
  {
    if ((h == -1L) && (!TextUtils.isEmpty(j))) {
      h = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0).getLong(j, -1L);
    }
    if (h == -1L) {}
    long l1;
    int m;
    do
    {
      return null;
      l1 = new Date().getTime() - h;
      m = (int)(l1 / 1000L);
    } while ((l1 < 0L) || (m <= 0));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getContext().getString(bvw.c.cube_ptr_last_update));
    if (m < 60) {
      localStringBuilder.append(m + getContext().getString(bvw.c.cube_ptr_seconds_ago));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      m /= 60;
      if (m > 60)
      {
        m /= 60;
        if (m > 24)
        {
          Date localDate = new Date(h);
          localStringBuilder.append(a.format(localDate));
        }
        else
        {
          localStringBuilder.append(m + getContext().getString(bvw.c.cube_ptr_hours_ago));
        }
      }
      else
      {
        localStringBuilder.append(m + getContext().getString(bvw.c.cube_ptr_minutes_ago));
      }
    }
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    b();
    k = true;
    d();
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout, boolean paramBoolean, byte paramByte, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    int m = paramPtrFrameLayout.getOffsetToRefresh();
    if ((paramInt2 < m) && (paramInt1 >= m)) {
      if ((paramBoolean) && (paramByte == 2))
      {
        e.setVisibility(0);
        if (!e) {
          break label87;
        }
        e.setText(getResources().getString(bvw.c.cube_ptr_pull_down_to_refresh));
        if (f != null)
        {
          f.clearAnimation();
          f.startAnimation(d);
        }
      }
    }
    label87:
    do
    {
      do
      {
        return;
        e.setText(getResources().getString(bvw.c.cube_ptr_pull_down));
        break;
      } while ((paramInt2 <= m) || (paramInt1 > m) || (!paramBoolean) || (paramByte != 2));
      if (!e)
      {
        e.setVisibility(0);
        e.setText(bvw.c.cube_ptr_release_to_refresh);
      }
    } while (f == null);
    f.clearAnimation();
    f.startAnimation(c);
  }
  
  public final void b(PtrFrameLayout paramPtrFrameLayout)
  {
    k = true;
    d();
    a.a(l);
    g.setVisibility(4);
    f.setVisibility(0);
    e.setVisibility(0);
    if (e)
    {
      e.setText(getResources().getString(bvw.c.cube_ptr_pull_down_to_refresh));
      return;
    }
    e.setText(getResources().getString(bvw.c.cube_ptr_pull_down));
  }
  
  public final void c(PtrFrameLayout paramPtrFrameLayout)
  {
    k = false;
    c();
    g.setVisibility(0);
    e.setVisibility(0);
    e.setText(bvw.c.cube_ptr_refreshing);
    d();
    a.b(l);
  }
  
  public final void d(PtrFrameLayout paramPtrFrameLayout)
  {
    c();
    g.setVisibility(4);
    e.setVisibility(0);
    e.setText(getResources().getString(bvw.c.cube_ptr_refresh_complete));
    paramPtrFrameLayout = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0);
    if (!TextUtils.isEmpty(j))
    {
      h = new Date().getTime();
      paramPtrFrameLayout.edit().putLong(j, h).commit();
    }
  }
  
  public void setLastUpdateTimeKey(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    j = paramString;
  }
  
  public void setLastUpdateTimeRelateObject(Object paramObject)
  {
    setLastUpdateTimeKey(paramObject.getClass().getName());
  }
  
  public void setRotateAniTime(int paramInt)
  {
    if ((paramInt == b) || (paramInt == 0)) {
      return;
    }
    b = paramInt;
    a();
  }
  
  final class a
    implements Runnable
  {
    private boolean b = false;
    
    private a() {}
    
    public final void run()
    {
      PtrClassicDefaultHeader.b(PtrClassicDefaultHeader.this);
      if (b) {
        postDelayed(this, 1000L);
      }
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrClassicDefaultHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
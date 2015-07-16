import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.ImageResourceView;

public final class ze
{
  public final ListView a;
  public int b;
  
  public ze(@chc ListView paramListView)
  {
    a = paramListView;
  }
  
  public static boolean a(@chd ChatFeedItem paramChatFeedItem1, @chd ChatFeedItem paramChatFeedItem2)
  {
    return ((paramChatFeedItem1 != null) && (paramChatFeedItem1.ak())) || ((paramChatFeedItem2 != null) && (paramChatFeedItem2.ak()));
  }
  
  public final void a()
  {
    int j = a.getFirstVisiblePosition();
    int k = a.getLastVisiblePosition();
    int i = j;
    while (i <= k)
    {
      agr.c localc = (agr.c)a.getChildAt(i - j).getTag();
      if (localc != null)
      {
        localc.a();
        if (L != null) {
          L.setTranslationY(0.0F);
        }
      }
      i += 1;
    }
  }
  
  public final void a(@chc agr.c paramc, float paramFloat)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)C.getLayoutParams();
    FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)y.getLayoutParams();
    if ((F == 0) && (G == 0))
    {
      F = C.getWidth();
      G = C.getHeight();
    }
    if ((H == 0) && (I == 0))
    {
      H = y.getWidth();
      I = y.getHeight();
    }
    int i = b - F + leftMargin + rightMargin;
    int j = i - rightMargin;
    int k = j - rightMargin;
    int m = width;
    int n = height;
    int i1 = leftMargin;
    float f1 = C.getTranslationY();
    width = ((int)(F + i * paramFloat));
    height = ((int)(G + i * paramFloat));
    leftMargin = ((int)Math.max(-paramFloat * i, -j));
    float f2 = i * paramFloat / 2.0F;
    if (leftMargin < -k)
    {
      float f3 = k / i;
      leftMargin = ((int)Math.max(-j, -k - (paramFloat - f3) * i / 2.0F));
    }
    if ((width != m) || (height != n) || (leftMargin != i1)) {
      C.setLayoutParams(localLayoutParams);
    }
    if (Float.compare(f2, f1) != 0) {
      C.setTranslationY(-f2);
    }
    if (L != null)
    {
      paramFloat = (b * I / H - I - i) * paramFloat;
      if (Float.compare(L.getTranslationY(), paramFloat) != 0) {
        L.setTranslationY(paramFloat);
      }
    }
    if (width == F + i) {}
    for (boolean bool = true;; bool = false)
    {
      J = bool;
      return;
    }
  }
  
  public final boolean b()
  {
    int j = a.getFirstVisiblePosition();
    int k = a.getLastVisiblePosition();
    int i = j;
    while (i <= k)
    {
      agr.c localc = (agr.c)a.getChildAt(i - j).getTag();
      if ((localc != null) && (J)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
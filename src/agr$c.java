import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.ChatFragmentSnapIconView;
import com.snapchat.android.ui.FitWidthImageView;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.LockingAboveTheFoldListView.b;
import com.snapchat.android.ui.TextureVideoView;

public final class agr$c
  implements LockingAboveTheFoldListView.b
{
  public FitWidthImageView A;
  public View B;
  public ViewGroup C;
  public ProgressBar D;
  public ViewGroup E;
  public int F;
  public int G;
  public int H;
  public int I;
  public boolean J;
  TextView K;
  public View L;
  public TextView M;
  public TextView N;
  public ImageView O;
  public ProgressBar P;
  public ImageView Q;
  private final Context R;
  public ChatFeedItem a;
  View b;
  public View c;
  public ViewGroup d;
  FixTouchConsumeTextView e;
  View f;
  LinearLayout g;
  TextView h;
  TextView i;
  TextView j;
  TextView k;
  TextView l;
  View m;
  ChatFragmentSnapIconView n;
  ProgressBar o;
  View p;
  TextView q;
  TextView r;
  TextView s;
  ImageView t;
  ImageView u;
  ImageView v;
  ImageView w;
  ProgressBar x;
  public ImageResourceView y;
  public TextureVideoView z;
  
  public agr$c(Context paramContext)
  {
    R = paramContext;
  }
  
  public final void a()
  {
    if (C != null)
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)C.getLayoutParams();
      if ((width != -1) || (height != -2))
      {
        width = -1;
        height = -2;
        leftMargin = 0;
        C.setLayoutParams(localLayoutParams);
      }
      if (C.getTranslationY() != 0.0F) {
        C.setTranslationY(0.0F);
      }
      F = 0;
      G = 0;
      H = 0;
      I = 0;
      J = false;
    }
    if (A != null) {
      A.setVisibility(8);
    }
    if (D != null) {
      D.setVisibility(8);
    }
    if (E != null)
    {
      E.setOnClickListener(null);
      E.setVisibility(8);
    }
  }
  
  public final void a(float paramFloat)
  {
    c.setTranslationX(paramFloat);
    if (j != null)
    {
      if ((paramFloat != 0.0F) && (j.getVisibility() == 0) && (R != null) && (a != null)) {
        j.setText(atz.a(R, a.U()));
      }
      j.setTranslationX(paramFloat);
    }
  }
  
  public final boolean b()
  {
    return (a != null) && (a.ak());
  }
  
  public final aqu c()
  {
    if ((C != null) && (y != null)) {
      return new aqt(C, y);
    }
    return null;
  }
  
  public final int[] d()
  {
    int[] arrayOfInt = new int[2];
    if (y != null) {
      y.getLocationOnScreen(arrayOfInt);
    }
    return arrayOfInt;
  }
  
  public final int e()
  {
    if (y != null) {
      return y.getHeight();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     agr.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
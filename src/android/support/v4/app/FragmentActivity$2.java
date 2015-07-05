package android.support.v4.app;

import android.view.View;
import android.view.Window;

final class FragmentActivity$2
  implements FragmentContainer
{
  FragmentActivity$2(FragmentActivity paramFragmentActivity) {}
  
  public final View findViewById(int paramInt)
  {
    return this$0.findViewById(paramInt);
  }
  
  public final boolean hasView()
  {
    Window localWindow = this$0.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
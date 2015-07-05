import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public final class azh
  extends apf<String>
{
  private Context mContext;
  private String[] mFriends;
  private int mLayoutId;
  private int mSectionLeftPadding;
  
  public azh(Context paramContext, String[] paramArrayOfString)
  {
    super(paramContext, paramArrayOfString);
    mContext = paramContext;
    mLayoutId = 2130968594;
    mFriends = paramArrayOfString;
    mSectionLeftPadding = ((int)mContext.getResources().getDimension(2131296301));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = ((Activity)mContext).getLayoutInflater().inflate(mLayoutId, paramViewGroup, false);
    paramViewGroup = (TextView)paramView.findViewById(2131361938);
    paramViewGroup.setText(mFriends[paramInt]);
    if (mFriends[paramInt].length() == 1) {
      paramViewGroup.setPadding(mSectionLeftPadding, 0, 0, 0);
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     azh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
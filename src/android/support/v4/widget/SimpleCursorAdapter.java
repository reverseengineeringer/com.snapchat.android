package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public final class SimpleCursorAdapter
  extends ResourceCursorAdapter
{
  private CursorToStringConverter mCursorToStringConverter;
  protected int[] mFrom;
  String[] mOriginalFrom;
  private int mStringConversionColumn = -1;
  protected int[] mTo;
  private ViewBinder mViewBinder;
  
  @Deprecated
  private SimpleCursorAdapter(Context paramContext, int paramInt, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super(paramContext, paramInt, paramCursor);
    mTo = paramArrayOfInt;
    mOriginalFrom = paramArrayOfString;
    findColumns(paramArrayOfString);
  }
  
  private SimpleCursorAdapter(Context paramContext, int paramInt1, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt, int paramInt2)
  {
    super(paramContext, paramInt1, paramCursor, paramInt2);
    mTo = paramArrayOfInt;
    mOriginalFrom = paramArrayOfString;
    findColumns(paramArrayOfString);
  }
  
  private void changeCursorAndColumns(Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    mOriginalFrom = paramArrayOfString;
    mTo = paramArrayOfInt;
    super.changeCursor(paramCursor);
    findColumns(mOriginalFrom);
  }
  
  private void findColumns(String[] paramArrayOfString)
  {
    if (mCursor != null)
    {
      int j = paramArrayOfString.length;
      if ((mFrom == null) || (mFrom.length != j)) {
        mFrom = new int[j];
      }
      int i = 0;
      while (i < j)
      {
        mFrom[i] = mCursor.getColumnIndexOrThrow(paramArrayOfString[i]);
        i += 1;
      }
    }
    mFrom = null;
  }
  
  private CursorToStringConverter getCursorToStringConverter()
  {
    return mCursorToStringConverter;
  }
  
  private int getStringConversionColumn()
  {
    return mStringConversionColumn;
  }
  
  private ViewBinder getViewBinder()
  {
    return mViewBinder;
  }
  
  private void setCursorToStringConverter(CursorToStringConverter paramCursorToStringConverter)
  {
    mCursorToStringConverter = paramCursorToStringConverter;
  }
  
  private void setStringConversionColumn(int paramInt)
  {
    mStringConversionColumn = paramInt;
  }
  
  private void setViewBinder(ViewBinder paramViewBinder)
  {
    mViewBinder = paramViewBinder;
  }
  
  private static void setViewImage(ImageView paramImageView, String paramString)
  {
    try
    {
      paramImageView.setImageResource(Integer.parseInt(paramString));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      paramImageView.setImageURI(Uri.parse(paramString));
    }
  }
  
  private static void setViewText(TextView paramTextView, String paramString)
  {
    paramTextView.setText(paramString);
  }
  
  public final void bindView$4693bf34(View paramView, Cursor paramCursor)
  {
    ViewBinder localViewBinder = mViewBinder;
    int j = mTo.length;
    int[] arrayOfInt1 = mFrom;
    int[] arrayOfInt2 = mTo;
    int i = 0;
    View localView;
    if (i < j)
    {
      localView = paramView.findViewById(arrayOfInt2[i]);
      if (localView != null) {
        if (localViewBinder == null) {
          break label195;
        }
      }
    }
    label117:
    label160:
    label195:
    for (boolean bool = localViewBinder.setViewValue$2e05ad4d();; bool = false)
    {
      Object localObject2;
      Object localObject1;
      if (!bool)
      {
        localObject2 = paramCursor.getString(arrayOfInt1[i]);
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = "";
        }
        if (!(localView instanceof TextView)) {
          break label117;
        }
        ((TextView)localView).setText((CharSequence)localObject1);
      }
      for (;;)
      {
        i += 1;
        break;
        if (!(localView instanceof ImageView)) {
          break label160;
        }
        localObject2 = (ImageView)localView;
        try
        {
          ((ImageView)localObject2).setImageResource(Integer.parseInt((String)localObject1));
        }
        catch (NumberFormatException localNumberFormatException)
        {
          ((ImageView)localObject2).setImageURI(Uri.parse((String)localObject1));
        }
      }
      throw new IllegalStateException(localNumberFormatException.getClass().getName() + " is not a  view that can be bounds by this SimpleCursorAdapter");
      return;
    }
  }
  
  public final CharSequence convertToString(Cursor paramCursor)
  {
    if (mCursorToStringConverter != null) {
      return mCursorToStringConverter.convertToString$57f82248();
    }
    if (mStringConversionColumn >= 0) {
      return paramCursor.getString(mStringConversionColumn);
    }
    return super.convertToString(paramCursor);
  }
  
  public final Cursor swapCursor(Cursor paramCursor)
  {
    paramCursor = super.swapCursor(paramCursor);
    findColumns(mOriginalFrom);
    return paramCursor;
  }
  
  public static abstract interface CursorToStringConverter
  {
    public abstract CharSequence convertToString$57f82248();
  }
  
  public static abstract interface ViewBinder
  {
    public abstract boolean setViewValue$2e05ad4d();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SimpleCursorAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.database.Cursor;
import android.database.CursorWrapper;
import java.util.Arrays;

public final class zu
  extends CursorWrapper
{
  private final int[] a;
  private final int[] b;
  
  public zu(Cursor paramCursor, int[] paramArrayOfInt)
  {
    super(paramCursor);
    paramCursor.getCount();
    int i = paramArrayOfInt.length;
    a = paramArrayOfInt;
    b = new int[a.length];
    Arrays.fill(b, -1);
    i = 0;
    while (i < a.length)
    {
      int j = a[i];
      if (b[j] != -1) {
        throw new IllegalArgumentException("Found two cursor positions that map to the same sorted position!");
      }
      b[j] = i;
      i += 1;
    }
  }
  
  public final int getPosition()
  {
    return a[super.getPosition()];
  }
  
  public final boolean isFirst()
  {
    boolean bool = false;
    if (super.getPosition() == b[0]) {
      bool = true;
    }
    return bool;
  }
  
  public final boolean isLast()
  {
    return super.getPosition() == b[(b.length - 1)];
  }
  
  public final boolean move(int paramInt)
  {
    paramInt = getPosition() + paramInt;
    if ((paramInt < 0) || (paramInt >= b.length)) {
      return false;
    }
    return super.moveToPosition(b[paramInt]);
  }
  
  public final boolean moveToFirst()
  {
    return super.moveToPosition(b[0]);
  }
  
  public final boolean moveToLast()
  {
    return super.moveToPosition(b[(b.length - 1)]);
  }
  
  public final boolean moveToNext()
  {
    return move(1);
  }
  
  public final boolean moveToPosition(int paramInt)
  {
    return super.moveToPosition(b[paramInt]);
  }
  
  public final boolean moveToPrevious()
  {
    return move(-1);
  }
}

/* Location:
 * Qualified Name:     zu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
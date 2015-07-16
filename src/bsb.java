import android.util.SparseArray;

public enum bsb
{
  private static SparseArray f;
  int e;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    f = localSparseArray;
    localSparseArray.put(0, a);
    f.put(1, b);
  }
  
  private bsb(int paramInt1)
  {
    e = paramInt1;
  }
  
  public static bsb a(int paramInt)
  {
    bsb localbsb2 = (bsb)f.get(paramInt);
    bsb localbsb1 = localbsb2;
    if (localbsb2 == null) {
      localbsb1 = c;
    }
    return localbsb1;
  }
}

/* Location:
 * Qualified Name:     bsb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
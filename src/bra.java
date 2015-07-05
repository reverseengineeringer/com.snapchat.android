import android.util.SparseArray;

public enum bra
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
  
  private bra(int paramInt1)
  {
    e = paramInt1;
  }
  
  public static bra a(int paramInt)
  {
    bra localbra2 = (bra)f.get(paramInt);
    bra localbra1 = localbra2;
    if (localbra2 == null) {
      localbra1 = c;
    }
    return localbra1;
  }
}

/* Location:
 * Qualified Name:     bra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package org.apache.commons.lang3.tuple;

public class MutablePair<L, R>
  extends Pair<L, R>
{
  private static final long serialVersionUID = 4954918890077093841L;
  public L left;
  public R right;
  
  public MutablePair() {}
  
  public MutablePair(L paramL, R paramR)
  {
    left = paramL;
    right = paramR;
  }
  
  public static <L, R> MutablePair<L, R> of(L paramL, R paramR)
  {
    return new MutablePair(paramL, paramR);
  }
  
  public L getLeft()
  {
    return (L)left;
  }
  
  public R getRight()
  {
    return (R)right;
  }
  
  public void setLeft(L paramL)
  {
    left = paramL;
  }
  
  public void setRight(R paramR)
  {
    right = paramR;
  }
  
  public R setValue(R paramR)
  {
    Object localObject = getRight();
    setRight(paramR);
    return (R)localObject;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.tuple.MutablePair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
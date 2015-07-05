package org.apache.commons.lang3.tuple;

public class MutableTriple<L, M, R>
  extends Triple<L, M, R>
{
  private static final long serialVersionUID = 1L;
  public L left;
  public M middle;
  public R right;
  
  public MutableTriple() {}
  
  public MutableTriple(L paramL, M paramM, R paramR)
  {
    left = paramL;
    middle = paramM;
    right = paramR;
  }
  
  public static <L, M, R> MutableTriple<L, M, R> of(L paramL, M paramM, R paramR)
  {
    return new MutableTriple(paramL, paramM, paramR);
  }
  
  public L getLeft()
  {
    return (L)left;
  }
  
  public M getMiddle()
  {
    return (M)middle;
  }
  
  public R getRight()
  {
    return (R)right;
  }
  
  public void setLeft(L paramL)
  {
    left = paramL;
  }
  
  public void setMiddle(M paramM)
  {
    middle = paramM;
  }
  
  public void setRight(R paramR)
  {
    right = paramR;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.tuple.MutableTriple
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
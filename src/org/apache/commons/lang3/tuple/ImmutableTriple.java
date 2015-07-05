package org.apache.commons.lang3.tuple;

public final class ImmutableTriple<L, M, R>
  extends Triple<L, M, R>
{
  private static final long serialVersionUID = 1L;
  public final L left;
  public final M middle;
  public final R right;
  
  public ImmutableTriple(L paramL, M paramM, R paramR)
  {
    left = paramL;
    middle = paramM;
    right = paramR;
  }
  
  public static <L, M, R> ImmutableTriple<L, M, R> of(L paramL, M paramM, R paramR)
  {
    return new ImmutableTriple(paramL, paramM, paramR);
  }
  
  public final L getLeft()
  {
    return (L)left;
  }
  
  public final M getMiddle()
  {
    return (M)middle;
  }
  
  public final R getRight()
  {
    return (R)right;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.tuple.ImmutableTriple
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
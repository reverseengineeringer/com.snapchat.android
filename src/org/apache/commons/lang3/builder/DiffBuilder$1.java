package org.apache.commons.lang3.builder;

class DiffBuilder$1
  extends Diff<Boolean>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$1(DiffBuilder paramDiffBuilder, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString);
  }
  
  public Boolean getLeft()
  {
    return Boolean.valueOf(val$lhs);
  }
  
  public Boolean getRight()
  {
    return Boolean.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
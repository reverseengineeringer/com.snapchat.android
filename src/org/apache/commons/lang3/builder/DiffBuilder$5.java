package org.apache.commons.lang3.builder;

class DiffBuilder$5
  extends Diff<Character>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$5(DiffBuilder paramDiffBuilder, String paramString, char paramChar1, char paramChar2)
  {
    super(paramString);
  }
  
  public Character getLeft()
  {
    return Character.valueOf(val$lhs);
  }
  
  public Character getRight()
  {
    return Character.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
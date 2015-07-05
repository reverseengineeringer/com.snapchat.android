package org.apache.commons.codec.language.bm;

public enum NameType
{
  ASHKENAZI("ash"),  GENERIC("gen"),  SEPHARDIC("sep");
  
  private final String name;
  
  private NameType(String paramString)
  {
    name = paramString;
  }
  
  public final String getName()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.NameType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
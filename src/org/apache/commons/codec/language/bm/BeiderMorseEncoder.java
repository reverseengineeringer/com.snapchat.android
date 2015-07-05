package org.apache.commons.codec.language.bm;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class BeiderMorseEncoder
  implements StringEncoder
{
  private PhoneticEngine engine = new PhoneticEngine(NameType.GENERIC, RuleType.APPROX, true);
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("BeiderMorseEncoder encode parameter is not of type String");
    }
    return encode((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return engine.encode(paramString);
  }
  
  public NameType getNameType()
  {
    return engine.getNameType();
  }
  
  public RuleType getRuleType()
  {
    return engine.getRuleType();
  }
  
  public boolean isConcat()
  {
    return engine.isConcat();
  }
  
  public void setConcat(boolean paramBoolean)
  {
    engine = new PhoneticEngine(engine.getNameType(), engine.getRuleType(), paramBoolean);
  }
  
  public void setNameType(NameType paramNameType)
  {
    engine = new PhoneticEngine(paramNameType, engine.getRuleType(), engine.isConcat());
  }
  
  public void setRuleType(RuleType paramRuleType)
  {
    engine = new PhoneticEngine(engine.getNameType(), paramRuleType, engine.isConcat());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.BeiderMorseEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
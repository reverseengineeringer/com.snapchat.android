package org.apache.commons.lang3.text;

import java.util.List;

class StrBuilder$StrBuilderTokenizer
  extends StrTokenizer
{
  StrBuilder$StrBuilderTokenizer(StrBuilder paramStrBuilder) {}
  
  public String getContent()
  {
    String str2 = super.getContent();
    String str1 = str2;
    if (str2 == null) {
      str1 = this$0.toString();
    }
    return str1;
  }
  
  protected List<String> tokenize(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null) {
      return super.tokenize(this$0.buffer, 0, this$0.size());
    }
    return super.tokenize(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderTokenizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
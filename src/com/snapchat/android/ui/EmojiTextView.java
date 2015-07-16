package com.snapchat.android.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import bbi;
import com.snapchat.android.util.emoji.Emoji;

public class EmojiTextView
  extends TextView
{
  private static final SparseIntArray a;
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    a = localSparseIntArray;
    localSparseIntArray.put(Emoji.WHITE_MEDIUM_STAR.getUnicode(), 2130837791);
    a.put(Emoji.SMILING_FACE_WITH_SMILING_EYES.getUnicode(), 2130837788);
    a.put(Emoji.HEAVY_BLACK_HEART.getUnicode(), 2130837787);
    a.put(Emoji.SMIRKING_FACE.getUnicode(), 2130837790);
    a.put(Emoji.FLUSHED_FACE.getUnicode(), 2130837785);
    a.put(Emoji.SMILING_FACE_WITH_SUNGLASSES.getUnicode(), 2130837789);
    a.put(Emoji.CLAPPING_HANDS_SIGN.getUnicode(), 2130837783);
    a.put(Emoji.FIRE.getUnicode(), 2130837784);
    a.put(Emoji.YELLOW_HEART.getUnicode(), 2130837792);
    a.put(Emoji.GRINNING_FACE_WITH_SMILING_EYES.getUnicode(), 2130837786);
  }
  
  public EmojiTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public EmojiTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public EmojiTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private static void a(Context paramContext, Spannable paramSpannable, int paramInt)
  {
    int k = 0;
    int m = paramSpannable.length();
    bbi[] arrayOfbbi = (bbi[])paramSpannable.getSpans(0, m, bbi.class);
    int j = 0;
    int i;
    for (;;)
    {
      i = k;
      if (j >= arrayOfbbi.length) {
        break;
      }
      paramSpannable.removeSpan(arrayOfbbi[j]);
      j += 1;
    }
    while (i < m)
    {
      k = Character.codePointAt(paramSpannable, i);
      j = Character.charCount(k);
      k = a.get(k);
      if (k > 0) {
        paramSpannable.setSpan(new bbi(paramContext, k, paramInt), i, i + j, 33);
      }
      i += j;
    }
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    Object localObject = paramCharSequence;
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      localObject = new SpannableStringBuilder(paramCharSequence);
      a(getContext(), (Spannable)localObject, (int)(getTextSize() * 1.2F));
    }
    super.setText((CharSequence)localObject, paramBufferType);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.EmojiTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v4.speech.tts;

import android.os.Build.VERSION;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnUtteranceCompletedListener;
import android.speech.tts.UtteranceProgressListener;
import java.util.Locale;
import java.util.Set;

final class TextToSpeechICSMR1
{
  public static final String KEY_FEATURE_EMBEDDED_SYNTHESIS = "embeddedTts";
  public static final String KEY_FEATURE_NETWORK_SYNTHESIS = "networkTts";
  
  private static Set<String> getFeatures(TextToSpeech paramTextToSpeech, Locale paramLocale)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      return paramTextToSpeech.getFeatures(paramLocale);
    }
    return null;
  }
  
  private static void setUtteranceProgressListener(TextToSpeech paramTextToSpeech, UtteranceProgressListenerICSMR1 paramUtteranceProgressListenerICSMR1)
  {
    if (Build.VERSION.SDK_INT >= 15)
    {
      paramTextToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener()
      {
        public final void onDone(String paramAnonymousString) {}
        
        public final void onError(String paramAnonymousString) {}
        
        public final void onStart(String paramAnonymousString) {}
      });
      return;
    }
    paramTextToSpeech.setOnUtteranceCompletedListener(new TextToSpeech.OnUtteranceCompletedListener()
    {
      public final void onUtteranceCompleted(String paramAnonymousString) {}
    });
  }
  
  static abstract interface UtteranceProgressListenerICSMR1
  {
    public abstract void onDone$552c4e01();
    
    public abstract void onError$552c4e01();
    
    public abstract void onStart$552c4e01();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.speech.tts.TextToSpeechICSMR1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
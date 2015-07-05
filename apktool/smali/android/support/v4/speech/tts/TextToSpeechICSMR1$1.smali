.class final Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/speech/tts/TextToSpeechICSMR1;->setUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;


# direct methods
.method constructor <init>(Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/v4/speech/tts/TextToSpeechICSMR1$1;->val$listener:Landroid/support/v4/speech/tts/TextToSpeechICSMR1$UtteranceProgressListenerICSMR1;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

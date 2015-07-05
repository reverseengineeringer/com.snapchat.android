.class Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/audio/AudioProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioDecoderDone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/audio/AudioProvider;


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;->this$0:Lcom/snapchat/videotranscoder/audio/AudioProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;->this$0:Lcom/snapchat/videotranscoder/audio/AudioProvider;

    const/4 v1, 0x1

    # setter for: Lcom/snapchat/videotranscoder/audio/AudioProvider;->mAudioDecoderDone:Z
    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioProvider;->access$302(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z

    .line 108
    return-void
.end method

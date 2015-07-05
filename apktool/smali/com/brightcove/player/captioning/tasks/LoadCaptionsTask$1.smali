.class Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$ResponseStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->doInBackground([Ljava/net/URI;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;


# direct methods
.method constructor <init>(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$1;->this$0:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamReady(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$1;->this$0:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/brightcove/player/captioning/WebVTTParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/brightcove/player/model/WebVTTDocument;

    move-result-object v1

    # setter for: Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentWebVTTDocument:Lcom/brightcove/player/model/WebVTTDocument;
    invoke-static {v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->access$002(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;Lcom/brightcove/player/model/WebVTTDocument;)Lcom/brightcove/player/model/WebVTTDocument;

    .line 86
    return-void
.end method

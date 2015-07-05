.class Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$2;
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
    .line 99
    iput-object p1, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$2;->this$0:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamReady(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$2;->this$0:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/brightcove/player/captioning/TTMLParser;->parseXml(Ljava/io/InputStream;Ljava/lang/String;)Lcom/brightcove/player/model/TTMLDocument;

    move-result-object v1

    # setter for: Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->currentTTMLDocument:Lcom/brightcove/player/model/TTMLDocument;
    invoke-static {v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->access$102(Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;Lcom/brightcove/player/model/TTMLDocument;)Lcom/brightcove/player/model/TTMLDocument;

    .line 102
    return-void
.end method

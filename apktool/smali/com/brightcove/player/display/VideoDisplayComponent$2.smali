.class Lcom/brightcove/player/display/VideoDisplayComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;->openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

.field final synthetic val$source:Lcom/brightcove/player/model/Source;

.field final synthetic val$video:Lcom/brightcove/player/model/Video;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput-object p2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->val$video:Lcom/brightcove/player/model/Video;

    iput-object p3, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->val$source:Lcom/brightcove/player/model/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->val$video:Lcom/brightcove/player/model/Video;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$2;->val$source:Lcom/brightcove/player/model/Source;

    # invokes: Lcom/brightcove/player/display/VideoDisplayComponent;->createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    invoke-static {v0, v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1500(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 332
    return-void
.end method

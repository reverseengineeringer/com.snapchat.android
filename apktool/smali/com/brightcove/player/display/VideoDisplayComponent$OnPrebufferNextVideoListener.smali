.class Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPrebufferNextVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 697
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "video"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    iput-object v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->nextVideo:Lcom/brightcove/player/model/Video;

    .line 698
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    iput-object v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->nextSource:Lcom/brightcove/player/model/Source;

    .line 699
    return-void
.end method

.class Lcom/brightcove/player/analytics/Analytics$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/analytics/Analytics;->initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "currentVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v0}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$300(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v1

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2}, Lcom/brightcove/player/analytics/Analytics;->access$200(Lcom/brightcove/player/analytics/Analytics;)I

    move-result v2

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    const-string v1, "video_impression"

    const/4 v2, 0x0

    # invokes: Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, p1, v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$500(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->endTime:I
    invoke-static {v2, v3}, Lcom/brightcove/player/analytics/Analytics;->access$202(Lcom/brightcove/player/analytics/Analytics;I)I

    move-result v2

    # setter for: Lcom/brightcove/player/analytics/Analytics;->startTime:I
    invoke-static {v1, v2}, Lcom/brightcove/player/analytics/Analytics;->access$302(Lcom/brightcove/player/analytics/Analytics;I)I

    move-result v1

    # setter for: Lcom/brightcove/player/analytics/Analytics;->duration:I
    invoke-static {v0, v1}, Lcom/brightcove/player/analytics/Analytics;->access$602(Lcom/brightcove/player/analytics/Analytics;I)I

    .line 264
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics$3;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # setter for: Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z
    invoke-static {v0, v3}, Lcom/brightcove/player/analytics/Analytics;->access$702(Lcom/brightcove/player/analytics/Analytics;Z)Z

    .line 265
    return-void
.end method

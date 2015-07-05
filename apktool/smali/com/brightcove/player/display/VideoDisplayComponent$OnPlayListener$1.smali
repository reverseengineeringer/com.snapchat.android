.class Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->processEvent(Lcom/brightcove/player/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    iput p2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;->this$1:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;->val$position:I

    # invokes: Lcom/brightcove/player/display/VideoDisplayComponent;->play(I)V
    invoke-static {v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1700(Lcom/brightcove/player/display/VideoDisplayComponent;I)V

    .line 542
    return-void
.end method

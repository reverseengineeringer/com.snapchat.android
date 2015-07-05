.class Lcom/brightcove/player/view/BrightcovePlayerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcovePlayerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcovePlayerFragment;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcovePlayerFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;->this$0:Lcom/brightcove/player/view/BrightcovePlayerFragment;

    iput-object p2, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;->this$0:Lcom/brightcove/player/view/BrightcovePlayerFragment;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcovePlayerFragment$2;->val$bundle:Landroid/os/Bundle;

    # invokes: Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcovePlayerFragment;->access$101(Lcom/brightcove/player/view/BrightcovePlayerFragment;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

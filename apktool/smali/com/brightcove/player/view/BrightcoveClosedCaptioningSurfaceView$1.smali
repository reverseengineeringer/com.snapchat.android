.class Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView$1;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;->invalidate()V

    .line 105
    return-void
.end method

.class Lcom/brightcove/player/display/VideoDisplayComponent$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$8;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 997
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 998
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$8;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0, p2, p3}, Lcom/brightcove/player/display/VideoDisplayComponent;->emitVideoSize(II)V

    .line 1000
    :cond_0
    return-void
.end method

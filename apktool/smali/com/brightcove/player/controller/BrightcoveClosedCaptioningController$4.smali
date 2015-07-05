.class Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;


# direct methods
.method constructor <init>(Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$4;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController$4;->this$0:Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;

    invoke-virtual {v0}, Lcom/brightcove/player/controller/BrightcoveClosedCaptioningController;->captionsDialogVisibleStatus()V

    .line 204
    return-void
.end method

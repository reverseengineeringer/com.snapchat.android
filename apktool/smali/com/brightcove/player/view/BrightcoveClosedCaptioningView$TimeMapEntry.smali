.class public Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeMapEntry"
.end annotation


# instance fields
.field public block:Landroid/view/ViewGroup;

.field public closedCaption:Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;Lcom/brightcove/player/captioning/BrightcoveClosedCaption;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->this$0:Lcom/brightcove/player/view/BrightcoveClosedCaptioningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->closedCaption:Lcom/brightcove/player/captioning/BrightcoveClosedCaption;

    .line 130
    iput-object p3, p0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningView$TimeMapEntry;->block:Landroid/view/ViewGroup;

    .line 131
    return-void
.end method

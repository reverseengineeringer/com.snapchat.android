.class Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$2;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$2;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->dismiss()V

    .line 642
    return-void
.end method

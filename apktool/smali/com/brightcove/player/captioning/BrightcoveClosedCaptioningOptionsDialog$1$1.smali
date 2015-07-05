.class Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->getMapColorsToTags()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;


# direct methods
.method constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;)V
    .locals 3

    .prologue
    .line 289
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 290
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_red_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_yellow_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_green_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_cyan:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_cyan_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_blue_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_magenta:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_magenta_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_white_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v0, v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brightcove/player/R$color;->closed_captioning_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->this$1:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;

    iget-object v1, v1, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brightcove/player/R$string;->closed_captioning_black_tag:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$1$1;->put(ILjava/lang/Object;)V

    .line 298
    return-void
.end method

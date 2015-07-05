.class final Lcom/snapchat/android/ui/caption/CaptionEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->d()V

    .line 454
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v1, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getTop()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 459
    return-void
.end method

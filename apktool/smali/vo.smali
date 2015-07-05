.class public final Lvo;
.super Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.source "SourceFile"


# instance fields
.field public b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;-><init>(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 15
    if-nez p2, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "decor container can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p2, p0, Lvo;->b:Landroid/widget/RelativeLayout;

    .line 19
    iget-object v0, p0, Lvo;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 20
    return-void
.end method

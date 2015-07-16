.class final Lwo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwo;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwo;


# direct methods
.method constructor <init>(Lwo;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lwo$1;->a:Lwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lwo$1;->a:Lwo;

    iget-object v0, v0, Lwo;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method

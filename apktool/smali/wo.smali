.class public final Lwo;
.super Lwj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lwj;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 18
    iget-object v0, p0, Lwo;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lwo;->f:Landroid/widget/TextView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lwo;->f:Landroid/widget/TextView;

    new-instance v1, Lwo$1;

    invoke-direct {v1, p0}, Lwo$1;-><init>(Lwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected final c(Z)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

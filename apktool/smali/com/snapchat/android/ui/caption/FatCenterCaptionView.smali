.class public Lcom/snapchat/android/ui/caption/FatCenterCaptionView;
.super Lcom/snapchat/android/ui/caption/FatCaptionView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private k()Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->k()Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 0

    .prologue
    .line 15
    check-cast p3, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    return-void
.end method

.method protected final a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 52
    const-string v0, "captionPositionState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;

    .line 54
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 56
    iget v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->f:I

    .line 57
    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->d:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCaptionPositionX(F)V

    .line 59
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView$1;-><init>(Lcom/snapchat/android/ui/caption/FatCenterCaptionView;Landroid/view/ViewTreeObserver;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/ui/caption/FatCenterCaptionView;->k()Lcom/snapchat/android/ui/caption/FatCenterCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CENTER_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method public onCaptionColorPickedEvent(Lapp;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;->onCaptionColorPickedEvent(Lapp;)V

    .line 64
    return-void
.end method

.method public onEditCaptionEvent(Lbbh;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;->onEditCaptionEvent(Lbbh;)V

    .line 30
    return-void
.end method

.method public onGlobalLayoutEvent(Lbbt;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;->onGlobalLayoutEvent(Lbbt;)V

    .line 25
    return-void
.end method

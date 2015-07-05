.class public Lcom/snapchat/android/ui/caption/VanillaCaptionView;
.super Lcom/snapchat/android/ui/caption/SnapCaptionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/SnapCaptionView",
        "<",
        "Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 33
    if-eqz p1, :cond_0

    const-string v0, "captionMaxLength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const-string v1, "captionMaxLength"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j:I

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;Z)V

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:Z

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaw;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 50
    :cond_2
    return-void
.end method

.method protected final synthetic b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b()V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->d:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setWidthPixels(I)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->c:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setHeightPixels(I)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    return-void
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->d:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setWidthPixels(I)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->c:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setHeightPixels(I)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->e:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setLandscapeMode(Z)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->d:I

    iget v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d59999a

    mul-float/2addr v2, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setTextSize(F)V

    .line 112
    return-void
.end method

.method public getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->NON_FAT_VANILLA_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method protected getLayout()Landroid/content/res/XmlResourceParser;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public onGlobalLayoutEvent(Lbbt;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getTop()I

    move-result v1

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getCaptionEditPosition()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getCaptionEditPosition()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setY(F)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 65
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->c:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 68
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 74
    iget v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->c:I

    sub-int/2addr v1, v0

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getKeyboardHeight()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setKeyboardHeight(I)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Z)V

    .line 82
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setText(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    goto :goto_0
.end method

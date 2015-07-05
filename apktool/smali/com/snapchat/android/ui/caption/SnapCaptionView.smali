.class public abstract Lcom/snapchat/android/ui/caption/SnapCaptionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/ui/caption/CaptionEditText;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/res/XmlResourceParser;

.field protected final b:Lcom/snapchat/android/ui/caption/CaptionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:Z

.field private final f:Lauv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 66
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 68
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setFocusableInTouchMode(Z)V

    .line 71
    new-instance v1, Lauv;

    invoke-direct {v1, p1}, Lauv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f:Lauv;

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getLayout()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    .line 73
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v2, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->f:Z

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d()Z

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c()V

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v3, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->f:Z

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardManager(Landroid/view/inputmethod/InputMethodManager;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 133
    float-to-double v2, v1

    const-wide v4, 0x3ffaa7ef9db22d0eL    # 1.666

    mul-double/2addr v2, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getKeyboardHeight()I

    move-result v1

    invoke-static {v0, v1}, Lajx;->a(ZI)V

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v1, "captionPreviousYPercentageOnScreen"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 146
    const-string v1, "captionViewText"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "isEditing"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string v1, "captionType"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "keyboardHeight"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getKeyboardHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v1, "captionInitializationColorSpans"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getColorSpans()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 152
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v1, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->j:I

    if-lez v1, :cond_0

    .line 153
    const-string v1, "captionMaxLength"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    :cond_0
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const-string v3, "keyboardHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardHeight(I)V

    .line 181
    const-string v2, "captionViewText"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_2

    .line 183
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v1, v3, Lcom/snapchat/android/ui/caption/CaptionEditText;->f:Z

    .line 184
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v0, v3, Lcom/snapchat/android/ui/caption/CaptionEditText;->f:Z

    .line 187
    :cond_2
    if-nez p2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 194
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const-string v3, "isEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    .line 196
    const-string v2, "captionInitializationColorSpans"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setColorSpans(Ljava/util/ArrayList;)V

    .line 200
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0, p1, p2, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 203
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v2, :cond_5

    .line 204
    if-eqz p2, :cond_4

    .line 205
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c()V

    .line 215
    :goto_2
    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbh;

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    invoke-direct {v1, v2}, Lbbh;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    goto :goto_1

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b()V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setSelection(I)V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "ZTT;)V"
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "captionPreviousYPercentageOnScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    .line 232
    :cond_0
    invoke-virtual {p3, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 233
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    goto :goto_0
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 118
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lavh;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 99
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    if-eq v0, v3, :cond_2

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v0, v2}, Lavh;->a(Landroid/util/DisplayMetrics;Z)I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d:I

    .line 103
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v0, v2}, Lavh;->b(Landroid/util/DisplayMetrics;Z)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setLandscapeMode(Z)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v2}, Lajx;->o(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardHeight(I)V

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b()V

    .line 113
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 98
    goto :goto_0

    :cond_2
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lavh;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v0, v1}, Lavh;->b(Landroid/util/DisplayMetrics;Z)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(I)V

    .line 257
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    return v0
.end method

.method protected getAttributes()Landroid/util/AttributeSet;
    .locals 4

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    const/4 v2, 0x0

    .line 350
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 354
    :goto_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EditText"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 362
    :goto_2
    return-object v0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    :goto_3
    const-string v3, "SnapCaptionView"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1

    .line 360
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_2

    .line 351
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public getCaptionAnalyticsDetails()Lapo;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getAnalyticsDetails()Lapo;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCaptionPositionX()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getCaptionPositionY()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCaptionTop()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getTop()I

    move-result v0

    return v0
.end method

.method public abstract getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
.end method

.method protected abstract getLayout()Landroid/content/res/XmlResourceParser;
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:Z

    .line 411
    return-void
.end method

.method public onKeyDownEvent(Lbbv;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p1, Lbbv;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-wide v0, 0x3fe3d70a3d70a3d7L    # 0.62

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-object v1, p1, Lbbv;->event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCaptionEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    return-void
.end method

.method protected setCaptionPositionX(I)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionX(F)V

    .line 427
    return-void
.end method

.method protected setCaptionPositionY(I)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 419
    return-void
.end method

.method public setInterface(Laps;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setInterface(Laps;)V

    .line 122
    return-void
.end method

.method public setIsVideoSnap(Z)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setIsVideoSnap(Z)V

    .line 431
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-static {v0}, Lavh;->a(Landroid/view/View;)I

    move-result v0

    .line 377
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 378
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_PORTRAIT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 380
    if-ne v1, v3, :cond_0

    .line 381
    iget v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(II)V

    .line 386
    return-void

    .line 383
    :cond_0
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    goto :goto_0
.end method

.class public abstract Lcom/snapchat/android/ui/caption/CaptionEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;,
        Lcom/snapchat/android/ui/caption/CaptionEditText$a;,
        Lcom/snapchat/android/ui/caption/CaptionEditText$b;
    }
.end annotation


# static fields
.field private static final q:D


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;"
        }
    .end annotation
.end field

.field a:Z

.field protected b:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

.field protected c:Laqr;

.field protected d:I

.field protected e:Z

.field protected f:Z

.field g:Z

.field protected h:Z

.field i:Z

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:I

.field protected o:I

.field protected p:Landroid/text/TextWatcher;

.field private r:Landroid/view/inputmethod/InputMethodManager;

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->q:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    .line 47
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->b:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    .line 50
    iput v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:I

    .line 52
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    .line 53
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 54
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:Z

    .line 56
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    .line 69
    iput v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->j:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->A:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    .line 83
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    .line 88
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->m:Z

    .line 93
    iput v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->n:I

    .line 94
    iput v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->o:I

    .line 101
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/CaptionEditText$1;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->x:F

    .line 111
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->clearFocus()V

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/CaptionEditText;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    return p1
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(FF)V
    .locals 0

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionX(F)V

    .line 496
    invoke-virtual {p0, p2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 497
    return-void
.end method

.method protected final a(II)V
    .locals 1

    .prologue
    .line 158
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setX(F)V

    .line 159
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setY(F)V

    .line 160
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b()V

    .line 169
    iput-boolean v3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    .line 170
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    .line 173
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setAlpha(F)V

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->invalidate()V

    .line 177
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    if-eqz v0, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    .line 199
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->requestFocus()Z

    .line 183
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setY(F)V

    .line 188
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$a;

    invoke-direct {v0, p0, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText$a;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V

    .line 192
    :goto_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->r:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->b:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 195
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setSelection(I)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 198
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbch;

    invoke-direct {v1, v3}, Lbch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getOpenAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 404
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 405
    if-ne v1, v0, :cond_1

    .line 406
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    if-nez v1, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getCaptionEditPosition()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getOffsetForPosition(FF)I

    move-result v1

    .line 408
    if-ltz v1, :cond_0

    .line 409
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setSelection(I)V

    .line 412
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    .line 415
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Landroid/view/MotionEvent;)V
.end method

.method public abstract b(Z)V
.end method

.method protected c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    .line 237
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->requestFocus()Z

    .line 238
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbch;

    invoke-direct {v1, v2}, Lbch;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->r:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->b:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 240
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x4b

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getBottom()I

    move-result v1

    add-int/lit8 v1, v1, 0x4b

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 423
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 424
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->n:I

    .line 427
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v4

    sub-float v0, v1, v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->o:I

    .line 429
    return-void
.end method

.method protected abstract getAnalyticsDetails()Laqn;
.end method

.method protected abstract getCaptionEditPosition()I
.end method

.method protected abstract getCloseAnimation()Landroid/view/animation/Animation;
.end method

.method protected getColorSpans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getKeyboardHeight()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:I

    return v0
.end method

.method protected getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->r:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method protected getLastSelectedCenterPoint()[F
    .locals 4

    .prologue
    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 513
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionX()F

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 514
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionY()F

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 515
    return-object v0
.end method

.method protected getLastSelectedPositionX()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->t:F

    return v0
.end method

.method protected getLastSelectedPositionY()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->u:F

    return v0
.end method

.method protected abstract getOpenAnimation()Landroid/view/animation/Animation;
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    .line 144
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->s:Z

    .line 337
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->r:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->b:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 445
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->requestFocus()Z

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getTop()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->n:I

    if-lt v0, v1, :cond_0

    .line 448
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 450
    new-instance v1, Lcom/snapchat/android/ui/caption/CaptionEditText$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/caption/CaptionEditText$2;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 462
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionEditText$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText$3;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->post(Ljava/lang/Runnable;)Z

    .line 471
    iput-boolean v3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 343
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-eqz v3, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 396
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->k:Z

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->v:F

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->w:F

    .line 352
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->d()V

    goto :goto_1

    .line 357
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 361
    iget v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->w:F

    sub-float v4, v3, v4

    .line 362
    iget v5, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->v:F

    sub-float v5, v2, v5

    .line 364
    iget v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->y:F

    .line 365
    iget v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->z:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->z:F

    .line 367
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->x:F

    cmpl-float v4, v4, v6

    if-gez v4, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->x:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->y:F

    iget v5, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->x:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->z:F

    iget v5, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 369
    :cond_2
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    .line 372
    :cond_3
    iget-boolean v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->m:Z

    if-nez v4, :cond_5

    .line 373
    iget v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    iget v6, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->z:F

    float-to-double v6, v6

    sget-wide v8, Lcom/snapchat/android/ui/caption/CaptionEditText;->q:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->m:Z

    .line 377
    :cond_5
    iput v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->v:F

    .line 378
    iput v3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->w:F

    goto :goto_1

    .line 384
    :pswitch_2
    iput v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->y:F

    .line 385
    iput v4, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->z:F

    .line 386
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    if-eqz v2, :cond_6

    .line 387
    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->l:Z

    goto/16 :goto_1

    .line 389
    :cond_6
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    goto/16 :goto_1

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setCaptionPositionX(F)V
    .locals 0

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setX(F)V

    .line 486
    iput p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->t:F

    .line 487
    return-void
.end method

.method protected setCaptionPositionY(F)V
    .locals 0

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setY(F)V

    .line 491
    iput p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->u:F

    .line 492
    return-void
.end method

.method protected setColorSpans(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->A:Ljava/util/ArrayList;

    .line 573
    return-void
.end method

.method public setInterface(Laqr;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->c:Laqr;

    .line 528
    return-void
.end method

.method protected setIsVideoSnap(Z)V
    .locals 0

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->i:Z

    .line 544
    return-void
.end method

.method protected setKeyboardHeight(I)V
    .locals 0

    .prologue
    .line 531
    iput p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:I

    .line 532
    return-void
.end method

.method protected setKeyboardManager(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->r:Landroid/view/inputmethod/InputMethodManager;

    .line 478
    return-void
.end method

.method protected setLandscapeMode(Z)V
    .locals 0

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    .line 540
    return-void
.end method

.method protected setMaxTextLengthInputFilter(I)V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 204
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 205
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 206
    iput p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText;->j:I

    .line 207
    return-void
.end method

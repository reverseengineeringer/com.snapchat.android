.class final Lnet/simonvt/numberpicker/SnapchatTimePicker$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

.field private final b:Landroid/graphics/Rect;

.field private final c:[I

.field private d:I


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 1

    .prologue
    .line 1996
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2005
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->b:Landroid/graphics/Rect;

    .line 2007
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->c:[I

    .line 2009
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    return-void
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2299
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2300
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2301
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2302
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2303
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2304
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2305
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2306
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2307
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2308
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->b:Landroid/graphics/Rect;

    .line 2309
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2311
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2312
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->c:[I

    .line 2314
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getLocationOnScreen([I)V

    .line 2315
    const/4 v3, 0x0

    aget v3, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2316
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2318
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v1, p1, :cond_0

    .line 2319
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2321
    :cond_0
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v1, p1, :cond_1

    .line 2322
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2324
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2325
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2328
    :cond_2
    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 2240
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2242
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2243
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2244
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2245
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2246
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2247
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2249
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 2253
    packed-switch p2, :pswitch_data_0

    .line 2283
    :cond_0
    :goto_0
    return-void

    .line 2255
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 2256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2262
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2268
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2276
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 2277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 2388
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 2392
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2396
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->j(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2397
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2398
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)I

    move-result v0

    .line 2400
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2401
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m(Lnet/simonvt/numberpicker/SnapchatTimePicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)Ljava/lang/String;

    move-result-object v0

    .line 2404
    :goto_0
    return-object v0

    .line 2401
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m(Lnet/simonvt/numberpicker/SnapchatTimePicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 2404
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2408
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->j(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2409
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2410
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)I

    move-result v0

    .line 2412
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2413
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m(Lnet/simonvt/numberpicker/SnapchatTimePicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)Ljava/lang/String;

    move-result-object v0

    .line 2416
    :goto_0
    return-object v0

    .line 2413
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m(Lnet/simonvt/numberpicker/SnapchatTimePicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 2416
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    .line 2209
    packed-switch p1, :pswitch_data_0

    .line 2226
    :cond_0
    :goto_0
    return-void

    .line 2211
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2217
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 2220
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 2209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x3

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x2

    .line 2013
    packed-switch p1, :pswitch_data_0

    .line 2030
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 2015
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollY()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getLeft()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollY()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getTop()I

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const-class v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2, v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v0, v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v0, v4, :cond_4

    const/16 v0, 0x80

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_6

    :cond_5
    const/16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_8

    :cond_7
    const/16 v0, 0x2000

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8
    move-object v0, v2

    goto/16 :goto_0

    .line 2018
    :pswitch_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollY()I

    move-result v4

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    move-result v0

    iget-object v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v5

    iget-object v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v0

    iget-object v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2023
    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v1, v3, :cond_9

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_9
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v1, v3, :cond_0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto/16 :goto_0

    .line 2025
    :pswitch_4
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    move-result v3

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    sub-int v4, v0, v1

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v1

    iget-object v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getLeft()I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v0, v1

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v1

    iget-object v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getTop()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v6}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2013
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2059
    :goto_0
    return-object v0

    .line 2039
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2041
    packed-switch p2, :pswitch_data_0

    .line 2059
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2043
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2045
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 2047
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2054
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2041
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2064
    packed-switch p1, :pswitch_data_0

    .line 2205
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2066
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2068
    :sswitch_0
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v2, p1, :cond_0

    .line 2069
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2071
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2072
    goto :goto_1

    .line 2076
    :sswitch_1
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v2, p1, :cond_0

    .line 2077
    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2079
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move v0, v1

    .line 2080
    goto :goto_1

    .line 2085
    :sswitch_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2087
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    move v0, v1

    .line 2088
    goto :goto_1

    .line 2092
    :sswitch_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2094
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    move v0, v1

    .line 2095
    goto :goto_1

    .line 2101
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2139
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2103
    :sswitch_4
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2104
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2108
    :sswitch_5
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2109
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    move v0, v1

    .line 2110
    goto/16 :goto_1

    .line 2115
    :sswitch_6
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2116
    goto/16 :goto_1

    .line 2121
    :sswitch_7
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v2, p1, :cond_0

    .line 2122
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2123
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2125
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    move v0, v1

    .line 2126
    goto/16 :goto_1

    .line 2130
    :sswitch_8
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v2, p1, :cond_0

    .line 2131
    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2132
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2134
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    move v0, v1

    .line 2135
    goto/16 :goto_1

    .line 2144
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2146
    :sswitch_9
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2147
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    .line 2148
    invoke-virtual {p0, p1, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    move v0, v1

    .line 2150
    goto/16 :goto_1

    .line 2154
    :sswitch_a
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v2, p1, :cond_0

    .line 2155
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2156
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2158
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    move v0, v1

    .line 2159
    goto/16 :goto_1

    .line 2163
    :sswitch_b
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v2, p1, :cond_0

    .line 2164
    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2165
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2167
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v4

    iget-object v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    move v0, v1

    .line 2168
    goto/16 :goto_1

    .line 2174
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2176
    :sswitch_c
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2177
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2178
    :cond_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    .line 2179
    invoke-virtual {p0, p1, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    move v0, v1

    .line 2181
    goto/16 :goto_1

    .line 2185
    :sswitch_d
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-eq v2, p1, :cond_0

    .line 2186
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2187
    invoke-virtual {p0, p1, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2189
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    move v0, v1

    .line 2190
    goto/16 :goto_1

    .line 2194
    :sswitch_e
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    if-ne v2, p1, :cond_0

    .line 2195
    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->d:I

    .line 2196
    invoke-virtual {p0, p1, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a(II)V

    .line 2198
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$a;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    move v0, v1

    .line 2199
    goto/16 :goto_1

    .line 2064
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2066
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2101
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch

    .line 2144
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_9
        0x40 -> :sswitch_a
        0x80 -> :sswitch_b
    .end sparse-switch

    .line 2174
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_c
        0x40 -> :sswitch_d
        0x80 -> :sswitch_e
    .end sparse-switch
.end method

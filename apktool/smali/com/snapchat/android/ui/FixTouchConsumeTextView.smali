.class public Lcom/snapchat/android/ui/FixTouchConsumeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 39
    if-eq v4, v2, :cond_0

    if-nez v4, :cond_5

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 42
    :goto_0
    if-nez v1, :cond_1

    .line 43
    new-array v1, v3, [Landroid/text/style/ClickableSpan;

    .line 46
    :cond_1
    array-length v5, v1

    if-eqz v5, :cond_4

    .line 47
    if-nez v4, :cond_2

    .line 48
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v4, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    move v0, v2

    .line 60
    :goto_1
    return v0

    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    int-to-float v5, v5

    invoke-virtual {v1, v6, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    move v0, v3

    .line 55
    goto :goto_1

    :cond_5
    move v0, v1

    .line 60
    goto :goto_1
.end method

.method public setTextViewHTML(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

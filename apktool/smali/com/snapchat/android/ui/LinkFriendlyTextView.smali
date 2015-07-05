.class public Lcom/snapchat/android/ui/LinkFriendlyTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/LinkFriendlyTextView$URLSpanNoUnderline;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LinkFriendlyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/LinkFriendlyTextView;->setLinkTextColor(I)V

    .line 29
    invoke-static {p0}, Lcom/snapchat/android/ui/LinkFriendlyTextView;->a(Landroid/widget/TextView;)V

    .line 30
    return-void
.end method

.method private static a(Landroid/widget/TextView;)V
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 38
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 40
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 41
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 42
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 43
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 44
    new-instance v8, Lcom/snapchat/android/ui/LinkFriendlyTextView$URLSpanNoUnderline;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/snapchat/android/ui/LinkFriendlyTextView$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v8, v6, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

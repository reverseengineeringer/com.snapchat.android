.class public Lcom/snapchat/android/ui/cash/CardExpiryEditText;
.super Lcom/snapchat/android/ui/StickyEndEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Calendar;

.field final b:Ljava/util/Calendar;

.field public c:Z

.field private d:Landroid/view/animation/Animation;

.field private e:Lye;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/StickyEndEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    .line 38
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    .line 45
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;-><init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;B)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    const-string v0, "0123456789//"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Landroid/text/Editable;)Ljava/lang/StringBuilder;
    .locals 12

    .prologue
    const/16 v11, 0x31

    const/16 v10, 0x30

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v9, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    if-le v5, v11, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v11, :cond_2

    if-lt v5, v10, :cond_3

    const/16 v2, 0x32

    if-gt v5, v2, :cond_3

    :cond_2
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_0

    if-ne v5, v10, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :pswitch_3
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v7, v6, 0x64

    sub-int v7, v6, v7

    mul-int/lit8 v8, v2, 0xa

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x9

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v7

    if-lt v8, v6, :cond_4

    add-int/lit8 v6, v6, 0x19

    if-ge v2, v6, :cond_4

    move v2, v3

    :goto_3
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :pswitch_4
    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v6, v0, 0x1

    invoke-interface {p1, v2, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/lit8 v8, v7, 0x64

    sub-int v8, v7, v8

    add-int/2addr v2, v8

    if-ge v2, v7, :cond_5

    add-int/lit8 v2, v2, 0x64

    :cond_5
    if-ne v2, v7, :cond_7

    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v6, v2, :cond_6

    move v2, v3

    :goto_4
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    sub-int/2addr v2, v7

    const/16 v6, 0x19

    if-gt v2, v6, :cond_8

    move v2, v3

    goto :goto_4

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lye;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lye;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lye;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lye;

    invoke-interface {v0}, Lye;->c()V

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnformattedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValidatedInputCallback(Lye;)V
    .locals 0
    .param p1    # Lye;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lye;

    .line 52
    return-void
.end method

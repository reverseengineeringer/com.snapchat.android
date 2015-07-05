.class public Lcom/snapchat/android/ui/cash/CardNumberEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/CardNumberEditText$a;
    }
.end annotation


# instance fields
.field public a:Latb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lye;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)V

    .line 35
    const-string v0, "0123456789 "

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 36
    new-instance v0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;-><init>(Lcom/snapchat/android/ui/cash/CardNumberEditText;B)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    return-void
.end method

.method static synthetic a(Landroid/text/Editable;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v0, v2, :cond_4

    const/16 v2, 0x13

    if-ge v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText;->b:Lye;

    return-object v0
.end method


# virtual methods
.method public getCardInputError()Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Latb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    .line 49
    :goto_1
    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getUnformattedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
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
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText;->b:Lye;

    .line 54
    return-void
.end method

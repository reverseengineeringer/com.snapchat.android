.class public Lcom/snapchat/android/ui/cash/CardCvvEditText;
.super Lcom/snapchat/android/ui/StickyEndEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/CardCvvEditText$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Lye;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/StickyEndEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a:Z

    .line 27
    new-instance v0, Lcom/snapchat/android/ui/cash/CardCvvEditText$a;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText$a;-><init>(Lcom/snapchat/android/ui/cash/CardCvvEditText;B)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 28
    const-string v0, "0123456789"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardCvvEditText;)Lye;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b:Lye;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardCvvEditText;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b:Lye;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b:Lye;

    invoke-interface {v0}, Lye;->c()V

    .line 48
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnformattedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

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
    .line 32
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b:Lye;

    .line 33
    return-void
.end method

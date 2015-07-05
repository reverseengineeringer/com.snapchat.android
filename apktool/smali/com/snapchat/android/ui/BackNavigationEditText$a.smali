.class final Lcom/snapchat/android/ui/BackNavigationEditText$a;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/BackNavigationEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/BackNavigationEditText;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/BackNavigationEditText;Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/ui/BackNavigationEditText$a;->a:Lcom/snapchat/android/ui/BackNavigationEditText;

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .locals 5

    .prologue
    const/16 v4, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 68
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/BackNavigationEditText$a;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/BackNavigationEditText$a;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 72
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/BackNavigationEditText$a;->a:Lcom/snapchat/android/ui/BackNavigationEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/BackNavigationEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

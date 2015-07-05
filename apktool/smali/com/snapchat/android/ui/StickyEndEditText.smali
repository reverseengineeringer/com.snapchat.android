.class public Lcom/snapchat/android/ui/StickyEndEditText;
.super Lcom/snapchat/android/ui/BackNavigationEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/StickyEndEditText$SavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/BackNavigationEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 32
    instance-of v0, p1, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/BackNavigationEditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    check-cast p1, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;

    .line 38
    invoke-virtual {p1}, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/snapchat/android/ui/BackNavigationEditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 40
    iget-object v0, p1, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/StickyEndEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/snapchat/android/ui/BackNavigationEditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 25
    invoke-virtual {p0}, Lcom/snapchat/android/ui/StickyEndEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/ui/StickyEndEditText$SavedState;->a:Ljava/lang/String;

    .line 27
    return-object v1
.end method

.method public onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/ui/StickyEndEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/StickyEndEditText;->setSelection(II)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/BackNavigationEditText;->onSelectionChanged(II)V

    goto :goto_0
.end method

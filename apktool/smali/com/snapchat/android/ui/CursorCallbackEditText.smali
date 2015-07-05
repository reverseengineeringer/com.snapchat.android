.class public Lcom/snapchat/android/ui/CursorCallbackEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CursorCallbackEditText$a;,
        Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/CursorCallbackEditText$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 48
    instance-of v0, p1, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;

    if-nez v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    check-cast p1, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;

    .line 54
    invoke-virtual {p1}, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 56
    iget-object v0, p1, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/ui/CursorCallbackEditText$SavedState;->a:Ljava/lang/String;

    .line 43
    return-object v1
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/CursorCallbackEditText;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/CursorCallbackEditText;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CursorCallbackEditText$a;

    .line 74
    invoke-interface {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText$a;->a()V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

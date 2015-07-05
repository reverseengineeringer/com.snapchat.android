.class public final Lapq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 12
    instance-of v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    .line 14
    iget-boolean v0, p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v4

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionStart()I

    move-result v1

    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionEnd()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 20
    if-ne v1, v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 21
    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 24
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(II)V

    goto :goto_0
.end method

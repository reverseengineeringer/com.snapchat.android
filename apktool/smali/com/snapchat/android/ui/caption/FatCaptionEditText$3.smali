.class final Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

.field private b:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v1, v2, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 149
    invoke-static {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    if-le v3, v4, :cond_4

    .line 156
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:Laqr;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:Laqr;

    invoke-interface {v0, v2}, Laqr;->a(Ljava/lang/String;)V

    .line 159
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->i:Z

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbx;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lbbx;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 155
    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

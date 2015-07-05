.class final Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

.field private b:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->f:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v5, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    move-object v0, v1

    :goto_1
    invoke-virtual {v5}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const v6, 0x3f79999a    # 0.975f

    iget v7, v5, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->q:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    .line 67
    :cond_3
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setMaxTextLengthInputFilter(I)V

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iput-boolean v2, v1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->f:Z

    .line 73
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 74
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j:I

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iput-boolean v3, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->f:Z

    .line 91
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->h:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaw;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j:I

    if-lez v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v4, v4, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j:I

    .line 83
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    if-le v0, v4, :cond_7

    move v0, v2

    .line 84
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    .line 85
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c:Laps;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c:Laps;

    invoke-interface {v0, v1}, Laps;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 83
    goto :goto_4

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->i:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaw;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

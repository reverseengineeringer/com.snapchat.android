.class final Lcom/snapchat/android/ui/cash/CardNumberEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/cash/CardNumberEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/cash/CardNumberEditText;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->b:Ljava/lang/CharSequence;

    .line 92
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    .line 94
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->e:Z

    .line 95
    iput v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/cash/CardNumberEditText;B)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;-><init>(Lcom/snapchat/android/ui/cash/CardNumberEditText;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->e:Z

    if-eqz v0, :cond_2

    .line 121
    iput-boolean v3, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    .line 122
    iget v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->f:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->f:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 123
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->e:Z

    .line 124
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    .line 126
    :cond_2
    invoke-static {p1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Landroid/text/Editable;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 132
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Latb;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;

    move-result-object v1

    invoke-interface {v1}, Lye;->b()V

    .line 149
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->b:Ljava/lang/CharSequence;

    .line 150
    iput-boolean v3, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    .line 151
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 156
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 157
    iget-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->d:Z

    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setSelection(I)V

    .line 160
    :cond_5
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->c:Z

    goto :goto_0

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;

    move-result-object v1

    invoke-interface {v1}, Lye;->a()V

    goto :goto_1

    .line 140
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_8
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->a:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a(Lcom/snapchat/android/ui/cash/CardNumberEditText;)Lye;

    move-result-object v1

    invoke-interface {v1}, Lye;->a()V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 102
    if-ge p4, p3, :cond_1

    .line 103
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->d:Z

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 105
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->e:Z

    .line 106
    iput p2, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->f:I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->d:Z

    .line 110
    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardNumberEditText$a;->e:Z

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

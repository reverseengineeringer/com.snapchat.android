.class final Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/cash/CardExpiryEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->b:Ljava/lang/CharSequence;

    .line 169
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->c:Z

    .line 170
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;-><init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->d:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Landroid/text/Editable;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 188
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->c:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    iget-object v4, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "[0-9]{2}/[0-9]{2}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    const/16 v6, 0xc

    if-le v5, v6, :cond_5

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lye;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lye;

    move-result-object v0

    invoke-interface {v0}, Lye;->b()V

    .line 206
    :cond_3
    :goto_2
    iput-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->b:Ljava/lang/CharSequence;

    .line 208
    :cond_4
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->d:Z

    .line 209
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 210
    iput-boolean v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->d:Z

    goto :goto_0

    .line 194
    :cond_5
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v6, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v7, v6, 0x64

    sub-int v7, v6, v7

    add-int/2addr v0, v7

    if-ge v0, v6, :cond_6

    add-int/lit8 v0, v0, 0x64

    :cond_6
    iget-object v7, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v7, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v7, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    const/4 v8, 0x2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v5, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    iget-object v7, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->set(II)V

    iget-object v5, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v9, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v5, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    iget-object v4, v4, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sub-int/2addr v0, v6

    const/16 v4, 0x19

    if-gt v0, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lye;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lye;

    move-result-object v0

    invoke-interface {v0}, Lye;->a()V

    goto :goto_2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 174
    if-nez p4, :cond_0

    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$a;->c:Z

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

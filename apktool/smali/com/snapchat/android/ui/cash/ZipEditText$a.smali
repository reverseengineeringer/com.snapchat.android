.class final Lcom/snapchat/android/ui/cash/ZipEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/cash/ZipEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/ZipEditText;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/cash/ZipEditText;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/cash/ZipEditText;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/ZipEditText$a;-><init>(Lcom/snapchat/android/ui/cash/ZipEditText;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;Z)Z

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;)Lye;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;)Lye;

    move-result-object v1

    invoke-interface {v1}, Lye;->b()V

    .line 79
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->b:Ljava/lang/CharSequence;

    .line 81
    :cond_1
    return-void

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;Z)Z

    .line 76
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;)Lye;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ZipEditText$a;->a:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->a(Lcom/snapchat/android/ui/cash/ZipEditText;)Lye;

    move-result-object v1

    invoke-interface {v1}, Lye;->a()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

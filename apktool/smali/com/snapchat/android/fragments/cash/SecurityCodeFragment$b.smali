.class final Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;B)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Forgot to set a callback on SecurityCodeFragment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$b;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;->a(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

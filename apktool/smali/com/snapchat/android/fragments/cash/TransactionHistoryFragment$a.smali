.class final Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;B)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;-><init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a:Lyj;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a:Lyj;

    invoke-virtual {v0}, Lyj;->a()Lym;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "We shouldn\'t ever be creating a SquareRequestTask with a null CashAuthToken!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:var authorizationToken=\'Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lym;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->b:Z

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    .line 85
    :cond_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->b:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

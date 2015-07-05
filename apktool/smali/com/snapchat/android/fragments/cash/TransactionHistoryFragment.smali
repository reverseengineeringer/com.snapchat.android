.class public Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;
.super Lcom/snapchat/android/fragments/settings/WebFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;
    }
.end annotation


# instance fields
.field public a:Lxn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V
    .locals 2

    .prologue
    .line 23
    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    const-string v1, "client"

    const-string v2, "chartreuse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-super {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const v0, 0x7f0400af

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->mFragmentLayout:Landroid/view/View;

    .line 48
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$a;-><init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

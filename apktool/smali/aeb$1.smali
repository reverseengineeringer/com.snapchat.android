.class final Laeb$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/DSnapPage;

.field final synthetic b:Laeb;


# direct methods
.method constructor <init>(Laeb;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Laeb$1;->b:Laeb;

    iput-object p2, p0, Laeb$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 98
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Laeb$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-static {v0, v1}, Laeb;->a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Laeb;->g()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Laeb$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-static {p2, v0}, Laeb;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Laeb;->g()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Laeb$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-static {p2, v0}, Laeb;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

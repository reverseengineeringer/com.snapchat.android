.class public final Lafb;
.super Laey;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final d:Lafv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    new-instance v1, Lafv;

    invoke-direct {v1}, Lafv;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lafb;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/debug/ReleaseManager;Lafv;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/util/debug/ReleaseManager;Lafv;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Laey;-><init>()V

    .line 54
    iput-object p1, p0, Lafb;->b:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lafb;->c:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 56
    iput-object p3, p0, Lafb;->d:Lafv;

    .line 57
    return-void
.end method

.method static a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "file"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lafb;->a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method

.method static synthetic h()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .locals 5
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Laeb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laji;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-static {p1, v0}, Laws;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    new-instance v0, Lakh$a;

    invoke-direct {v0}, Lakh$a;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lakh$a;->mShouldHideSystemUi:Z

    invoke-virtual {v0}, Lakh$a;->a()Lakh;

    move-result-object v2

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p2, v4, v4, v0, v3}, Lafv;->a(Laeb;IIII)V

    .line 181
    new-instance v0, Lakf$a;

    invoke-direct {v0}, Lakf$a;-><init>()V

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lakf$a;

    iput-boolean v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v0, Lakf$a;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Lakf$a;

    iput-object v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lakh;

    check-cast v0, Lakf$a;

    iput-object p2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    check-cast v0, Lakf$a;

    invoke-virtual {v0}, Lakf$a;->c()Lakf;

    move-result-object v0

    .line 192
    :cond_0
    return-object v0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lafb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object v0, p0, Lafb;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lafb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    iget-object v0, p0, Lafb;->a:Landroid/webkit/WebView;

    new-instance v1, Lafb$1;

    invoke-direct {v1, p0, p2}, Lafb$1;-><init>(Lafb;Lcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object v1, p0, Lafb;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    iget-object v0, p0, Lafb;->a:Landroid/webkit/WebView;

    new-instance v1, Lafb$2;

    invoke-direct {v1, p0}, Lafb$2;-><init>(Lafb;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return v4
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lafb;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

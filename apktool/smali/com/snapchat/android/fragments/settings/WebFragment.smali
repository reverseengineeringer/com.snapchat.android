.class public Lcom/snapchat/android/fragments/settings/WebFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field public b:Landroid/webkit/WebView;

.field public c:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 81
    if-nez p1, :cond_0

    const-string p1, "https://accounts.snapchat.com"

    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->a:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->d:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->f:Z

    .line 84
    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->e:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/fragments/settings/WebFragment;)V

    .line 86
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    .line 252
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 262
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Lakr;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lpj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v0, "Unknown"

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/WebFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/WebFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f0a03bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/WebFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/WebFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/WebFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/WebFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 188
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->f:Z

    if-eqz v0, :cond_4

    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "req_token"

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "timestamp"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os_version"

    const-string v3, "Android"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sc_version"

    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device"

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->c:Laum;

    invoke-virtual {v4, v0}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1f00

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gpu_arch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "next"

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/accounts/client_native_auth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->a:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f0400d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->mFragmentLayout:Landroid/view/View;

    .line 96
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 272
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 273
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/WebFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 108
    :cond_0
    return-void
.end method

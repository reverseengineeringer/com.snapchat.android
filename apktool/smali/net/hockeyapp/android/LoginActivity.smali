.class public Lnet/hockeyapp/android/LoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lbwa;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 167
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v0, v2, v1

    .line 174
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_2
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 184
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const/16 v0, 0x3003

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v4, p0, Lnet/hockeyapp/android/LoginActivity;->c:I

    if-ne v4, v1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    const-string v1, "email"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "authcode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/hockeyapp/android/LoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/hockeyapp/android/LoginActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Lbwa;

    iget-object v2, p0, Lnet/hockeyapp/android/LoginActivity;->e:Landroid/os/Handler;

    iget-object v3, p0, Lnet/hockeyapp/android/LoginActivity;->a:Ljava/lang/String;

    iget v4, p0, Lnet/hockeyapp/android/LoginActivity;->c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbwa;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/util/Map;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    invoke-static {v0}, Lbwd;->a(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget v4, p0, Lnet/hockeyapp/android/LoginActivity;->c:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_3
    const-string v2, "email"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "password"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    const/16 v0, 0x501

    invoke-static {v0}, Lbvi;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x3005
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lnet/hockeyapp/android/views/LoginView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/LoginView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/LoginActivity;->a:Ljava/lang/String;

    .line 91
    const-string v1, "secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/LoginActivity;->b:Ljava/lang/String;

    .line 92
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/hockeyapp/android/LoginActivity;->c:I

    .line 95
    :cond_0
    iget v0, p0, Lnet/hockeyapp/android/LoginActivity;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    const/16 v0, 0x3005

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lnet/hockeyapp/android/LoginActivity$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/LoginActivity$1;-><init>(Lnet/hockeyapp/android/LoginActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->e:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0}, Lnet/hockeyapp/android/LoginActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    check-cast v0, Lbwa;

    iput-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    .line 102
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    iget-object v1, p0, Lnet/hockeyapp/android/LoginActivity;->e:Landroid/os/Handler;

    iput-object p0, v0, Lbwa;->a:Landroid/content/Context;

    iput-object v1, v0, Lbwa;->b:Landroid/os/Handler;

    .line 104
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 201
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 202
    sget-object v1, Lbvf;->b:Lbvg;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lbvf;->a:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    const-string v2, "net.hockeyapp.android.EXIT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    iput-object v1, v0, Lbwa;->a:Landroid/content/Context;

    iput-object v1, v0, Lbwa;->b:Landroid/os/Handler;

    iput-object v1, v0, Lbwa;->c:Landroid/app/ProgressDialog;

    .line 230
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/LoginActivity;->d:Lbwa;

    return-object v0
.end method

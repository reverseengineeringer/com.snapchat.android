.class public Lnet/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbvl;


# instance fields
.field protected a:Lbvy;

.field protected b:Lbwm;

.field private final c:I

.field private d:Lbvq;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/UpdateActivity;->c:I

    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/UpdateActivity;)Lbvq;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 287
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Lnet/hockeyapp/android/UpdateActivity$2;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/UpdateActivity$2;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    new-instance v2, Lbvy;

    invoke-direct {v2, p0, v0, v1}, Lbvy;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V

    iput-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    invoke-static {v0}, Lbwd;->a(Landroid/os/AsyncTask;)V

    .line 176
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 220
    const/16 v0, 0x1004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    return-void
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 230
    const/4 v0, -0x1

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->e:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lbvq;

    invoke-direct {v0}, Lbvq;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    .line 304
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    const-string v1, "The permission to access the external storage permission is not set. Please contact the developer."

    iput-object v1, v0, Lbvq;->a:Ljava/lang/String;

    .line 306
    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$3;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 302
    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    new-instance v0, Lbvq;

    invoke-direct {v0}, Lbvq;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    .line 319
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    const-string v1, "The installation from unknown sources is not enabled. Please check the device settings."

    iput-object v1, v0, Lbvq;->a:Ljava/lang/String;

    .line 321
    new-instance v0, Lnet/hockeyapp/android/UpdateActivity$4;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$4;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 332
    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->a()V

    .line 333
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "App Update"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Lnet/hockeyapp/android/views/UpdateView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V

    .line 93
    iput-object p0, p0, Lnet/hockeyapp/android/UpdateActivity;->e:Landroid/content/Context;

    .line 94
    new-instance v0, Lbwm;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lbwm;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvl;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lbwm;

    .line 95
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1003

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lbwm;

    invoke-virtual {v2}, Lbwm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lbwm;

    invoke-virtual {v1}, Lbwm;->b()Ljava/lang/String;

    move-result-object v3

    const-string v1, "Unknown size"

    iget-object v4, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lbwm;

    invoke-virtual {v4}, Lbwm;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v4, v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1005

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    const-string v1, "https://sdk.hockeyapp.net/"

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lbwm;

    invoke-virtual {v2}, Lbwm;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvy;

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    .line 98
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    invoke-virtual {v0, p0}, Lbvy;->a(Landroid/content/Context;)V

    .line 101
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v4, Lbvz;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lnet/hockeyapp/android/UpdateActivity$1;

    invoke-direct {v6, p0, v0, v2, v3}, Lnet/hockeyapp/android/UpdateActivity$1;-><init>(Lnet/hockeyapp/android/UpdateActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p0, v5, v6}, Lbvz;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V

    invoke-static {v4}, Lbwd;->a(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_0

    .line 353
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/UpdateActivity$5;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/UpdateActivity$5;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 360
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .line 361
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lbvq;

    iget-object v0, v0, Lbvq;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    const-string v0, "An unknown error has occured."

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    invoke-virtual {v0}, Lbvy;->a()V

    .line 165
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lbvy;

    return-object v0
.end method

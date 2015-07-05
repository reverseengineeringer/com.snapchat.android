.class public Lbvk;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbvl;


# instance fields
.field private a:Lbvy;

.field private b:Lorg/json/JSONArray;

.field private c:Ljava/lang/String;

.field private d:Lbwm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 240
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 241
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lbvy;

    iget-object v1, p0, Lbvk;->c:Ljava/lang/String;

    new-instance v2, Lbvk$2;

    invoke-direct {v2, p0, p1}, Lbvk$2;-><init>(Lbvk;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lbvy;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V

    iput-object v0, p0, Lbvk;->a:Lbvy;

    .line 208
    iget-object v0, p0, Lbvk;->a:Lbvy;

    invoke-static {v0}, Lbwd;->a(Landroid/os/AsyncTask;)V

    .line 209
    return-void
.end method

.method static synthetic a(Lbvk;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lbvk;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 4

    .prologue
    .line 217
    const/4 v0, -0x1

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 225
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lbvk;->a(Landroid/app/Activity;)V

    .line 179
    invoke-virtual {p0}, Lbvk;->dismiss()V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lbvk;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvk;->c:Ljava/lang/String;

    .line 113
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lbvk;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "versionInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbvk;->b:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v0, 0x1

    const v1, 0x1030073

    invoke-virtual {p0, v0, v1}, Lbvk;->setStyle(II)V

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbvk;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 131
    new-instance v6, Lnet/hockeyapp/android/views/UpdateView;

    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, v11, v10}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 133
    new-instance v0, Lbwm;

    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbvk;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lbwm;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvl;)V

    iput-object v0, p0, Lbvk;->d:Lbwm;

    .line 135
    const/16 v0, 0x1002

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    invoke-direct {p0}, Lbvk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/16 v0, 0x1003

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbvk;->d:Lbwm;

    invoke-virtual {v2}, Lbwm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v1, p0, Lbvk;->d:Lbwm;

    invoke-virtual {v1}, Lbwm;->b()Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string v1, "Unknown size"

    .line 143
    iget-object v4, p0, Lbvk;->d:Lbwm;

    invoke-virtual {v4}, Lbwm;->c()J

    move-result-wide v4

    .line 144
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%.2f"

    new-array v8, v10, [Ljava/lang/Object;

    long-to-float v4, v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
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

    .line 162
    const/16 v0, 0x1004

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/16 v0, 0x1005

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 166
    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 167
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 168
    const-string v1, "https://sdk.hockeyapp.net/"

    iget-object v2, p0, Lbvk;->d:Lbwm;

    invoke-virtual {v2}, Lbwm;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v6

    .line 148
    :cond_0
    new-instance v4, Lbvz;

    invoke-virtual {p0}, Lbvk;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lbvk;->c:Ljava/lang/String;

    new-instance v8, Lbvk$1;

    invoke-direct {v8, p0, v0, v2, v3}, Lbvk$1;-><init>(Lbvk;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v7, v8}, Lbvz;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V

    .line 158
    invoke-static {v4}, Lbwd;->a(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

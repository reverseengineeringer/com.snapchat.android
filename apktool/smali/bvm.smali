.class public final Lbvm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbvw;

.field private static b:Lbvn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lbvm;->a:Lbvw;

    .line 62
    sput-object v0, Lbvm;->b:Lbvn;

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v0, Lbvm;->a:Lbvw;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lbvm;->a:Lbvw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbvw;->cancel(Z)Z

    .line 158
    sget-object v0, Lbvm;->a:Lbvw;

    invoke-virtual {v0}, Lbvw;->a()V

    .line 159
    sput-object v2, Lbvm;->a:Lbvw;

    .line 162
    :cond_0
    sput-object v2, Lbvm;->b:Lbvn;

    .line 163
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string v2, "https://sdk.hockeyapp.net/"

    invoke-static {p1}, Lbwk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    sput-object v0, Lbvm;->b:Lbvn;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lbwk;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v5, "hockey_update_dialog"

    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    invoke-static {v4}, Lbvm;->a(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbvm;->a:Lbvw;

    if-eqz v0, :cond_1

    sget-object v0, Lbvm;->a:Lbvw;

    invoke-virtual {v0}, Lbvw;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_5

    :cond_1
    new-instance v0, Lbvx;

    invoke-direct {v0, v4, v2, v3}, Lbvx;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbvm;->a:Lbvw;

    invoke-static {v0}, Lbwd;->a(Landroid/os/AsyncTask;)V

    .line 72
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 71
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v1, Lbvm;->a:Lbvw;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lbvw;->c:Landroid/content/Context;

    invoke-static {v0}, Lbuz;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 203
    .line 205
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 206
    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 215
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b()Lbvn;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lbvm;->b:Lbvn;

    return-object v0
.end method

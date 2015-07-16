.class public final Lbwy;
.super Lbwx;
.source "SourceFile"


# instance fields
.field protected f:Z

.field private g:Landroid/app/Activity;

.field private h:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lbwx;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    .line 66
    iput-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbwy;->f:Z

    .line 72
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbwy;->f:Z

    .line 77
    return-void
.end method

.method static synthetic a(Lbwy;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lbwy;Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "hockey_update_dialog"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-class v0, Lbwl;

    iget-object v2, p0, Lbwy;->e:Lbwo;

    if-eqz v2, :cond_1

    const-class v0, Lbwl;

    :cond_1
    :try_start_0
    const-string v2, "newInstance"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONArray;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "apk"

    invoke-virtual {p0, v5}, Lbwy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    const-string v2, "hockey_update_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbwy;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method static synthetic a(Lbwy;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lbwy;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lbwy;->e:Lbwo;

    if-eqz v1, :cond_0

    .line 182
    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    .line 188
    :cond_1
    iget-object v1, p0, Lbwy;->g:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object v2, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v0, "json"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "url"

    const-string v2, "apk"

    invoke-virtual {p0, v2}, Lbwy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    :cond_2
    invoke-virtual {p0}, Lbwy;->b()V

    .line 201
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0}, Lbwx;->a()V

    .line 83
    iput-object v1, p0, Lbwy;->g:Landroid/app/Activity;

    .line 85
    iget-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    iput-object v1, p0, Lbwy;->h:Landroid/app/AlertDialog;

    .line 89
    :cond_0
    return-void
.end method

.method protected final a(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Lbwx;->a(Lorg/json/JSONArray;)V

    .line 94
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lbwy;->f:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbxm;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lbwy;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbwy;->e:Lbwo;

    const/16 v2, 0x201

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lbwy;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbwy;->e:Lbwo;

    const/16 v2, 0x202

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lbwy;->e:Lbwo;

    const/16 v2, 0x203

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbwy$1;

    invoke-direct {v2, p0}, Lbwy$1;-><init>(Lbwy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lbwy;->e:Lbwo;

    const/16 v2, 0x204

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbwy$2;

    invoke-direct {v2, p0, p1}, Lbwy$2;-><init>(Lbwy;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    iget-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    iget-object v1, p0, Lbwy;->e:Lbwo;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbwy;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0}, Lbwx;->b()V

    .line 206
    iput-object v0, p0, Lbwy;->g:Landroid/app/Activity;

    .line 207
    iput-object v0, p0, Lbwy;->h:Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lbwy;->a(Lorg/json/JSONArray;)V

    return-void
.end method

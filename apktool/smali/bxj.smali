.class public final Lbxj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxj$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lbxj;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 170
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lbxj;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v1, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    .line 97
    iget-object v1, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lbxj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lbxj;->d:Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lbxj;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lbxj;->d:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    :cond_0
    return-void
.end method

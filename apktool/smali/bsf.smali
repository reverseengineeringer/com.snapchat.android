.class public final Lbsf;
.super Lbsk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsf$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lbqu;

.field private d:Lbtc;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONObject;

.field private h:Z


# direct methods
.method public constructor <init>(Lbrk;Lbrk;Ljava/lang/String;Landroid/content/Context;Lbqu;Lbtc;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lbsk;-><init>(Lbrk;Lbrk;)V

    .line 67
    iput-object p3, p0, Lbsf;->a:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lbsf;->b:Landroid/content/Context;

    .line 73
    iput-object p5, p0, Lbsf;->c:Lbqu;

    .line 74
    iput-object p6, p0, Lbsf;->d:Lbtc;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsf;->h:Z

    .line 77
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    invoke-super {p0, p1, p2, p3}, Lbsk;->a(ZILorg/json/JSONObject;)V

    .line 130
    if-eqz p3, :cond_4

    .line 131
    const-string v0, "report_internal_exceptions"

    invoke-virtual {p3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    sget v0, Lbtd$a;->b:I

    sput v0, Lbtd;->a:I

    .line 133
    invoke-static {}, Lbtp;->d()V

    .line 138
    :goto_0
    const-string v0, "me"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbsf;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lbsf;->d:Lbtc;

    invoke-virtual {v0}, Lbtc;->a()Lbsz;

    move-result-object v0

    iget-object v1, p0, Lbsf;->e:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lbsz;->c()V

    .line 139
    :cond_0
    :goto_1
    const-string v0, "app_settings"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbsf;->g:Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lbsf;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsf;->g:Lorg/json/JSONObject;

    const-string v1, "need_pkg"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_2

    :try_start_0
    new-instance v0, Lbsg;

    iget-object v1, p0, Lbsf;->c:Lbqu;

    invoke-direct {v0, v1}, Lbsg;-><init>(Lbqu;)V

    const-string v1, "device_name"

    iget-object v2, p0, Lbsf;->c:Lbqu;

    invoke-interface {v2}, Lbqu;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsg;->a(Ljava/lang/String;Ljava/lang/String;)Lbsg;

    move-result-object v0

    const-string v1, "pkg"

    iget-object v2, p0, Lbsf;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsg;->a(Ljava/lang/String;Ljava/lang/String;)Lbsg;

    move-result-object v0

    new-instance v1, Lbsm;

    new-instance v2, Lbsl;

    iget-object v3, p0, Lbsf;->a:Ljava/lang/String;

    const-string v4, "/android_v2/update_package_name"

    invoke-direct {v2, v3, v4}, Lbsl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbsl;->a()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsm;-><init>(Ljava/net/URL;)V

    new-instance v2, Lbsu;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lbsu;-><init>(Lbsg;Lbsm;Lbsi;)V

    invoke-virtual {v2}, Lbsu;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v6, p0, Lbsf;->h:Z

    .line 141
    :cond_2
    const-string v0, "apm"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbsf;->f:Lorg/json/JSONObject;

    iget-object v0, p0, Lbsf;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    new-instance v0, Lbto;

    iget-object v1, p0, Lbsf;->f:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lbto;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lbsf;->b:Landroid/content/Context;

    iget-boolean v2, v0, Lbto;->c:Z

    if-eqz v2, :cond_7

    invoke-static {v1}, Lbto;->b(Landroid/content/Context;)V

    :cond_3
    :goto_3
    const-string v2, "com.crittercism.optmz.config"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v2, v0, Lbto;->b:Z

    if-eqz v2, :cond_8

    const-string v2, "enabled"

    iget-boolean v3, v0, Lbto;->a:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "kill"

    iget-boolean v3, v0, Lbto;->c:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "persist"

    iget-boolean v3, v0, Lbto;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "interval"

    iget v3, v0, Lbto;->d:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lbqy;->t()Lbqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbqy;->a(Lbto;)V

    .line 143
    :cond_4
    return-void

    .line 135
    :cond_5
    sget v0, Lbtd$a;->c:I

    sput v0, Lbtd;->a:I

    goto/16 :goto_0

    .line 138
    :cond_6
    iget-object v1, p0, Lbsf;->e:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbsf;->e:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rate_my_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Lbsz;)V

    iget-object v0, p0, Lbsf;->e:Lorg/json/JSONObject;

    const-string v2, "rate_after_load_num"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lbsz;->d:I

    const-string v2, "remind_after_load_num"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lbsz;->e:I

    const-string v2, "message"

    const-string v3, "Would you mind taking a second to rate my app?  I would really appreciate it!"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbsz;->f:Ljava/lang/String;

    const-string v2, "title"

    const-string v3, "Rate My App"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbsz;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lbsz;->a()V

    iget-object v0, p0, Lbsf;->d:Lbtc;

    invoke-virtual {v0, v1}, Lbtc;->a(Lbsz;)V

    goto/16 :goto_1

    .line 139
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException in handleResponse(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    invoke-static {}, Lbtd;->c()V

    goto/16 :goto_2

    .line 141
    :cond_7
    invoke-static {v1}, Lbto;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lbtd;->e()V

    goto/16 :goto_3

    :cond_8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4
.end method

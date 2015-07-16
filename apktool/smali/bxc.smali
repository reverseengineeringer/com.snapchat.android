.class public final Lbxc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lbwv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 72
    iput-object p1, p0, Lbxc;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lbxc;->b:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lbxc;->c:Landroid/os/Handler;

    .line 75
    iput-object p4, p0, Lbxc;->d:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lbxc;->e:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lbxc;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbxc;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbxc;->b:Ljava/lang/String;

    invoke-static {v0}, Lbxh;->a(Ljava/lang/String;)Lbwv;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lbwv;->b:Lbws;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lbwv;->b:Lbws;

    iget-object v0, v0, Lbws;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwu;

    iget v0, v0, Lbwu;->g:I

    iget-object v4, p0, Lbxc;->a:Landroid/content/Context;

    const-string v5, "net.hockeyapp.android.feedback"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lbxc;->d:Ljava/lang/String;

    const-string v6, "send"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "idLastMessageSend"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "idLastMessageProcessed"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v5, p0, Lbxc;->d:Ljava/lang/String;

    const-string v6, "fetch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "idLastMessageSend"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "idLastMessageProcessed"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "idLastMessageProcessed"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lbwe;->a()Lbwf;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lbwf;->a()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_0

    iget-object v4, p0, Lbxc;->a:Landroid/content/Context;

    iget-object v0, p0, Lbxc;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "ic_menu_refresh"

    const-string v7, "drawable"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/app/Notification;

    const-string v7, "New Answer to Your Feedback."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {}, Lbwe;->a()Lbwf;

    move-result-object v5

    if-eqz v5, :cond_2

    const-class v1, Lnet/hockeyapp/android/FeedbackActivity;

    :cond_2
    if-nez v1, :cond_3

    const-class v1, Lnet/hockeyapp/android/FeedbackActivity;

    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x30000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    iget-object v7, p0, Lbxc;->e:Ljava/lang/String;

    invoke-virtual {v5, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v4, v3, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v3, "HockeyApp Feedback"

    const-string v5, "A new answer to your feedback is available."

    invoke-virtual {v6, v4, v3, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 59
    check-cast p1, Lbwv;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbxc;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parse_feedback_response"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lbxc;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

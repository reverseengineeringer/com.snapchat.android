.class public Lcom/snapchat/android/notification/GcmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Laph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/notification/GcmIntentService;->a:Laph;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lcom/snapchat/android/notification/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/notification/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onHandleIntent messageType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", extras="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Laxy;->a(Ljava/io/File;Ljava/io/File;)V

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, v0}, Lamw;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lakr;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lqe;

    invoke-direct {v1, v0}, Lqe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lqe;->executeSynchronously()Lus;

    .line 43
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/snapchat/android/notification/GcmMessageReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 48
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    sget-object v0, Lcom/snapchat/android/notification/GcmIntentService;->a:Laph;

    invoke-virtual {v0, p0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "op_code"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "gcm_intent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p0, v1}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    goto :goto_1
.end method

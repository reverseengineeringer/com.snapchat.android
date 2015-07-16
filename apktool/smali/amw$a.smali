.class final Lamw$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lamw;


# direct methods
.method private constructor <init>(Lamw;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lamw$a;->a:Lamw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamw;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lamw$a;-><init>(Lamw;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lamw$a;->a:Lamw;

    invoke-static {v0}, Lamw;->a(Lamw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lamw$a;->a:Lamw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "191410808405"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lamw;->a(Lamw;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device registered, registration id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lamw$a;->a:Lamw;

    invoke-static {v1}, Lamw;->b(Lamw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v0, p0, Lamw$a;->a:Lamw;

    invoke-static {v0}, Lamw;->a(Lamw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lamw$a;->a:Lamw;

    invoke-static {v1}, Lamw;->b(Lamw;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lamw;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lamw$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lamw$a;->a:Lamw;

    invoke-static {v0}, Lamw;->b(Lamw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lakr;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqe;

    iget-object v1, p0, Lamw$a;->a:Lamw;

    invoke-static {v1}, Lamw;->b(Lamw;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lqe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lqe;->execute()V

    :cond_0
    return-void
.end method

.class final Lapb$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapb;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lapb;

.field private final c:Lalv;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapb;Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lapb$a;->b:Lapb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    invoke-static {}, Lalv;->a()Lalv;

    move-result-object v0

    iput-object v0, p0, Lapb$a;->c:Lalv;

    .line 117
    iput-object p2, p0, Lapb$a;->a:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lapb$a;->d:Ljavax/inject/Provider;

    .line 119
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lapb$a;->b:Lapb;

    invoke-static {v2}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    instance-of v2, v2, Lakh;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lapb$a;->c:Lalv;

    iget-object v0, p0, Lapb$a;->b:Lapb;

    invoke-static {v0}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    check-cast v0, Lakh;

    invoke-virtual {v2, v0}, Lalv;->a(Lakh;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lapb$a;->b:Lapb;

    iget-object v2, p0, Lapb$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lapb$a;->b:Lapb;

    invoke-static {v3}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v5, p0, Lapb$a;->b:Lapb;

    invoke-static {v5}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lapb$a;->b:Lapb;

    invoke-static {v6}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Lapb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v2, p0, Lapb$a;->b:Lapb;

    invoke-static {v2}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->N()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lapb$a;->b:Lapb;

    invoke-static {v2}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->O()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lapb$a;->c:Lalv;

    iget-object v3, p0, Lapb$a;->b:Lapb;

    invoke-static {v3}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    sget-object v4, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 131
    :cond_1
    iget-object v0, p0, Lapb$a;->b:Lapb;

    iget-object v2, p0, Lapb$a;->a:Landroid/content/Context;

    iget-object v3, p0, Lapb$a;->b:Lapb;

    invoke-static {v3}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v5, p0, Lapb$a;->b:Lapb;

    invoke-static {v5}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lapb$a;->b:Lapb;

    invoke-static {v6}, Lapb;->a(Lapb;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, Lapb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lawp;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lalv;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    :try_end_0
    .catch Laws; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v2, "ImageResource"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load chat media image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_4
    :try_start_1
    iget-object v2, v2, Lalv;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    sget-object v6, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->CHAT_MEDIA:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    invoke-virtual {v2, v6}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    invoke-static {v3, v5}, Lalv;->a(Lcom/snapchat/android/model/chat/ChatMedia;Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_5

    move v2, v1

    :goto_2
    invoke-static {v6, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V

    if-nez v5, :cond_6

    move v0, v1

    goto :goto_1

    :cond_5
    array-length v2, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v5}, Lawp;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Laws; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lapb$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 109
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lapb$a;->b:Lapb;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    iget-object v0, p0, Lapb$a;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT_MEDIA_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lapb$a;->b:Lapb;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_0
.end method

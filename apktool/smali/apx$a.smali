.class final Lapx$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapx;
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

.field final synthetic b:Lapx;

.field private final c:Lams;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lapx;Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lapx$a;->b:Lapx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    invoke-static {}, Lams;->a()Lams;

    move-result-object v0

    iput-object v0, p0, Lapx$a;->c:Lams;

    .line 117
    iput-object p2, p0, Lapx$a;->a:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lapx$a;->d:Ljavax/inject/Provider;

    .line 119
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lapx$a;->b:Lapx;

    invoke-static {v2}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    instance-of v2, v2, Lalc;

    if-eqz v2, :cond_0

    .line 125
    iget-object v1, p0, Lapx$a;->c:Lams;

    iget-object v0, p0, Lapx$a;->b:Lapx;

    invoke-static {v0}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    check-cast v0, Lalc;

    invoke-virtual {v1, v0}, Lams;->a(Lalc;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    iget-object v0, p0, Lapx$a;->b:Lapx;

    iget-object v1, p0, Lapx$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lapx$a;->b:Lapx;

    invoke-static {v2}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v4, p0, Lapx$a;->b:Lapx;

    invoke-static {v4}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lapx$a;->b:Lapx;

    invoke-static {v5}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lapx;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v2, p0, Lapx$a;->b:Lapx;

    invoke-static {v2}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->O()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lapx$a;->b:Lapx;

    invoke-static {v2}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->P()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lapx$a;->c:Lams;

    iget-object v3, p0, Lapx$a;->b:Lapx;

    invoke-static {v3}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    sget-object v4, Laxo;->CHAT_MEDIA_IMAGE_CACHE:Laxn;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 131
    :cond_2
    iget-object v0, p0, Lapx$a;->b:Lapx;

    iget-object v1, p0, Lapx$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lapx$a;->b:Lapx;

    invoke-static {v2}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v4, p0, Lapx$a;->b:Lapx;

    invoke-static {v4}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lapx$a;->b:Lapx;

    invoke-static {v5}, Lapx;->a(Lapx;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lapx;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Laxn;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lams;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, v2, Lams;->a:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;

    sget-object v6, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->CHAT_MEDIA:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    invoke-virtual {v2, v6}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    invoke-static {v3, v5}, Lams;->a(Lcom/snapchat/android/model/chat/ChatMedia;Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_5

    move v2, v0

    :goto_2
    invoke-static {v6, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;I)V

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Laxn;->a(Ljava/lang/String;[B)V

    move v0, v1

    goto :goto_1

    :cond_5
    array-length v2, v5
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load chat media image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lapx$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 109
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lapx$a;->b:Lapx;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lapx;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    iget-object v0, p0, Lapx$a;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CHAT_MEDIA_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lapx$a;->b:Lapx;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lapx;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_0
.end method

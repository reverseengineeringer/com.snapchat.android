.class public final Lpd;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd$a;,
        Lpd$b;
    }
.end annotation


# static fields
.field private static final CAPTCHA_ID_PREFIX:Ljava/lang/String; = "filename="

.field private static final CAPTCHA_ID_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final HEADER_NAME:Ljava/lang/String; = "Content-Disposition"

.field private static final TAG:Ljava/lang/String; = "GetCaptchaTask"

.field private static final TASK_NAME:Ljava/lang/String; = "GetCaptchaTask"


# instance fields
.field private mCaptchaId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpd$a;",
            ">;"
        }
    .end annotation
.end field

.field private mInterface:Lpd$b;


# direct methods
.method public constructor <init>(Lpd$b;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lpk;-><init>()V

    .line 60
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lpd;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lpd;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lpd;->mInterface:Lpd$b;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpd;->mImages:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "/bq/get_captcha"

    return-object v0
.end method

.method protected final a(Lalp;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Lpk;->a(Lalp;)V

    .line 156
    iget-object v0, p0, Lpd;->mCaptchaId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpd;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v0, p0, Lpd;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpd$a;

    .line 159
    iget-object v0, v0, Lpd$a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lpd;->mInterface:Lpd$b;

    iget-object v2, p0, Lpd;->mCaptchaId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lpd$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 165
    :goto_1
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lpd;->mInterface:Lpd$b;

    invoke-interface {v0}, Lpd$b;->a()V

    goto :goto_1
.end method

.method public final a(Lbmv;Lbne;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-virtual {p1}, Lbmv;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string v2, "Content-Disposition"

    invoke-static {v0, v2}, Lavg;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 96
    add-int/lit8 v1, v1, 0x9

    .line 97
    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpd;->mCaptchaId:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v0, p0, Lpd;->mCaptchaId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v0, "No captchaId could be found in the request header: \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lbmv;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    const-string v3, "%s: %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1, v0}, Lbmv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 111
    const-string v2, "message"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Failed to parse captcha header"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 150
    :goto_1
    return-void

    .line 118
    :cond_3
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p2}, Lbne;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 127
    :goto_3
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 128
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 134
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 137
    :goto_4
    iget-object v0, p0, Lpd;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 141
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "Failed to unzip captcha archive."

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    .line 144
    :cond_4
    iget-object v0, p0, Lpd;->mImages:Ljava/util/List;

    new-instance v1, Lpd$1;

    invoke-direct {v1, p0}, Lpd$1;-><init>(Lpd;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 130
    :cond_5
    :try_start_3
    iget-object v3, p0, Lpd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v3, v2}, Lavp;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lpd;->mImages:Ljava/util/List;

    new-instance v4, Lpd$a;

    invoke-direct {v4, p0, v0, v2}, Lpd$a;-><init>(Lpd;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 134
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "GetCaptchaTask"

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lpd;->a(Lalp;)V

    return-void
.end method

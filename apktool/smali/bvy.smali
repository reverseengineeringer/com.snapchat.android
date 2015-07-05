.class public Lbvy;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lbvp;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/app/ProgressDialog;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbvp;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p1, p0, Lbvy;->a:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lbvy;->c:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvy;->d:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvy;->e:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lbvy;->b:Lbvp;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lbvy;->g:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected static a(Ljava/net/URL;I)Ljava/net/URLConnection;
    .locals 4

    .prologue
    .line 152
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 153
    const-string v1, "User-Agent"

    const-string v2, "HockeySDK/Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 156
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_2

    .line 160
    :cond_1
    if-nez p1, :cond_3

    .line 173
    :cond_2
    return-object v0

    .line 165
    :cond_3
    new-instance v1, Ljava/net/URL;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    add-int/lit8 p1, p1, -0x1

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lbvy;->a:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    .line 84
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbvy;->a:Landroid/content/Context;

    .line 79
    return-void
.end method

.method protected a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lbvy;->b:Lbvp;

    invoke-virtual {v0, p0}, Lbvp;->a(Lbvy;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lbvy;->e:Ljava/lang/String;

    iget-object v3, p0, Lbvy;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lbvy;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    :goto_1
    return-void

    .line 214
    :cond_1
    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lbvy;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lbvy;->b:Lbvp;

    const/16 v2, 0x100

    invoke-static {v0, v2}, Lbvi;->a(Lbvh;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v0, p0, Lbvy;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lbvy;->b:Lbvp;

    const/16 v2, 0x101

    invoke-static {v0, v2}, Lbvi;->a(Lbvh;I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object v0, p0, Lbvy;->b:Lbvp;

    const/16 v2, 0x102

    invoke-static {v0, v2}, Lbvi;->a(Lbvh;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lbvy$1;

    invoke-direct {v2, p0}, Lbvy$1;-><init>(Lbvy;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v0, p0, Lbvy;->b:Lbvp;

    const/16 v2, 0x103

    invoke-static {v0, v2}, Lbvi;->a(Lbvh;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lbvy$2;

    invoke-direct {v2, p0}, Lbvy$2;-><init>(Lbvy;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    goto :goto_1

    .line 222
    :cond_2
    iget-object v0, p0, Lbvy;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lbvy;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    .line 181
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 182
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 186
    :cond_0
    iget-object v0, p0, Lbvy;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs b()Ljava/lang/Long;
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lbvy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lbvy;->a(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 93
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 94
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    const-string v5, "text"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "The requested download does not appear to be a file."

    iput-object v0, p0, Lbvy;->g:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lbvy;->e:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 104
    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not create the dir(s):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lbvy;->d:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 112
    const/16 v0, 0x400

    new-array v5, v0, [B

    move-wide v0, v2

    .line 115
    :goto_1
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 116
    int-to-long v10, v8

    add-long/2addr v0, v10

    .line 117
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    long-to-float v11, v0

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    int-to-float v12, v4

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lbvy;->publishProgress([Ljava/lang/Object;)V

    .line 118
    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 122
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 123
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbvy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lbvy;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbvy;->a(Ljava/lang/Long;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lbvy;->a([Ljava/lang/Integer;)V

    return-void
.end method

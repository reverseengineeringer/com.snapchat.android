.class public final Lbwb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lbwb;->a:Ljava/lang/String;

    .line 82
    sput-object v0, Lbwb;->b:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lbwb;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lbwc;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    const-string v0, "https://sdk.hockeyapp.net/"

    if-eqz p0, :cond_0

    sput-object v0, Lbwb;->b:Ljava/lang/String;

    invoke-static {p1}, Lbxl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbwb;->a:Ljava/lang/String;

    invoke-static {p0}, Lbwa;->a(Landroid/content/Context;)V

    sget-object v0, Lbwb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lbwa;->d:Ljava/lang/String;

    sput-object v0, Lbwb;->a:Ljava/lang/String;

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lbwb;->b(Ljava/lang/ref/WeakReference;)I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "always_send_crash_reports"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lbwc;->a()Z

    move-result v3

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v5}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p2, v6}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {p2, v7}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lbwb$1;

    invoke-direct {v4, p2, v2, v1}, Lbwb$1;-><init>(Lbwc;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lbwb$2;

    invoke-direct {v4, v2, p2, v1}, Lbwb$2;-><init>(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lbwj;->a(Lbwi;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lbwb$3;

    invoke-direct {v4, v2, p2, v1}, Lbwb$3;-><init>(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, p2, v0}, Lbwb;->b(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, p2, v0}, Lbwb;->b(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p2, v0}, Lbwb;->b(Lbwc;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lbwc;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1}, Lbwb;->b(Lbwc;Z)V

    return-void
.end method

.method public static a(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {}, Lbwb;->b()[Ljava/lang/String;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stacktrace(s)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 321
    if-eqz p0, :cond_0

    .line 323
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delete stacktrace "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    aget-object v0, v2, v1

    invoke-static {p0, v0}, Lbwb;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 337
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/ref/WeakReference;Lbwc;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lbwc;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-static {}, Lbwb;->b()[Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 257
    if-eqz v3, :cond_5

    array-length v2, v3

    if-lez v2, :cond_5

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Found "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " stacktrace(s)."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    move v1, v0

    .line 260
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_5

    .line 263
    :try_start_0
    aget-object v4, v3, v1

    .line 264
    invoke-static {p0, v4}, Lbwb;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    sget-object v0, Lbxg$a;->a:Lbxg;

    iget-object v0, v0, Lbxg;->a:Lorg/apache/http/client/HttpClient;

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 269
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lbwb;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "api/2/apps/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lbwb;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/crashes/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "raw"

    invoke-direct {v8, v9, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "userID"

    const-string v9, ".stacktrace"

    const-string v10, ".user"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lbwb;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "contact"

    const-string v9, ".stacktrace"

    const-string v10, ".contact"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lbwb;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "description"

    const-string v9, ".stacktrace"

    const-string v10, ".description"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lbwb;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v8, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdk"

    const-string v8, "HockeySDK"

    invoke-direct {v4, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdk_version"

    const-string v8, "3.5.0"

    invoke-direct {v4, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v7, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 281
    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 282
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 289
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    aget-object v0, v3, v1

    invoke-static {p0, v0}, Lbwb;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_1

    .line 260
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 298
    :cond_2
    if-eqz p1, :cond_1

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    aget-object v0, v3, v1

    invoke-static {p0, v0}, Lbwb;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_1

    goto :goto_1

    .line 298
    :cond_3
    if-eqz p1, :cond_1

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    aget-object v1, v3, v1

    invoke-static {p0, v1}, Lbwb;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    :cond_4
    throw v0

    .line 306
    :cond_5
    return-void
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;Lbwc;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lbwb;->b(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    return-void
.end method

.method private static a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 480
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 483
    const-string v1, ".stacktrace"

    const-string v2, ".user"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 486
    const-string v1, ".stacktrace"

    const-string v2, ".contact"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 489
    const-string v1, ".stacktrace"

    const-string v2, ".description"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 493
    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lbwb;->c:Z

    return v0
.end method

.method private static b(Ljava/lang/ref/WeakReference;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-static {}, Lbwb;->b()[Ljava/lang/String;

    move-result-object v3

    .line 211
    const/4 v1, 0x0

    .line 213
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 218
    if-eqz v0, :cond_2

    .line 219
    const-string v4, "HockeySDK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    const-string v4, "ConfirmedFilenames"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 229
    :goto_1
    if-eqz v1, :cond_0

    .line 230
    const/4 v0, 0x2

    .line 232
    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 233
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 240
    :cond_0
    const/4 v0, 0x1

    .line 244
    :cond_1
    :goto_3
    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method private static b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 499
    if-eqz p0, :cond_3

    .line 501
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 502
    if-eqz v0, :cond_3

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 521
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 528
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_3
    return-object v0

    .line 519
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 524
    :catch_1
    move-exception v0

    goto :goto_2

    .line 515
    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    if-eqz v2, :cond_0

    .line 521
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 524
    :catch_3
    move-exception v0

    goto :goto_2

    .line 519
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_2

    .line 521
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 524
    :cond_2
    :goto_6
    throw v0

    :cond_3
    move-object v0, v1

    .line 532
    goto :goto_3

    .line 524
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 519
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 515
    :catch_6
    move-exception v0

    goto :goto_4

    .line 519
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static b(Lbwc;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbwc;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Lbwa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lbwa;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 447
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current handler class = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_0
    instance-of v1, v0, Lbwd;

    if-eqz v1, :cond_2

    .line 454
    check-cast v0, Lbwd;

    iput-object p0, v0, Lbwd;->a:Lbwc;

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    new-instance v1, Lbwd;

    invoke-direct {v1, v0, p0, p1}, Lbwd;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lbwc;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/ref/WeakReference;Lbwc;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lbwc;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 425
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lbwb;->b()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "HockeySDK"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ConfirmedFilenames"

    const-string v5, "|"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    aget-object v1, v2, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lbxj;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_2
    :goto_1
    invoke-static {p1, p2}, Lbwb;->b(Lbwc;Z)V

    .line 428
    sget-boolean v0, Lbwb;->c:Z

    if-nez v0, :cond_3

    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lbwb;->c:Z

    .line 431
    new-instance v0, Lbwb$4;

    invoke-direct {v0, p0, p1}, Lbwb$4;-><init>(Ljava/lang/ref/WeakReference;Lbwc;)V

    .line 437
    invoke-virtual {v0}, Lbwb$4;->start()V

    .line 439
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    sget-object v0, Lbwa;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking for exceptions in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lbwa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbwa;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 582
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 595
    :goto_0
    return-object v0

    .line 587
    :cond_0
    new-instance v1, Lbwb$5;

    invoke-direct {v1}, Lbwb$5;-><init>()V

    .line 592
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

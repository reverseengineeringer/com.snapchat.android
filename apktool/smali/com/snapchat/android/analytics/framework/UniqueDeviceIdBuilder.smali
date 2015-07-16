.class public Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->b(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->c(Landroid/content/Context;)Ljava/util/UUID;

    .line 58
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 59
    :cond_1
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/UUID;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "9774d56d682e549c"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    :try_start_0
    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/UUID;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 80
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    :try_start_0
    const-string v2, "utf8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

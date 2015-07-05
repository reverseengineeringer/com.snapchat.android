.class public final Los;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PATTERN:Ljava/lang/String; = "0001110111101110001111010101111011010001001110011000110001000110"

.field private static final SECRET:Ljava/lang/String; = "iEk21fuwZApXlz93750dmW22pw389dPwOk"

.field private static final STATIC_TOKEN:Ljava/lang/String; = "m198sOkJEn37DjqZ32lpRu76xmw288xSQ9"

.field private static final TAG:Ljava/lang/String; = "RequestAuthorization"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lajx;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Los;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :goto_1
    const-string v1, "RequestAuthorization"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iEk21fuwZApXlz93750dmW22pw389dPwOk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iEk21fuwZApXlz93750dmW22pw389dPwOk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 50
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 53
    invoke-static {v0}, Los;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 58
    invoke-static {v0}, Los;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 60
    const-string v1, ""

    .line 61
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 62
    const-string v2, "0001110111101110001111010101111011010001001110011000110001000110"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v0, 0x30

    if-ne v2, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 65
    :cond_1
    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 23
    const-string v0, "%064x"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    :try_start_0
    const-string v0, "m198sOkJEn37DjqZ32lpRu76xmw288xSQ9"

    invoke-static {v0, p0}, Los;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :goto_1
    const-string v1, "RequestAuthorization"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    goto :goto_1
.end method

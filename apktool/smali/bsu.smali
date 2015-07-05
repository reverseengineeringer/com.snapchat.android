.class public Lbsu;
.super Lbss;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lbsg;

.field private c:Lbsm;

.field private d:Z

.field private e:Lbsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lbsu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbsg;Lbsm;Lbsi;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lbsu;-><init>(Lbsg;Lbsm;ZLbsi;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lbsg;Lbsm;ZLbsi;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lbss;-><init>()V

    .line 41
    iput-object p1, p0, Lbsu;->b:Lbsg;

    .line 44
    iput-object p2, p0, Lbsu;->c:Lbsm;

    .line 45
    iput-boolean p3, p0, Lbsu;->d:Z

    .line 47
    iput-object p4, p0, Lbsu;->e:Lbsi;

    .line 48
    return-void
.end method

.method private static a(Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 55
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    .line 65
    const/4 v6, -0x1

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 71
    :try_start_0
    iget-object v7, p0, Lbsu;->c:Lbsm;

    iget-object v0, v7, Lbsm;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, v7, Lbsm;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    iget v1, v7, Lbsm;->h:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, v7, Lbsm;->h:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-boolean v1, v7, Lbsm;->d:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-boolean v1, v7, Lbsm;->e:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-boolean v1, v7, Lbsm;->g:Z

    if-eqz v1, :cond_3

    iget v1, v7, Lbsm;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_3
    iget-object v1, v7, Lbsm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-eqz v0, :cond_1

    .line 87
    :try_start_1
    iget-object v1, p0, Lbsu;->b:Lbsg;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lbtd;->b()V

    new-instance v3, Lorg/json/JSONObject;

    iget-object v1, v1, Lbsg;->a:Ljava/util/Map;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    .line 90
    :try_start_2
    iget-boolean v1, p0, Lbsu;->d:Z

    if-eqz v1, :cond_4

    .line 91
    invoke-static {v0}, Lbsu;->a(Ljava/net/URLConnection;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    :goto_2
    move-object v4, v1

    move v1, v5

    .line 107
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    iget-object v0, p0, Lbsu;->e:Lbsi;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lbsu;->e:Lbsi;

    invoke-interface {v0, v1, v2, v4}, Lbsi;->a(ZILorg/json/JSONObject;)V

    goto :goto_1

    .line 93
    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v6

    .line 94
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "UnsupportedEncodingException in proceed(): "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    .line 95
    invoke-static {}, Lbtd;->c()V

    move v2, v1

    move v1, v5

    .line 105
    goto :goto_3

    .line 96
    :catch_2
    move-exception v1

    move v2, v6

    .line 97
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SocketTimeoutException in proceed(): "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    .line 98
    const/4 v1, 0x1

    .line 105
    goto :goto_3

    .line 99
    :catch_3
    move-exception v1

    move-object v2, v1

    move v1, v6

    .line 100
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "IOException in proceed(): "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    .line 101
    invoke-static {}, Lbtd;->c()V

    move v2, v1

    move v1, v5

    .line 105
    goto :goto_3

    .line 102
    :catch_4
    move-exception v1

    move-object v2, v1

    move v1, v6

    .line 103
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "JSONException in proceed(): "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbtd;->b()V

    move v2, v1

    move v1, v5

    .line 104
    invoke-static {}, Lbtd;->c()V

    goto :goto_3

    .line 102
    :catch_5
    move-exception v1

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto :goto_7

    .line 99
    :catch_6
    move-exception v1

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto :goto_6

    .line 96
    :catch_7
    move-exception v1

    goto :goto_5

    .line 93
    :catch_8
    move-exception v1

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto :goto_4

    :cond_4
    move-object v1, v4

    goto/16 :goto_2
.end method

.class public final Lbsu;
.super Ljava/lang/Object;

# interfaces
.implements Lbsx;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONArray;

.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lbsl;Lbsl;Lbsl;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 39
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsu;->e:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lbsu;->d:Ljava/io/File;

    .line 44
    new-instance v0, Lbsm;

    invoke-direct {v0}, Lbsm;-><init>()V

    new-instance v1, Lbsp$c;

    invoke-direct {v1}, Lbsp$c;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$b;

    invoke-direct {v1}, Lbsp$b;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$d;

    invoke-direct {v1}, Lbsp$d;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$f;

    invoke-direct {v1}, Lbsp$f;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$j;

    invoke-direct {v1}, Lbsp$j;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$h;

    invoke-direct {v1}, Lbsp$h;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$x;

    invoke-direct {v1}, Lbsp$x;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$y;

    invoke-direct {v1}, Lbsp$y;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$k;

    invoke-direct {v1}, Lbsp$k;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$p;

    invoke-direct {v1}, Lbsp$p;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$m;

    invoke-direct {v1}, Lbsp$m;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$q;

    invoke-direct {v1}, Lbsp$q;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$u;

    invoke-direct {v1}, Lbsp$u;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$v;

    invoke-direct {v1}, Lbsp$v;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    invoke-virtual {v0}, Lbsm;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbsu;->a:Lorg/json/JSONObject;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "crashed_session"

    new-instance v2, Lbsh;

    invoke-direct {v2, p2}, Lbsh;-><init>(Lbsl;)V

    iget-object v2, v2, Lbsh;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lbsl;->b()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "previous_session"

    new-instance v2, Lbsh;

    invoke-direct {v2, p3}, Lbsh;-><init>(Lbsl;)V

    iget-object v2, v2, Lbsh;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lbsu;->b:Lorg/json/JSONObject;

    .line 46
    new-instance v0, Lbsh;

    invoke-direct {v0, p4}, Lbsh;-><init>(Lbsl;)V

    iget-object v0, v0, Lbsh;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lbsu;->c:Lorg/json/JSONArray;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v0, "app_state"

    iget-object v1, p0, Lbsu;->a:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "breadcrumbs"

    iget-object v1, p0, Lbsu;->b:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "endpoints"

    iget-object v1, p0, Lbsu;->c:Lorg/json/JSONArray;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-array v0, v7, [B

    .line 86
    const/16 v1, 0x2000

    new-array v3, v1, [B

    .line 87
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v1, p0, Lbsu;->d:Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 91
    array-length v1, v0

    add-int/2addr v1, v5

    new-array v1, v1, [B

    .line 92
    array-length v6, v0

    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length v0, v0

    invoke-static {v3, v7, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v3, "dmp_name"

    iget-object v4, p0, Lbsu;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "dmp_file"

    invoke-static {v0}, Lbtf;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "ndk_dmp_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 105
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lbsu;->e:Ljava/lang/String;

    return-object v0
.end method

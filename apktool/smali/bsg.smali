.class public final Lbsg;
.super Ljava/lang/Object;

# interfaces
.implements Lbsx;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsg;->b:Ljava/lang/String;

    .line 17
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

    new-instance v1, Lbsp$f;

    invoke-direct {v1}, Lbsp$f;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$k;

    invoke-direct {v1}, Lbsp$k;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$n;

    invoke-direct {v1}, Lbsp$n;-><init>()V

    invoke-virtual {v0, v1}, Lbsm;->a(Lbso;)Lbsm;

    move-result-object v0

    new-instance v1, Lbsp$p;

    invoke-direct {v1}, Lbsp$p;-><init>()V

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

    iput-object v0, p0, Lbsg;->a:Lorg/json/JSONObject;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v1, "app_state"

    iget-object v2, p0, Lbsg;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 39
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbsg;->b:Ljava/lang/String;

    return-object v0
.end method

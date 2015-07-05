.class public final Lbrf;
.super Ljava/lang/Object;

# interfaces
.implements Lbrw;


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
    sget-object v0, Lbrv;->a:Lbrv;

    invoke-virtual {v0}, Lbrv;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrf;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Lbrl;

    invoke-direct {v0}, Lbrl;-><init>()V

    new-instance v1, Lbro$c;

    invoke-direct {v1}, Lbro$c;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$b;

    invoke-direct {v1}, Lbro$b;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$f;

    invoke-direct {v1}, Lbro$f;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$k;

    invoke-direct {v1}, Lbro$k;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$n;

    invoke-direct {v1}, Lbro$n;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$p;

    invoke-direct {v1}, Lbro$p;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$u;

    invoke-direct {v1}, Lbro$u;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    new-instance v1, Lbro$v;

    invoke-direct {v1}, Lbro$v;-><init>()V

    invoke-virtual {v0, v1}, Lbrl;->a(Lbrn;)Lbrl;

    move-result-object v0

    invoke-virtual {v0}, Lbrl;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lbrf;->a:Lorg/json/JSONObject;

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

    iget-object v2, p0, Lbrf;->a:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lbrf;->b:Ljava/lang/String;

    return-object v0
.end method

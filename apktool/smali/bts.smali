.class final Lbts;
.super Lbtt;


# instance fields
.field private a:Lbsl;

.field private b:Lbsl;

.field private c:Lbrv;

.field private d:Ljava/net/URL;

.field private e:Ljava/lang/String;

.field private f:Lbtj;


# direct methods
.method constructor <init>(Lbsl;Lbsl;Lbrv;Ljava/net/URL;Lbtj;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lbtt;-><init>()V

    .line 25
    iget-object v0, p1, Lbsl;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lbts;->b:Lbsl;

    .line 33
    iput-object p2, p0, Lbts;->a:Lbsl;

    .line 34
    iput-object p3, p0, Lbts;->c:Lbrv;

    .line 35
    iput-object p4, p0, Lbts;->d:Ljava/net/URL;

    .line 36
    iget-object v0, p1, Lbsl;->a:Ljava/lang/String;

    iput-object v0, p0, Lbts;->e:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lbts;->f:Lbtj;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lbts;->a:Lbsl;

    iget-object v1, p0, Lbts;->b:Lbsl;

    invoke-virtual {v0, v1}, Lbsl;->a(Lbsl;)V

    .line 42
    new-instance v0, Lbth;

    iget-object v1, p0, Lbts;->c:Lbrv;

    invoke-direct {v0, v1}, Lbth;-><init>(Lbrv;)V

    iget-object v1, p0, Lbts;->e:Ljava/lang/String;

    iget-object v2, p0, Lbts;->b:Lbsl;

    iget-object v3, v0, Lbth;->a:Ljava/util/Map;

    new-instance v4, Lbsh;

    invoke-direct {v4, v2}, Lbsh;-><init>(Lbsl;)V

    iget-object v2, v4, Lbsh;->a:Lorg/json/JSONArray;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lbtn;

    iget-object v2, p0, Lbts;->d:Ljava/net/URL;

    invoke-direct {v1, v2}, Lbtn;-><init>(Ljava/net/URL;)V

    .line 45
    new-instance v2, Lbtv;

    const/4 v3, 0x1

    iget-object v4, p0, Lbts;->f:Lbtj;

    invoke-direct {v2, v0, v1, v3, v4}, Lbtv;-><init>(Lbth;Lbtn;ZLbtj;)V

    .line 46
    invoke-virtual {v2}, Lbtv;->run()V

    .line 47
    return-void
.end method

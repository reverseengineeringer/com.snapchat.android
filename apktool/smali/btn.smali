.class public final Lbtn;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/net/URL;

.field public b:Ljava/util/Map;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtn;->b:Ljava/util/Map;

    .line 35
    iput v4, p0, Lbtn;->c:I

    .line 36
    iput-boolean v5, p0, Lbtn;->d:Z

    .line 37
    iput-boolean v5, p0, Lbtn;->e:Z

    .line 38
    const-string v0, "POST"

    iput-object v0, p0, Lbtn;->f:Ljava/lang/String;

    .line 39
    iput-boolean v4, p0, Lbtn;->g:Z

    .line 40
    const/16 v0, 0x9c4

    iput v0, p0, Lbtn;->h:I

    .line 55
    iput-object p1, p0, Lbtn;->a:Ljava/net/URL;

    .line 58
    iget-object v0, p0, Lbtn;->b:Ljava/util/Map;

    const-string v1, "User-Agent"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "4.5.4"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lbtn;->b:Ljava/util/Map;

    const-string v1, "Content-Type"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "application/json"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lbtn;->b:Ljava/util/Map;

    const-string v1, "Accept"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "text/plain"

    aput-object v3, v2, v4

    const-string v3, "application/json"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

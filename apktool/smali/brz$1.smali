.class final Lbrz$1;
.super Lbtt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbrz;

.field final synthetic b:Lbrz;


# direct methods
.method constructor <init>(Lbrz;Lbrz;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lbrz$1;->b:Lbrz;

    iput-object p2, p0, Lbrz$1;->a:Lbrz;

    invoke-direct {p0}, Lbtt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1058
    iget-object v0, p0, Lbrz$1;->a:Lbrz;

    iget-object v0, v0, Lbrz;->g:Lbud;

    .line 1059
    invoke-virtual {v0}, Lbud;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1063
    :cond_0
    new-instance v0, Lbth;

    iget-object v1, p0, Lbrz$1;->a:Lbrz;

    invoke-direct {v0, v1}, Lbth;-><init>(Lbrv;)V

    .line 1064
    const-string v1, "metadata"

    iget-object v2, p0, Lbrz$1;->a:Lbrz;

    iget-object v2, v2, Lbrz;->z:Lbuc;

    invoke-virtual {v2}, Lbuc;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lbth;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Lbtm;

    iget-object v2, p0, Lbrz$1;->b:Lbrz;

    iget-object v2, v2, Lbrz;->w:Lbsc;

    iget-object v2, v2, Lbsc;->i:Ljava/lang/String;

    const-string v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lbtm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbtm;->a()Ljava/net/URL;

    move-result-object v1

    .line 1067
    new-instance v2, Lbtn;

    invoke-direct {v2, v1}, Lbtn;-><init>(Ljava/net/URL;)V

    .line 1069
    new-instance v1, Lbto;

    iget-object v3, p0, Lbrz$1;->a:Lbrz;

    iget-object v3, v3, Lbrz;->z:Lbuc;

    invoke-direct {v1, v3}, Lbto;-><init>(Lbuc;)V

    .line 1070
    new-instance v3, Lbtv;

    invoke-direct {v3, v0, v2, v1}, Lbtv;-><init>(Lbth;Lbtn;Lbtj;)V

    invoke-virtual {v3}, Lbtv;->run()V

    goto :goto_0
.end method

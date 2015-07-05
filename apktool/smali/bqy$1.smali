.class final Lbqy$1;
.super Lbss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqy;

.field final synthetic b:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Lbqy;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lbqy$1;->b:Lbqy;

    iput-object p2, p0, Lbqy$1;->a:Lbqy;

    invoke-direct {p0}, Lbss;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1058
    iget-object v0, p0, Lbqy$1;->a:Lbqy;

    iget-object v0, v0, Lbqy;->g:Lbtc;

    .line 1059
    invoke-virtual {v0}, Lbtc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1063
    :cond_0
    new-instance v0, Lbsg;

    iget-object v1, p0, Lbqy$1;->a:Lbqy;

    invoke-direct {v0, v1}, Lbsg;-><init>(Lbqu;)V

    .line 1064
    const-string v1, "metadata"

    iget-object v2, p0, Lbqy$1;->a:Lbqy;

    iget-object v2, v2, Lbqy;->z:Lbtb;

    invoke-virtual {v2}, Lbtb;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lbsg;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Lbsl;

    iget-object v2, p0, Lbqy$1;->b:Lbqy;

    iget-object v2, v2, Lbqy;->w:Lbrb;

    iget-object v2, v2, Lbrb;->i:Ljava/lang/String;

    const-string v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lbsl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbsl;->a()Ljava/net/URL;

    move-result-object v1

    .line 1067
    new-instance v2, Lbsm;

    invoke-direct {v2, v1}, Lbsm;-><init>(Ljava/net/URL;)V

    .line 1069
    new-instance v1, Lbsn;

    iget-object v3, p0, Lbqy$1;->a:Lbqy;

    iget-object v3, v3, Lbqy;->z:Lbtb;

    invoke-direct {v1, v3}, Lbsn;-><init>(Lbtb;)V

    .line 1070
    new-instance v3, Lbsu;

    invoke-direct {v3, v0, v2, v1}, Lbsu;-><init>(Lbsg;Lbsm;Lbsi;)V

    invoke-virtual {v3}, Lbsu;->run()V

    goto :goto_0
.end method

.class public final Lbua;
.super Ljava/lang/Object;

# interfaces
.implements Lbsn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbua$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lbua;->a:Z

    .line 67
    iput-boolean v0, p0, Lbua;->b:Z

    .line 68
    iput v0, p0, Lbua;->c:I

    .line 69
    iput v1, p0, Lbua;->d:I

    .line 70
    iput v1, p0, Lbua;->e:I

    .line 71
    const-string v0, "Would you mind taking a second to rate my app?  I would really appreciate it!"

    iput-object v0, p0, Lbua;->f:Ljava/lang/String;

    .line 72
    const-string v0, "Rate My App"

    iput-object v0, p0, Lbua;->g:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Lbua;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget-boolean v0, p1, Lbua;->a:Z

    iput-boolean v0, p0, Lbua;->a:Z

    .line 89
    iget-boolean v0, p1, Lbua;->b:Z

    iput-boolean v0, p0, Lbua;->b:Z

    .line 90
    iget v0, p1, Lbua;->c:I

    iput v0, p0, Lbua;->c:I

    .line 91
    iget v0, p1, Lbua;->d:I

    iput v0, p0, Lbua;->d:I

    .line 92
    iget v0, p1, Lbua;->e:I

    iput v0, p0, Lbua;->e:I

    .line 93
    iget-object v0, p1, Lbua;->f:Ljava/lang/String;

    iput-object v0, p0, Lbua;->f:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lbua;->g:Ljava/lang/String;

    iput-object v0, p0, Lbua;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "rateMyAppEnabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbua;->a:Z

    .line 78
    const-string v0, "hasRatedApp"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbua;->b:Z

    .line 79
    const-string v0, "numAppLoads"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbua;->c:I

    .line 80
    const-string v0, "rateAfterNumLoads"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbua;->d:I

    .line 81
    const-string v0, "remindAfterNumLoads"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbua;->e:I

    .line 82
    const-string v0, "rateAppMessage"

    const-string v1, "Would you mind taking a second to rate my app?  I would really appreciate it!"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbua;->f:Ljava/lang/String;

    .line 83
    const-string v0, "rateAppTitle"

    const-string v1, "Rate My App"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbua;->g:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v1, "rateAfterNumLoads"

    iget v2, p0, Lbua;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "remindAfterNumLoads"

    iget v3, p0, Lbua;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rateAppMessage"

    iget-object v3, p0, Lbua;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rateAppTitle"

    iget-object v3, p0, Lbua;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hasRatedApp"

    iget-boolean v3, p0, Lbua;->b:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "numAppLoads"

    iget v3, p0, Lbua;->c:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rateMyAppEnabled"

    iget-boolean v3, p0, Lbua;->a:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lbua;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lbrx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbua;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lbrx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lbua;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbua;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

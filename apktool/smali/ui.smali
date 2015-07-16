.class public abstract Lui;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui$a;,
        Lui$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_RESPONSE_SIZE:I = 0x400


# instance fields
.field public final mGsonWrapper:Laum;

.field protected mJsonCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lui$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final mProvider:Luj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Luj;

    invoke-direct {v0}, Luj;-><init>()V

    iput-object v0, p0, Lui;->mProvider:Luj;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui;->mJsonCallbacks:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lui;->mProvider:Luj;

    invoke-virtual {v0}, Luj;->b()Laum;

    move-result-object v0

    iput-object v0, p0, Lui;->mGsonWrapper:Laum;

    .line 59
    return-void
.end method

.method public static buildAuthPayload(Lbhy;)Lbhy;
    .locals 2
    .param p0    # Lbhy;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lbhy;->d(Ljava/lang/String;)Lbhy;

    move-result-object v1

    invoke-static {v0}, Lpj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbhy;->f(Ljava/lang/String;)Lbhy;

    move-result-object v0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhy;->h(Ljava/lang/String;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method public static buildStaticAuthPayload(Lbhy;)Lbhy;
    .locals 2
    .param p0    # Lbhy;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lbhy;->c(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lpj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbhy;->e(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lbhy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbhy;->h(Ljava/lang/String;)Lbhy;

    .line 138
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected callCallback(Lui$a;Lus;)V
    .locals 2
    .param p2    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lui$a",
            "<TT;>;",
            "Lus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    iget-object v1, p2, Lus;->mCaughtException:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p2}, Lus;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lui;->deserialize(Lui$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    :cond_0
    iget-object v1, p1, Lui$a;->mJsonCallback:Lui$b;

    invoke-interface {v1, v0, p2}, Lui$b;->onJsonResult(Ljava/lang/Object;Lus;)V

    .line 107
    return-void
.end method

.method protected deserialize(Lui$a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lui$a",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p1, Lui$a;->mClass:Ljava/lang/Class;

    .line 112
    iget-object v1, p0, Lui;->mGsonWrapper:Laum;

    invoke-virtual {v1, p2, v0}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public getHeaders(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 151
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "X-Snapchat-UUID"

    invoke-static {}, Lbgs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    const-string v1, "User-Agent"

    invoke-static {}, Lbgs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "Accept-Language"

    invoke-static {}, Lbgs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v0
.end method

.method public getJsonCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lui$a",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lui;->mJsonCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public abstract getRequestPayload()Ljava/lang/Object;
.end method

.method public getResponseBuffer()Lbgk;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lbgl;

    const/16 v1, 0x400

    new-instance v2, Lbgl$b;

    invoke-direct {v2}, Lbgl$b;-><init>()V

    invoke-direct {v0, v1, v2}, Lbgl;-><init>(ILbgl$a;)V

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lui;->mJsonCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui$a;

    .line 97
    invoke-virtual {p0, v0, p1}, Lui;->callCallback(Lui$a;Lus;)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public final registerCallback(Ljava/lang/Class;Lui$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lui$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lui;->mJsonCallbacks:Ljava/util/List;

    new-instance v1, Lui$a;

    invoke-direct {v1, p1, p2}, Lui$a;-><init>(Ljava/lang/Class;Lui$b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

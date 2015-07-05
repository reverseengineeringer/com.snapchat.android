.class public abstract Lts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lts$a;,
        Lts$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_RESPONSE_SIZE:I = 0x400


# instance fields
.field public final mGsonWrapper:Lato;

.field protected mJsonCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lts$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final mProvider:Ltt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ltt;

    invoke-direct {v0}, Ltt;-><init>()V

    iput-object v0, p0, Lts;->mProvider:Ltt;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lts;->mJsonCallbacks:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lts;->mProvider:Ltt;

    invoke-virtual {v0}, Ltt;->b()Lato;

    move-result-object v0

    iput-object v0, p0, Lts;->mGsonWrapper:Lato;

    .line 59
    return-void
.end method

.method public static a(Lbgy;)Lbgy;
    .locals 2
    .param p0    # Lbgy;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lbgy;->d(Ljava/lang/String;)Lbgy;

    move-result-object v1

    invoke-static {v0}, Los;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbgy;->f(Ljava/lang/String;)Lbgy;

    move-result-object v0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbgy;->h(Ljava/lang/String;)Lbgy;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lbgy;)Lbgy;
    .locals 2
    .param p0    # Lbgy;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lbgy;->c(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Los;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbgy;->e(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lbgy;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbgy;->h(Ljava/lang/String;)Lbgy;

    .line 138
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lts$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lts$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lts;->mJsonCallbacks:Ljava/util/List;

    new-instance v1, Lts$a;

    invoke-direct {v1, p1, p2}, Lts$a;-><init>(Ljava/lang/Class;Lts$b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public a(Luc;)V
    .locals 5
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lts;->mJsonCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lts$a;

    .line 97
    const/4 v1, 0x0

    iget-object v3, p1, Luc;->mCaughtException:Ljava/lang/Exception;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Luc;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lts$a;->mClass:Ljava/lang/Class;

    iget-object v4, p0, Lts;->mGsonWrapper:Lato;

    invoke-virtual {v4, v1, v3}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    iget-object v0, v0, Lts$a;->mJsonCallback:Lts$b;

    invoke-interface {v0, v1, p1}, Lts$b;->a(Ljava/lang/Object;Luc;)V

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public a_()Lbfk;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lbfl;

    const/16 v1, 0x400

    new-instance v2, Lbfl$b;

    invoke-direct {v2}, Lbfl$b;-><init>()V

    invoke-direct {v0, v1, v2}, Lbfl;-><init>(ILbfl$a;)V

    return-object v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 150
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "X-Snapchat-UUID"

    invoke-static {}, Lbfs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    const-string v1, "User-Agent"

    invoke-static {}, Lbfs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "Accept-Language"

    invoke-static {}, Lbfs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-object v0
.end method

.method public abstract n_()Ljava/lang/String;
.end method

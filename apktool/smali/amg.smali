.class public abstract Lamg;
.super Lts;
.source "SourceFile"

# interfaces
.implements Lamk;


# instance fields
.field final i:Landroid/content/Intent;

.field protected j:Lub;


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lts;-><init>()V

    .line 56
    iput-object p1, p0, Lamg;->i:Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lamg;->mProvider:Ltt;

    invoke-virtual {v0}, Ltt;->a()Lub;

    move-result-object v0

    iput-object v0, p0, Lamg;->j:Lub;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lamg;->i:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 67
    invoke-static {}, Lajx;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "HyperRequestOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do not send any network request for Snapkidz "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lamg;->n_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lamg;->j:Lub;

    invoke-virtual {p0}, Lamg;->n_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lamg;->c()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    invoke-virtual {p0}, Lamg;->g()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lamg;->a_()Lbfk;

    move-result-object v4

    invoke-virtual {p0}, Lamg;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lub;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbfk;Ljava/lang/Object;)Luc;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lamg;->a(Luc;)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.class public final Lpw;
.super Lpk;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateFeatureSettingsTask"

.field private static final TASK_NAME:Ljava/lang/String; = "UpdateFeatureSettingsTask"


# instance fields
.field private mSnapchatServiceManager:Laph;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lpw;-><init>(Laph;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Laph;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lpk;-><init>()V

    .line 25
    iput-object p1, p0, Lpw;->mSnapchatServiceManager:Laph;

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "/bq/update_feature_settings"

    return-object v0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lbit;

    invoke-direct {v1}, Lbit;-><init>()V

    invoke-static {}, Lakr;->aa()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbit;->a(Ljava/lang/Boolean;)Lbit;

    move-result-object v1

    invoke-static {}, Lakr;->ab()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbit;->b(Ljava/lang/Boolean;)Lbit;

    move-result-object v1

    .line 43
    const-string v2, "settings"

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lpw;->mSnapchatServiceManager:Laph;

    invoke-virtual {v0, v1, v1}, Laph;->a(ZZ)I

    .line 59
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "UpdateFeatureSettingsTask"

    return-object v0
.end method

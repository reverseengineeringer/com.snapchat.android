.class public final Lpf;
.super Lot;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateFeatureSettingsTask"

.field private static final TASK_NAME:Ljava/lang/String; = "UpdateFeatureSettingsTask"


# instance fields
.field private mSnapchatServiceManager:Laol;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-direct {p0, v0}, Lpf;-><init>(Laol;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Laol;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lot;-><init>()V

    .line 25
    iput-object p1, p0, Lpf;->mSnapchatServiceManager:Laol;

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

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lbht;

    invoke-direct {v1}, Lbht;-><init>()V

    invoke-static {}, Lajx;->ab()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbht;->a(Ljava/lang/Boolean;)Lbht;

    move-result-object v1

    invoke-static {}, Lajx;->aa()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbht;->c(Ljava/lang/Boolean;)Lbht;

    move-result-object v1

    invoke-static {}, Lajx;->ac()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbht;->b(Ljava/lang/Boolean;)Lbht;

    move-result-object v1

    .line 44
    const-string v2, "settings"

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method protected final b(Laku;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v0, "UpdateFeatureSettingsTask"

    const-string v1, "UpdateFeatureSettingsTask: SUCCESS"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lpf;->mSnapchatServiceManager:Laol;

    invoke-virtual {v0, v3, v3}, Laol;->a(ZZ)I

    .line 60
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "UpdateFeatureSettingsTask"

    return-object v0
.end method

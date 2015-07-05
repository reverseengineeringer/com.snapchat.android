.class public final Lme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private b:Lajt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lme;-><init>(Lajt;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lajt;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lme;->b:Lajt;

    .line 23
    iput-object p2, p0, Lme;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lme;->b:Lajt;

    const-string v2, "EarlyUploadSnaps"

    const-string v3, "early_upload_snaps"

    invoke-virtual {v1, v2, v3, v0}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

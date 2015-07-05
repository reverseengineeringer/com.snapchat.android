.class public final Lahn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final b:Lahm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    new-instance v1, Lahm;

    invoke-direct {v1}, Lahm;-><init>()V

    invoke-direct {p0, v0, v1}, Lahn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lahm;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lahm;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lahn;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 27
    iget-object v0, p0, Lahn;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 28
    iput-object p2, p0, Lahn;->b:Lahm;

    .line 29
    return-void
.end method

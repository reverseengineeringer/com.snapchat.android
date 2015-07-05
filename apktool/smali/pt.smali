.class public final Lpt;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpt$d;,
        Lpt$b;,
        Lpt$c;,
        Lpt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lpt$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetLocationDataTask"


# instance fields
.field final mCallback:Lpt$a;

.field final mExceptionReporter:Lazo;

.field final mLocation:Landroid/location/Location;

.field final mPreviousRequestChecksum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpt$a;Landroid/location/Location;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lpt$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/location/Location;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 64
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lpt;-><init>(Lpt$a;Landroid/location/Location;Ljava/lang/String;Lazo;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lpt$a;Landroid/location/Location;Ljava/lang/String;Lazo;)V
    .locals 1
    .param p1    # Lpt$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/location/Location;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Lth;-><init>()V

    .line 71
    iput-object p1, p0, Lpt;->mCallback:Lpt$a;

    .line 72
    iput-object p2, p0, Lpt;->mLocation:Landroid/location/Location;

    .line 73
    iput-object p3, p0, Lpt;->mPreviousRequestChecksum:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lpt;->mExceptionReporter:Lazo;

    .line 76
    const-class v0, Lpt$d;

    invoke-virtual {p0, v0, p0}, Lpt;->a(Ljava/lang/Class;Lts$b;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lpt$d;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lpt$1;

    invoke-direct {v0, p0, p1}, Lpt$1;-><init>(Lpt;Lpt$d;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lpt$c;

    invoke-direct {v0, p0}, Lpt$c;-><init>(Lpt;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/loq/loc_data"

    return-object v0
.end method

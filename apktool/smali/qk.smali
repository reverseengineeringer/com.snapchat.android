.class public final Lqk;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk$d;,
        Lqk$b;,
        Lqk$c;,
        Lqk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lqk$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetLocationDataTask"


# instance fields
.field final mCallback:Lqk$a;

.field final mExceptionReporter:Lban;

.field final mLocation:Landroid/location/Location;

.field final mPreviousRequestChecksum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lqk$a;Landroid/location/Location;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lqk$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/location/Location;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 64
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lqk;-><init>(Lqk$a;Landroid/location/Location;Ljava/lang/String;Lban;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lqk$a;Landroid/location/Location;Ljava/lang/String;Lban;)V
    .locals 1
    .param p1    # Lqk$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/location/Location;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lban;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ltx;-><init>()V

    .line 71
    iput-object p1, p0, Lqk;->mCallback:Lqk$a;

    .line 72
    iput-object p2, p0, Lqk;->mLocation:Landroid/location/Location;

    .line 73
    iput-object p3, p0, Lqk;->mPreviousRequestChecksum:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lqk;->mExceptionReporter:Lban;

    .line 76
    const-class v0, Lqk$d;

    invoke-virtual {p0, v0, p0}, Lqk;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/loq/loc_data"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lqk$c;

    invoke-direct {v0, p0}, Lqk$c;-><init>(Lqk;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lqk$d;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lqk$1;

    invoke-direct {v0, p0, p1}, Lqk$1;-><init>(Lqk;Lqk$d;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

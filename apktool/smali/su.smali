.class public final Lsu;
.super Lsq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu$b;,
        Lsu$a;
    }
.end annotation


# static fields
.field public static final SC_TOO_MANY_ATTEMPTS_STATUS_CODE:I = 0x1ad

.field private static final TAG:Ljava/lang/String; = "UpdateSquareSettingsTask"


# instance fields
.field mPasscode:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field mPasscodeEnabled:Z

.field private mUpdateSuccessListener:Lsu$b;
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsu$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Lsq;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsu;->mPasscodeEnabled:Z

    .line 29
    iput-object p1, p0, Lsu;->mPasscode:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lsu;->mUpdateSuccessListener:Lsu$b;

    .line 31
    return-void
.end method

.method public constructor <init>(Lsu$b;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lsq;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsu;->mPasscodeEnabled:Z

    .line 37
    iput-object p1, p0, Lsu;->mUpdateSuccessListener:Lsu$b;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 5
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 60
    const-string v0, "UpdateSquareSettingsTask"

    const-string v1, "CASH-LOG: UpdateSquareSettingsTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lsu;->mUpdateSuccessListener:Lsu$b;

    invoke-interface {v0}, Lsu$b;->a()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lsu;->mUpdateSuccessListener:Lsu$b;

    iget v1, p1, Luc;->mResponseCode:I

    invoke-interface {v0, v1}, Lsu$b;->a(I)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lsu$a;

    invoke-direct {v0, p0}, Lsu$a;-><init>(Lsu;)V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "cash/settings/passcode"

    return-object v0
.end method

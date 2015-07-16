.class public final Ltk;
.super Ltg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk$b;,
        Ltk$a;
    }
.end annotation


# static fields
.field public static final SC_TOO_MANY_ATTEMPTS_STATUS_CODE:I = 0x1ad

.field private static final TAG:Ljava/lang/String; = "UpdateSquareSettingsTask"


# instance fields
.field mPasscode:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation
.end field

.field mPasscodeEnabled:Z

.field private mUpdateSuccessListener:Ltk$b;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltk$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ltg;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltk;->mPasscodeEnabled:Z

    .line 29
    iput-object p1, p0, Ltk;->mPasscode:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Ltk;->mUpdateSuccessListener:Ltk$b;

    .line 31
    return-void
.end method

.method public constructor <init>(Ltk$b;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ltg;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltk;->mPasscodeEnabled:Z

    .line 37
    iput-object p1, p0, Ltk;->mUpdateSuccessListener:Ltk$b;

    .line 38
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "cash/settings/passcode"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ltk$a;

    invoke-direct {v0, p0}, Ltk$a;-><init>(Ltk;)V

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 3
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p1, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    iget v0, p1, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Ltk;->mUpdateSuccessListener:Ltk$b;

    invoke-interface {v0}, Ltk$b;->a()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Ltk;->mUpdateSuccessListener:Ltk$b;

    iget v1, p1, Lus;->mResponseCode:I

    invoke-interface {v0, v1}, Ltk$b;->a(I)V

    goto :goto_0
.end method

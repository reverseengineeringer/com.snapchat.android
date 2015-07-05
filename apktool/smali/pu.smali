.class public final Lpu;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpu$a;
    }
.end annotation


# instance fields
.field final mFriend:Ljava/lang/String;

.field final mHide:Z

.field private final mUserPrefs:Lajx;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lpu;-><init>(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lpu;-><init>(Ljava/lang/String;ZLajx;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLajx;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lth;-><init>()V

    .line 32
    iput-object p1, p0, Lpu;->mFriend:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lpu;->mHide:Z

    .line 34
    iput-object p3, p0, Lpu;->mUserPrefs:Lajx;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 1
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 65
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lajx;->aC()V

    .line 68
    :cond_0
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lpu$a;

    invoke-direct {v0, p0}, Lpu$a;-><init>(Lpu;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/loq/friend_hide"

    return-object v0
.end method
